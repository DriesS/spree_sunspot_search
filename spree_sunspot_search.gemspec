# -*- encoding: utf-8 -*-
# stub: spree_sunspot_search 1.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_sunspot_search"
  s.version = "1.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["John Brien Dilts", "Michael Bianco"]
  s.date = "2016-12-11"
  s.description = "Sunspot and Spree have a wonderful baby"
  s.email = ["jdilts@railsdog.com", "info@cliffsidedev.com"]
  s.files = [".gitignore", "LICENSE", "README.md", "Rakefile", "Versionfile", "app/assets/javascripts/store/solr_sort_by.js.coffee", "app/helpers/spree/base_helper_decorator.rb", "app/models/product_decorator.rb", "app/models/spree/search/spree_sunspot/search.rb", "app/overrides/add_search_facets.rb", "app/overrides/add_search_pagination.rb", "app/overrides/add_search_sort.rb", "app/overrides/add_search_suggestion.rb", "app/views/spree/products/_facets.html.erb", "app/views/spree/products/_sort_bar.html.erb", "app/views/spree/products/_suggestion.html.erb", "config/locales/en.yml", "lib/conf/admin-extra.html", "lib/conf/elevate.xml", "lib/conf/mapping-ISOLatin1Accent.txt", "lib/conf/protwords.txt", "lib/conf/schema.xml", "lib/conf/scripts.conf", "lib/conf/solrconfig.xml", "lib/conf/spellings.txt", "lib/conf/stopwords.txt", "lib/conf/synonyms.txt", "lib/conf/xslt/example.xsl", "lib/conf/xslt/example_atom.xsl", "lib/conf/xslt/example_rss.xsl", "lib/conf/xslt/luke.xsl", "lib/generators/spree_sunspot_search/install/install_generator.rb", "lib/generators/templates/spree_sunspot_search.rb", "lib/spree/search/spree_sunspot/configuration.rb", "lib/spree_sunspot_search.rb", "spec/spec_helper.rb", "spree_sunspot_search.gemspec"]
  s.homepage = "http://www.railsdog.com"
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0")
  s.requirements = ["none"]
  s.rubygems_version = "2.4.6"
  s.summary = "Add Solr search to Spree via the Sunspot gem"
  s.test_files = ["spec/spec_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, ["~> 2.1"])
      s.add_runtime_dependency(%q<sunspot_rails>, [">= 0"])
      s.add_runtime_dependency(%q<progress_bar>, ["= 0.4.0"])
    else
      s.add_dependency(%q<spree_core>, ["~> 2.1"])
      s.add_dependency(%q<sunspot_rails>, [">= 0"])
      s.add_dependency(%q<progress_bar>, ["= 0.4.0"])
    end
  else
    s.add_dependency(%q<spree_core>, ["~> 2.1"])
    s.add_dependency(%q<sunspot_rails>, [">= 0"])
    s.add_dependency(%q<progress_bar>, ["= 0.4.0"])
  end
end
