<?php
$file = fopen( '/var/www/html/git-pull-requests/<yourAppName>', 'w+' );
fclose( $file );
chmod( '/var/www/html/git-pull-requests/<yourAppName>', 0777);