require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'

module Scratch
  class Application < Rails::Application

    # Setup secret key
    config.secret_key_base = case Rails.env
      when 'development', 'test'
        'x' * 30
      else
        ENV.fetch('RAILS_SECRET_KEY_BASE')
    end

    # Rails will warn if this isn't set
    config.eager_load = false

  end
end
