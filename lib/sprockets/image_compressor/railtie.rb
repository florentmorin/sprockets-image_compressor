module Sprockets
  module ImageCompressor
    class Railtie < ::Rails::Railtie
      initializer :setup_image_compressors do |app|
        Integration.setup app.assets if app.config.assets.compress
      end
    end
  end
end
