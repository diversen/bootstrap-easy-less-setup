<?php


$str = shell_exec('markdown-it-embed-mathjax-bin README.md');
$html = file_get_contents('index.tpl');

echo str_replace('{DOCS}', $str, $html);

