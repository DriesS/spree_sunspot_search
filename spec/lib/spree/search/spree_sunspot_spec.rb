require 'spec_helper'

describe Spree::Search::SpreeSunspot do

  describe ".configure" do

    context "when a block is passed in" do
      before(:each) do
        Spree::Search::SpreeSunspot.configure do |c|
          c.price_ranges = ["0-150"]
        end
      end

      it "overrides the default configuration with values from the block" do
        config = Spree::Search::SpreeSunspot.configuration
        expect(config.price_ranges).to eq(["0-150"])
      end
    end

    context "when no block is passed" do
      before(:each) do
        Spree::Search::SpreeSunspot.configuration = nil
        Spree::Search::SpreeSunspot.configure {}
      end

      it "uses the default configuration settings" do
        config = Spree::Search::SpreeSunspot.configuration
        expect(config.price_ranges).to eq(["0-25", "25-50", "50-100", "100-150"])
      end
    end

  end
end
