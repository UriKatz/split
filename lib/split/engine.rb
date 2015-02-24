module Split
  class Engine < ::Rails::Engine
    initializer "split" do |app|
      if Split.configuration.include_rails_helper
        ActionController::API.send :include, Split::Helper
        ActionController::API.helper Split::Helper
      end
    end
  end
end
