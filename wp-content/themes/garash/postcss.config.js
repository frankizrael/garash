module.exports = {
    plugins: [
      require('precss')({
        /* ...options */
      }),
      require('autoprefixer')({
        grid: true,
        browsers: [
          'last 3 versions',
          'ie 11',
          'ie 10',
          'ie 9',
          'safari 5',
          'ios 6',
          'android 4'
        ]
      })
    ]
  };
  