Chef::Log.info("Running deploy/before_symlink.rb...")
run "cd #{release_path} && RAILS_ENV=production bundle exec rake assets:precompile"

case node['platform']
when "debian", "ubuntu"
  # do debian/ubuntu things
when "redhat", "centos", "fedora"
 #   # do redhat/centos/fedora things
end

Chef::Log.info(node['platform'])
Chef::Log.info(node[:opsworks][:instance][:instance_type])

bash "echo something" do
   code <<-EOF
     echo 'I am a chef!'
   EOF
end


#      case node['ec2']['instance_type']
#      when 'm1.small' then worker_count = 2
#      when 'c1.medium' then worker_count = 4
#      when 'c1.xlarge' then worker_count = 8
#      else
#        worker_count = 2
#      end



