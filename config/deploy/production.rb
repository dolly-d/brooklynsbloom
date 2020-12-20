server '3.15.145.14', user: 'deploy', roles: %w{web app db}
set :rails_env, 'production'