Spree::ProductsController.class_eval do
  before_action :merge_site_id, [:index, :autocomplete, :autosuggest]

  def autocomplete
    suggestions = Spree::Product.autocomplete(params[:keywords], params[:site_id])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end

  def autosuggest
    suggestions = Spree::Product.autosuggest(params[:keywords], params[:site_id])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end

  private
  def merge_site_id
    params.merge!({'site_id' => spree_tenant.site_id})
  end
end
