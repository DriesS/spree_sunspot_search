Spree::ProductsController.class_eval do
  def autocomplete
    suggestions = Spree::Product.autosuggest(params[:keywords])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end

  def autosuggest
    suggestions = Spree::Product.autosuggest(params[:keywords])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end
end
