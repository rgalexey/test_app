Chef::Log.info("Running deploy/before_symlink.rb...")
run "cd #{release_path} && RAILS_ENV=production bundle exec rake assets:precompile"

package "apache2" do
  case node[:platform]
  when "centos","redhat","fedora","suse"
    package_name "httpd"
  when "debian","ubuntu"
    package_name "apache2"
  when "arch"
    package_name "apache"
  end
  action :install
end
