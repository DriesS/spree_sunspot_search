require 'spec_helper'

describe Spree::Search::SpreeSunspot::Configuration do

  describe "#initialize" do
    it "sets the default price_ranges" do
      expect(subject.price_ranges).to eq(["0-25", "25-50", "50-100", "100-150"])
    end

    it "sets the option_facets" do
      expect(subject.option_facets).to eq([:color, :size])
    end

    it "sets the property_facets" do
      expect(subject.property_facets).to eq([:brand])
    end

    it "sets the sort_fields" do
      expect(subject.sort_fields).to eq({ score: :desc, price: [:asc, :desc]})
    end

    it "sets the default_sort_key" do
      expect(subject.default_sort_key).to eq(:score)
    end

    it "sets the default_sort_order" do
      expect(subject.default_sort_order).to eq(:desc)
    end
  end

  describe "#display_facets" do
    pending
  end

end
