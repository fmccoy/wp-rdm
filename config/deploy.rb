require 'mina/git'

# Autoload the tasks directory contents.
Dir.glob('config/tasks/*.rb').each { |r| import r }
import 'config/environments/wordpress.rb'

# Basic settings:
#   app_name    - The name of the app (used for project directory name, and settings in the vhost)
#   domain      - The hostname to SSH to.
#   deploy_to   - Path to deploy into.
#   repository  - Git repo to clone from. (needed by mina/git)
#   branch      - Branch name to deploy. (needed by mina/git)
set :app_name, 'some-name'
set :domain, 'my.server.com'
set :deploy_to, '/var/www'
set :repository, 'git@github.com:gituser/gitrepo'
set :branch, 'master'

# Optional settings:
set :user, 'username'    # Username in the server to SSH to.
set :identity_file, 'PATH/TO/PUBLIC/KEY'
#   set :port, '30000'     # SSH port number.

# This task is the environment that is loaded for most commands, such as
# `mina deploy` or `mina rake`.
task :environment do

end

