I'd like to use `bundler/setup` to include all of my listed gems but I'm not
succeeding. In `go.rb` I have

    require 'rubygems'
    ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __FILE__)
    require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

which fails to require `httparty` as I thought it would:

    $ bundle exec ruby go.rb
    go.rb:5:in `<main>': uninitialized constant HTTParty (NameError)

