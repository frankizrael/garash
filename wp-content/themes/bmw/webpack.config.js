const path = require("path");
const HtmlWebpackPlugin = require("html-webpack-plugin");
const webpack = require("webpack");
const compass = require("compass-importer");
const AssetsPlugin = require("assets-webpack-plugin");
const ProgressBarPlugin = require("progress-bar-webpack-plugin");
const ExtractTextPlugin = require("extract-text-webpack-plugin");
const WebpackBuildNotifierPlugin = require("webpack-build-notifier");
const BrowserSyncPlugin = require("browser-sync-webpack-plugin");

const isProd = process.env.NODE_ENV.trim() === "prod";
const isDev = process.env.NODE_ENV.trim() === "dev";
const basePath = "wp-content/themes/bmw";
const metadata = {
  env: isProd ? "production" : "development"
};

function addHash(template, hash) {
  return isProd ? template.replace(/\.[^.]+$/, `.[${hash}]$&`) : template;
}

const cssDev = ["style-loader", "css-loader"];
const cssProd = ExtractTextPlugin.extract({
  use: [
    { loader: "css-loader", query: { modules: false, sourceMap: true } },
    { loader: "postcss-loader", query: { sourceMap: true } }
  ],
  fallback: "style-loader",
  publicPath: "../"
});

const scssDev = [
  {
    loader: "style-loader"
  },
  {
    loader: "css-loader",
    options: {
      sourceMap: true
    }
  },
  {
    loader: "resolve-url-loader"
  },
  {
    loader: "sass-loader",
    options: {
      data: '@import "compass"; @import "./src/scss/includes.scss";',
      outputStyle: "expanded",
      sourceMap: true,
      importer: compass
    }
  }
];
const scssProd = ExtractTextPlugin.extract({
  use: [
    {
      loader: "css-loader",
      options: { sourceMap: true }
    },
    {
      loader: "postcss-loader",
      options: { sourceMap: true }
    },
    {
      loader: "resolve-url-loader"
    },
    {
      loader: "sass-loader",
      options: {
        data: '@import "compass"; @import "./src/scss/includes.scss";',
        outputStyle: "compressed",
        sourceMap: true,
        importer: compass
      }
    }
  ],
  fallback: "style-loader",
  publicPath: "../"
});

const scssConfing = isProd ? scssProd : scssDev;
const cssConfing = isProd ? cssProd : cssDev;

let mainEntry = ["./src/app.js"];

const config = {
  output: {
    path: path.resolve(__dirname, "./dist"),
    publicPath: "/",
    chunkFilename: addHash("js/[id].js", "hash"),
    filename: addHash("js/[name].js", "hash"),
    library: "[name]"
  },
  entry: {
    vendor: ["jquery"],
    app: mainEntry,
    page_home: "./src/pages/home/index.js",
    page_store: "./src/pages/store/index.js",
    page_my_account: "./src/pages/my-account/index.js",
    page_cart: "./src/pages/cart/index.js",
    page_checkout: "./src/pages/checkout/index.js",
    page_complaints_book: "./src/pages/services/complaints-book/index.js",
    page_faq: "./src/pages/services/faq/index.js",
    page_returns_privacy_policies: "./src/pages/services/privacy-policies/index.js",
    page_terms_conditions: "./src/pages/services/terms-conditions/index.js",
    page_returns_customer_support: "./src/pages/services/customer-support/index.js",
    page_thank_checkout: "./src/pages/thank-checkout/index.js",
    page_search: "./src/pages/search/index.js"
  },
  resolve: {
    modules: [
      path.resolve("./src/"),
      path.resolve("./src/helpers"),
      "node_modules"
    ]
  },
  devtool: isProd ? "none" : "source-map",
  plugins: [
    new ProgressBarPlugin({ clear: false }),
    new webpack.ProvidePlugin({
      $: "jquery",
      jQuery: "jquery",
      "window.jQuery": "jquery",
      "window.$": "jquery",
      ssm: "simplestatemanager",
      OWL: "owl.carousel2"
    }),
    new AssetsPlugin({
      metadata: {
        env: metadata.env
      },
      filename: "assets.json",
      path: __dirname + "/dist",
      prettyPrint: true,
      processOutput: function(assets) {
        let pahtD = "dist";
        let ff = {};
        for (let ss in assets) {
          let ins = {};
          for (let dd in assets[ss]) {
            ins[dd] = pahtD + assets[ss][dd];
          }

          ff[ss] = ins;
        }

        return JSON.stringify(ff);
      }
    }),
    new WebpackBuildNotifierPlugin(),
    new ExtractTextPlugin({
      filename: addHash("css/[name].css", "contenthash"),
      allChunks: true,
      disable: !isProd
    })
  ],
  module: {
    rules: [
      {
        test: /fancybox[\/\\]dist[\/\\]js[\/\\]jquery.fancybox.cjs.js/,
        use: "imports-loader?jQuery=jquery,$=jquery,this=>window"
      },
      {
        test: /\.scss$/,
        use: scssConfing
      },
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: "babel-loader?cacheDirectory=true"
      },
      {
        test: /\.css$/,
        use: cssConfing
      },
      {
        test: /\.svg$/,
        loader: !isProd
          ? `url-loader?name=${basePath}/[path][name].[ext]&limit=12`
          : addHash(
              "url-loader?limit=12800&mimetype=image/svg+xml&name=fonts/[name].[ext]",
              "hash:10"
            )
      },
      {
        test: /\.woff$/,
        loader: !isProd
          ? `url-loader?name=${basePath}/[path][name].[ext]&limit=12`
          : addHash(
              "url-loader?limit=12800&mimetype=application/font-woff&name=fonts/[name].[ext]",
              "hash:10"
            )
      },
      {
        test: /\.woff2$/,
        loader: !isProd
          ? `url-loader?name=${basePath}/[path][name].[ext]&limit=12`
          : addHash(
              "url-loader?limit=12800&mimetype=application/font-woff2&name=fonts/[name].[ext]",
              "hash:10"
            )
      },
      {
        test: /\.[ot]tf$/,
        loader: !isProd
          ? `url-loader?name=${basePath}/[path][name].[ext]&limit=12`
          : addHash(
              "url-loader?limit=12800&mimetype=application/octet-stream&name=fonts/[name].[ext]",
              "hash:10"
            )
      },
      {
        test: /\.eot$/,
        loader: !isProd
          ? `url-loader?name=${basePath}/[path][name].[ext]&limit=12`
          : addHash(
              "url-loader?limit=12800&mimetype=application/vnd.ms-fontobject&name=fonts/[name].[ext]",
              "hash:10"
            )
      },
      {
        test: /\.(gif|GIF|jpg|png|jpeg)$/,
        loader: !isProd
          ? `url-loader?name=${basePath}/[path][name].[ext]&limit=12`
          : addHash(
              "url-loader?name=images/[path][name].[ext]?[hash]&limit=12800",
              "hash:10"
            )
      },
      {
        test: require.resolve("owl.carousel2/dist/owl.carousel.js"),
        loader: "exports-loader?this.OWL"
      }
    ]
  }
};

if (isProd) {
  config.plugins.push();
}

if (isDev) {
  config.plugins.push(new webpack.NamedModulesPlugin());
  config.plugins.push(
    new BrowserSyncPlugin(
      {
        host: "localhost",
        port: 8085,
        proxy: "http://localhost:8085/",
        files: [
          `${__dirname}/src/*.scss`,
          `${__dirname}/src/*.js`,
          {
            match: [`${__dirname}/*.php`],
            fn: (event, file) => {
              const bs = require("browser-sync").get("bs-webpack-plugin");
              bs.reload();
              console.log(event, file);
            }
          }
        ]
      },
      { reload: true }
    )
  );
}

module.exports = config;
