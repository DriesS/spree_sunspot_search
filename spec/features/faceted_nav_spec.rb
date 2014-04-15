require 'spec_helper'

describe "Facted Navigation" do

  let!(:product) {create(:product, description: "product one", name: "Product Uno")}


  it "should use solr searcher" do
    sleep 5
    searcher = Spree::Search::SpreeSunspot::Search.new({keyword: product.name})
    products = searcher.retrieve_products
    expect(products.size).to eql 1
    expect(products.first.name).to eql product.name
  end
end
