threads 1, 2
workers 1

daemonize
quiet

pidfile '/home/deploy/apps/deepak_blog/shared/tmp/pids/deepak_blog.deepak_blog'
state_path '/home/deploy/apps/deepak_blog/shared/tmp/sockets/deepak_blog.state'
bind 'unix:///home/deploy/apps/deepak_blog/shared/tmp/sockets/deepak_blog.sock'

preload_app!
