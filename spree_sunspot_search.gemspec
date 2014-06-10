Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sunspot_search'
  s.version     = '1.1.3'
  s.summary     = 'Add Solr search to Spree via the Sunspot gem'
  s.description = 'Sunspot and Spree have a wonderful baby'

  s.author            = ['John Brien Dilts', 'Michael Bianco']
  s.email             = ['jdilts@railsdog.com', 'info@cliffsidedev.com']
  s.homepage          = 'http://www.railsdog.com'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core', '~> 2'
  s.add_dependency 'sunspot_rails', '~> 2.1.1'
  s.add_dependency 'progress_bar', '0.4.0'

  s.add_development_dependency 'capybara', '~> 2.1'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails',  '~> 2.13'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'launchy'
  s.add_development_dependency 'sunspot_solr'
end
