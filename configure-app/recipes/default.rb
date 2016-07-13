# Setup environment for app

execute 'pull down composer' do
  cwd '/srv/www/AcromineDemo/current'
  command 'curl -sS https://getcomposer.org/installer | php'
end

execute 'configure Guzzle for app' do
  cwd '/srv/www/AcromineDemo/current'
  command 'php composer.phar require guzzlehttp/guzzle'
end
