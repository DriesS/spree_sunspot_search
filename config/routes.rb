Spree::Core::Engine.routes.draw do
  get "autocomplete" => "products#autocomplete"
  get "autosuggest"  => "products#autosuggest"
end
