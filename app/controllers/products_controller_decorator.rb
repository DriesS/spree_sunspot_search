Spree::ProductsController.class_eval do
  def index
    params.merge!({'site_id' => current_tenant.site_id})
    @searcher = build_searcher(params)
    @products = @searcher.retrieve_products
    respond_to do |format|
      format.html
      format.json { render :json => @products.map { |p| p.name } }
    end
  end

  def autocomplete
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end

  def autosuggest
    suggestions = Spree::Product.autosuggest(params[:keywords])
    render :text => suggestions.results.collect{|suggestion| { :id => suggestion.id, :label => suggestion.name, :value => suggestion.name} }.to_json
  end
end
