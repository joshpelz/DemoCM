# Setup environment for app

execute 'pull down composer'
  cwd '/srv/www/AcromineDemo/current'
  command 'curl -sS https://getcomposer.org/installer | php'
end

execute 'configure Guzzle for app'
  cwd '/srv/www/AcromineDemo/current'
  command 'php composer.phar require guzzlehttp/guzzle'
end
