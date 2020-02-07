<?php
global $post;
?>
<div class="sidebar">
    <ul class="list">
        <li class="list__item">
            <a href="/servicio-al-cliente/terminos-y-condiciones/" class="<?php echo $post->ID === 62 ? 'active' : '' ?>">Términos y condiciones</a>
        </li>
        <li class="list__item">
            <a href="/servicio-al-cliente/privacidad-y-proteccion-de-datos-personales/" class="<?php echo $post->ID === 64 ? 'active' : '' ?>">Politicas de privacidad</a>
        </li>
        <li class="list__item">
            <a href="/servicio-al-cliente/libro-de-reclamaciones/" class="<?php echo $post->ID === 65 ? 'active' : '' ?>">Libro de reclamaciones</a>
        </li>
        <li class="list__item">
            <a href="/servicio-al-cliente/atencion-al-cliente/" class="<?php echo $post->ID === 138 ? 'active' : '' ?>">Atención al cliente</a>
        </li>
        <li class="list__item">
            <a href="/servicio-al-cliente/preguntas-frecuentes/" class="<?php echo $post->ID === 66 ? 'active' : '' ?>">Preguntas frecuentes</a>
        </li>
    </ul>
</div>