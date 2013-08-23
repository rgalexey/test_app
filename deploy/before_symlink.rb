Chef::Log.info("Running deploy/before_symlink.rb...")

case node['platform']
when "debian", "ubuntu"
  # do debian/ubuntu things
when "redhat", "centos", "fedora"
 #   # do redhat/centos/fedora things
end

Chef::Log.info(node['platform'])
Chef::Log.info(node[:opsworks][:instance][:instance_type])
Chef::Log.info(node[:opsworks][:instance][:hostname])

Chef::Log.info(node[:deploy][application][:name])

#Chef::Log.info("[ -e #{node[:deploy][:rg_api_dly_proc][:deploy_to]}/current/ ] && ( echo 'We are on delayed job box. Stopping delayed jobs'; cd #{node[:deploy][:rg_api_dly_proc][:deploy_to]}/current/ && RAILS_ENV=production script/delayed_jobs_stop )")
#Chef::Log.info(`[ -e #{node[:deploy][:rg_api_dly_proc][:deploy_to]}/current/ ] && ( echo 'We are on delayed job box. Stopping delayed jobs'; cd #{node[:deploy][:rg_api_dly_proc][:deploy_to]}/current/ && RAILS_ENV=production script/delayed_jobs_stop )`)

#      case node['ec2']['instance_type']
#      when 'm1.small' then worker_count = 2
#      when 'c1.medium' then worker_count = 4
#      when 'c1.xlarge' then worker_count = 8
#      else
#        worker_count = 2
#      end



