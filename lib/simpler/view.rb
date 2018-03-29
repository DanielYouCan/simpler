require_relative 'view_types/html_type'
require_relative 'view_types/plain_type'

module Simpler
  class View

    def self.select_type(env)
      plain_type = env['simpler.template'].keys.first if env['simpler.template'].is_a? Hash

      plain_type.nil? ? HtmlType : PlainType
    end

  end
end
