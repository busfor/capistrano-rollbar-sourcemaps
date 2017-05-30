# Core tasks
load File.expand_path('../../tasks/sourcemaps.rake', __FILE__)

namespace :deploy do
  after fetch(:rollbar_sourcemaps_upload_after_task_name), 'rollbar:sourcemaps:upload'
end

namespace :load do
  task :defaults do
    load "capistrano/rollbar/sourcemaps/defaults.rb"
  end
end
