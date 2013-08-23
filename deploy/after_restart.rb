Chef::Log.info("Running deploy/after_restart.rb...")



Chef::Log.info(node[:opsworks][:instance][:layers].to_s)

 if node[:opsworks][:instance][:layers].to_s =~ /app-layer/
        Chef::Log.debug("CUSTOM_DEBUG: Instance belongs to delayed proc layer. Will run delayed proc handler")
        Chef::Log.debug("CUSTOM_DEBUG: cd #{release_path} && RAILS_ENV=production script/delayed_jobs_start")
        Chef::Log.info(`cd #{release_path} && RAILS_ENV=production script/delayed_jobs_start 2>&1`) 
  end

