require 'spree/search/spree_sunspot/configuration'

module Spree
  module Search
    module SpreeSunspot

      class << self
        attr_accessor :configuration

        def configure
          self.configuration ||= Spree::Search::SpreeSunspot::Configuration.new
          yield configuration if block_given?
        end
      end

    end
  end
end

# TODO move this to a more appropiate / intention revealing location
Spree::Search::SpreeSunspot.configure {}
