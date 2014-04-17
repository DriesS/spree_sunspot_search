require 'spree_core'
require 'sunspot_rails'
require 'spree_sunspot_search/engine'
require 'spree/search/spree_sunspot/configuration'
require 'spree/core/search/base'

module SpreeSunspotSearch
  class Engine < Rails::Engine
    require 'spree/core'
    isolate_namespace Spree
    engine_name 'spree_sunspot_search'

    config.autoload_paths += %W(#{config.root}/lib)

    # use rspec for tests
    config.generators do |g|
      g.test_framework :rspec
    end

    initializer "spree.sunspot_search.preferences", :after => "spree.environment" do |app|
      app.config.spree.preferences.searcher_class = Spree::Search::SpreeSunspot::Search
    end

    def self.activate
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      # this allows us to develop the search class without restarting the app on each change
      # I think in dev mode the engine's to_prepare block is called on each request

      if Rails.env.development?
        Spree::Config.searcher_class = Spree::Search::SpreeSunspot::Search
      end
    end

    config.to_prepare &method(:activate).to_proc
  end
end

module Sunspot
  module Type

    #Auto Completion
    class AutocompleteType < AbstractType
      def indexed_name(name) #:nodoc:
        "#{name}_ac"
      end

      def to_indexed(value) #:nodoc:
        value.to_s if value
      end

      def cast(string) #:nodoc:
        string
      end
    end

    #Auto Suggestion
    class AutosuggestType < AbstractType
      def indexed_name(name) #:nodoc:
        "#{name}_as"
      end

      def to_indexed(value) #:nodoc:
        value.to_s if value
      end

      def cast(string) #:nodoc:
        string
      end
    end


  end
end
