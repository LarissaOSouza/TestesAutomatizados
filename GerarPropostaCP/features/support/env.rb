require 'rspec'
require 'yaml'
require 'pry'
 require 'capybara/cucumber'
 require 'capybara/poltergeist'

#Retirando esse register e o default driver eu recebo erro de "rack test requires a rack application"
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome