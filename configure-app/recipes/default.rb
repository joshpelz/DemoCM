# Setup environment for app

execute 'download prototypel.js' do
  cwd 'srv/www/acrominedemo/current'
  group 'apache'
  command 'curl -sS https://ajax.googleapis.com/ajax/libs/prototype/1.7.3.0/prototype.js'

execute 'pull down composer' do
  cwd '/srv/www/acrominedemo/current'
  group 'apache'
  command 'curl -sS https://getcomposer.org/installer | php'
end

execute 'configure Guzzle for app' do
  cwd '/srv/www/acrominedemo/current'
  group 'apache'
  command 'php composer.phar require guzzlehttp/guzzle'
end
