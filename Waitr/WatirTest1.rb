require 'rubygems'
require 'watir-webdriver'
b = Watir::Browser.new :firefox
b.goto 'www.google.com'
b.text_field(:name => 'q').set 'Watir-WebDriver'
b.button(:name => 'btnG').click
b.div(:id => 'resultStats').wait_until_present
puts "Displaying page: '#{b.title}' with results: '#{b.div(:id => "resultStats").text}'"
b.close