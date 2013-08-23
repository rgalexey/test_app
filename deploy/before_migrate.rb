Chef::Log.info("Running deploy/before_migrate.rb...")

  if node[:opsworks][:instance][:layers].to_s =~ /custom/
        Chef::Log.debug("CUSTOM_DEBUG: Instance belongs to delayed proc layer. Will run delayed proc handler")
        Chef::Log.debug("CUSTOM_DEBUG: cd #{release_path} && RAILS_ENV=production script/delayed_jobs_stop")
        Chef::Log.info(`cd #{release_path} && RAILS_ENV=production script/delayed_jobs_stop`)
  end


run "cd #{release_path} && RAILS_ENV=production bundle exec rake assets:precompile"

