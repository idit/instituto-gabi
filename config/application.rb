require File.expand_path('../boot', __FILE__)

require 'rails/all'

if defined?(Bundler)
  Bundler.require(*Rails.groups(:assets => %w(development test)))
end

module Igabi
  class Application < Rails::Application
    config.time_zone = 'Brasilia'
    config.i18n.load_path += Dir[Rails.root.join("config/locales/**/*.yml").to_s]
    config.i18n.default_locale = "pt-BR"
    config.encoding = "utf-8"
    # Configure sensitive parameters which will be filtered from the log file.
    config.filter_parameters += [:password]
    config.active_support.escape_html_entities_in_json = true
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
