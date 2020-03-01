production_server = "rails.six"
production_server = Rails.application.credentials.production_server

set :stage, :production
set :branch, ENV["APP_BRANCH"] || "master"

set :rails_env, "production"

set :bundle_without, %w{development test}.join(" ")
set :bundle_jobs, 2

server production_server, user: "ubuntu", roles: %w{app db web}
