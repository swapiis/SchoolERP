require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Educulture
  class Application < Rails::Application
    config.encoding = 'utf-8'
    config.active_record.whitelist_attributes :false
    config.middleware.use 'PDFKit::Middleware', print_media_type: true
    config.assets.paths << Rails.root.join('vendor', 'assets', 'fonts')
    config.assets.paths << Rails.root.join('vendor', 'assets', 'images')
    config.active_record.raise_in_transactional_callbacks = true
  end
end
