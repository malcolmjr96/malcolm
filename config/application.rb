require_relative "boot"

require "rails/all"
require 'sentry-ruby'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Malcolm
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0


    Sentry.init do |config|
      config.dsn = 'https://o4505614426767360.ingest.sentry.io/api/4505701012996096/security/?sentry_key=ca442fe4b7472092c0add4afcd3ef9e1'
      config.breadcrumbs_logger = [:sentry_logger, :http_logger]

      # To activate performance monitoring, set one of these options.
      # We recommend adjusting the value in production:
      config.traces_sample_rate = 1.0
      # or
      config.traces_sampler = lambda do |context|
        0.5
      end
    end


    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    Sentry.capture_message("test message yoop")
  end
end
