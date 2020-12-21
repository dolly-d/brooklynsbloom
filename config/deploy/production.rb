server '172-31-1-242', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'