Chef::Log.info("Running deploy/before_migrate.rb...")
run "cd #{release_path} && RAILS_ENV=production bundle exec rake assets:precompile"

