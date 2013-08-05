Chef::Log.info("Running deploy/before_symlink.rb...")
run "cd #{release_path} && RAILS_ENV=production bundle exec rake assets:precompile"

case node['platform']
when "debian", "ubuntu"
  # do debian/ubuntu things
when "redhat", "centos", "fedora"
 #   # do redhat/centos/fedora things
end

Chef::Log.info(node['platform'])

      case node['ec2']['instance_type']
      when 'm1.small' then worker_count = 2
      when 'c1.medium' then worker_count = 4
      when 'c1.xlarge' then worker_count = 8
      else
        worker_count = 2
      end

Chef::Log.info(node['ec2']['instance_type'])
Chef::Log.info(worker_count)
