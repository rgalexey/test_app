# Bind release_path to local variable
cache_release_path = release_path
opsworks_app_environment do
  app_name 'test_app'
  release_path cache_release_path
end
