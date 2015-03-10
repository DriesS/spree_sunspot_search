require 'spec_helper'

describe "Facted Navigation", search: true do

  let!(:product) {create(:product, description: "product one", name: "Product Uno")}

  before(:each) do
    Sunspot.commit
  end

  it "should use solr searcher" do
    searcher = Spree::Search::SpreeSunspot::Search.new({keyword: product.name})
    products = searcher.retrieve_products
    expect(products.size).to eql 1
    expect(products.first.name).to eql product.name
  end
end
