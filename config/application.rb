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
    config.secret_key_base = '6342d15d9735f56d2eef499af672f3dfe76b5eedcab930dd0fbebe46a78081525e30313c7dca07d5933033e4b03ed5fec34718f57f3fcf7e3863838095643cb1'	# this key might change for another m/c; can't hardcode in production
  end
end
