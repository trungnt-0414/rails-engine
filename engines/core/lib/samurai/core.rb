require "samurai/core/engine"

require "sass-rails"
require "bootstrap-sass"
require "autoprefixer-rails"
require "devise"
require "cancancan"

module Samurai
  module Core
    class << self
      def available? engine_name
        Object.const_defined?("Samurai::#{engine_name.to_s.camelize}")
      end
    end
  end
end
