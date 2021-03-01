require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Islam4Kids
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    if Rails.env.development? # for rails-erd gem to generate a diagram
      def eager_load!
        Zeitwerk::Loader.eager_load_all
      end
    end

    config.to_prepare do
      ActionText::ContentHelper.allowed_tags << "iframe" # youtube embed

      # video previews for action_text
      ActionText::ContentHelper.allowed_attributes.add "style"
      ActionText::ContentHelper.allowed_attributes.add "controls"
      ActionText::ContentHelper.allowed_tags.add "video"
      ActionText::ContentHelper.allowed_tags.add "audio"
      ActionText::ContentHelper.allowed_tags.add "source"
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
Sentry.init do |config|
  config.dsn = 'https://1ae328fef0a24f398b27a9e990a0362f@o538689.ingest.sentry.io/5657083'
  config.breadcrumbs_logger = [:active_support_logger]

  # To activate performance monitoring, set one of these options.
  # We recommend adjusting the value in production:
  # config.traces_sample_rate = 0.5
  # or
  config.traces_sampler = lambda do |context|
    true
  end
end
