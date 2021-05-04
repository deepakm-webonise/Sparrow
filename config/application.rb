require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module AntUrl
  class Application < Rails::Application
    config.active_record.belongs_to_required_by_default = false
    config.generators do |g|
      g.orm :active_record
      g.test_framework :rspec
      g.assets false
      g.helper false
      g.stylesheets false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
    end
  end
end
