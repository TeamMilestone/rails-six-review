# 아래 한 줄은 credentials 를 쓰기 위한 호출
require File.expand_path("./environment", __dir__)

project_name = "rails-six-review"
repository = project_name
project_name = Rails.application.credentials.project_name
repository = Rails.application.credentials.repository

lock "~> 3.12.0"

set :application, "rails-six"
set :repo_url, "git@github.com:#{repository}.git"
set :deploy_to, "/home/ubuntu/#{project_name}"
set :linked_files, %w{ config/database.yml config/master.key config/kakao.yml }
set :linked_dirs, %w{ log tmp/files tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/uploads log }
set :keep_releases, 5
set :ssh_options, { forward_agent: true, known_hosts: Net::SSH::KnownHosts }
set :pty, true
set :rbenv_type, :user
set :rbenv_ruby, "2.6.5"
set :init_system, :systemd
