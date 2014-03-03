Spree::ProductsController.class_eval do
  def autocomplete
    suggestions = Spree::Product.autocomplete(params[:keywords], params[:site_id])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end

  def autosuggest
    suggestions = Spree::Product.autocomplete(params[:keywords], params[:site_id])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end
end
