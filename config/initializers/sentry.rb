require 'sentry-ruby'
Sentry.init do |config|
  config.dsn = 'https://ca442fe4b7472092c0add4afcd3ef9e1@o4505614426767360.ingest.sentry.io/4505701012996096'
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # Set traces_sample_rate to 1.0 to capture 100%
  # of transactions for performance monitoring.
  # We recommend adjusting this value in production.
  config.traces_sample_rate = 1.0
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end
