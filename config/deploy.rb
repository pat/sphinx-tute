load 'vendor/plugins/thinking-sphinx/lib/thinking_sphinx/deploy/capistrano'

default_run_options[:pty] = true

set :application, "sphinx-tute"
set :repository,  "git@github.com:freelancing-god/sphinx-tute.git"

# If you aren't deploying to /u/apps/#{application} on the target
# servers (which is the default), you can specify the actual location
# via the :deploy_to variable:
set :deploy_to, "/var/www/#{application}"

# If you aren't using Subversion to manage your source code, specify
# your SCM below:
# set :scm, :subversion
set :scm, :git

role :app, "10.211.55.5"
role :web, "10.211.55.5"
role :db,  "10.211.55.5", :primary => true

deploy.task :start, :roles => :web do
  run "touch #{current_path}/tmp/restart.txt"
end

deploy.task :restart, :roles => :web do
  run "touch #{current_path}/tmp/restart.txt"
end

deploy.task :spinner, :roles => :web do
  # nothing
end