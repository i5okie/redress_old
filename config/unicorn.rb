working_directory "/srv/apps/redress"
pid "/srv/apps/redress/tmp/pids/unicorn.pid"
stderr_path "/srv/apps/redress/log/unicorn.log"
stdout_path "/srv/apps/redress/log/unicorn.log"

listen "/srv/apps/redress/tmp/unicorn.redress.sock"
worker_processes 1
timeout 30

# Force the bundler gemfile environment variable to
# reference the capistrano "current" symlink
#before_exec do |_|
#  ENV["BUNDLE_GEMFILE"] = File.join(root, 'Gemfile')
#end