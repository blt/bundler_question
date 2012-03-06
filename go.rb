require 'rubygems'
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('Gemfile', __FILE__)
require 'bundler/setup' if File.exists?(ENV['BUNDLE_GEMFILE'])

print HTTParty.get('http://whoismyrepresentative.com/whoismyrep.php?zip=97209')
