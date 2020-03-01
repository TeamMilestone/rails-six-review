# default
set :stage, :production
set :branch, ENV["APP_BRANCH"] || "master"

# capistrano-rails
set :rails_env, "staging"

# capistrano-bundler
## bundle install을 진행할때 제외할 rails_env
set :bundle_without, %w{development test}.join(" ")
## bundle install이 수행될때 동시에 처리할 시스템의 cpu core 수
## default 값은 4
set :bundle_jobs, 2

# shop
server "server.kr", user: "ubuntu", roles: %w{app db web}
