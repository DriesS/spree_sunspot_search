require 'spree/search/spree_sunspot/configuration'

module Spree
  module Search
    module SpreeSunspot

      class << self
        attr_accessor :configuration

        def configure
          self.configuration ||= Spree::Search::SpreeSunspot::Configuration.new
          yield configuration
        end
      end

    end
  end
end

# TODO move this to a more appropiate / intention revealing location
Spree::Search::SpreeSunspot.configure {}

# TODO: test it like this:
# [2] pry(main)> c = Spree::Search::SpreeSunspot.configure do |c|
# [2] pry(main)*   c.price_ranges = ["0-150"]
# [2] pry(main)* end




