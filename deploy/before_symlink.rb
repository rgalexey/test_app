Chef::Log.info("Running deploy/before_symlink.rb...")
run "cd #{release_path} && RAILS_ENV=production bundle exec rake assets:precompile"

case node["platform"]
when "debian", "ubuntu"
  # do debian/ubuntu things
when "redhat", "centos", "fedora"
 #   # do redhat/centos/fedora things
end
