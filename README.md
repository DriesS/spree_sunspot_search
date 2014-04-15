SpreeSunspotSearch
==================
https://www.codeship.io/projects/139c4bd0-a611-0131-0752-5a152af363c3/status

Adds Solr search to Spree Commerce using [Sunspot](https://github.com/sunspot/sunspot).

This is compatible with Spree 1.1.x. Untested on 1.0, but will probably work without too much modification.


Installation
============

Add spree_sunspot_search to your Gemfile and run bundler.

`gem 'spree_sunspot_search', git: 'git://github.com/iloveitaly/spree_sunspot_search.git'`

add the following to the Gemfile if you are not using another solr install locally for testing and development. The rake tasks for starting and stop this for development are included automatically for your use.

	group :test, :development do
		gem 'sunspot_solr'
	end


Install the solr.yml file from Sunspot.

`rails g sunspot_rails:install`

Copy the initializer and add `solr_sort_by` to `all.js`:

`rails g spree_sunspot_search:install`

Running & Indexing
==================

Start up Solr (bundled with Sunspot's install)

`bundle exec rake sunspot:solr:run`

Build the index for the first time

`bundle exec rake sunspot:reindex`

Stop the solr process:

`bundle exec rake sunspot:solr:stop`

Customization
=============

Production Server
-----------------
To configure development / production solr server edit `$RAILS_ROOT/config/solr.yml`.
Read the [sunspot documentation](https://github.com/sunspot/sunspot/wiki/Configuring-solr-for-use-with-sunspot-in-development%2C-testing%2C-and-production)
and [this great post](http://stackoverflow.com/questions/4937314/setup-sunspot-solr-with-rails-in-production-environment) for more information about production configuration.

Below is a sample config for production that works well for a site with relatively low search traffic and capistrano based deployment:


    production:
      solr:
        hostname: 127.0.0.1
        bind_address: 127.0.0.1
        port: 8983
        log_level: WARNING
        max_memory: 100M
        data_path: /data/spree/shared/solr/data
        pid_dir: /data/spree/shared/solr/pids
        solr_home: /data/spree/shared/solr
      auto_commit_after_request: false

Facets
------

Edit the [initializer](https://github.com/iloveitaly/spree_sunspot_search/blob/master/lib/generators/templates/spree_sunspot_search.rb) created by the installation script.
The initializer template should provide enough examples to get you started.


Tests
-----

```shell
 
```

TODO
=====

* Add an automatic MAX value for price facets (e.g. Above <max_said_value>)
* Sorting by facet criteria and Solr analytics (Best result, Popular, etc.)
* Open the Sunspot DSL to utilise all the additional data and analytics available through Solr
* Get the Taxon browsing (e.g. Categories) to utilise the Solr data for speed boosts
* Testing via https://github.com/justinko/sunspot-rails-tester + rspec

Authors
=======
* @jbrien
* @iloveitaly

Copyright (c) 2011 John Brien Dilts, released under the New BSD License
