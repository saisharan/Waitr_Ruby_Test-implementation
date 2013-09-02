require 'rubygems'
require 'watir-webdriver'

b = Watir::Browser.new :firefox
b.goto 'http://localhost/drupal7nonenon'
b.link(:text => 'Create new account').click
b.text_field(:xpath,"//input[@id='edit-name']").set 'admin123'
b.text_field(:xpath,"//input[@id='edit-mail']").set 'admin@photoninfotech.com'
b.button(:xpath,"//input[@id='edit-submit']").click
b.text_field(:xpath,"//input[@id='edit-name']").set 'admin'
b.text_field(:xpath,"//input[@id='edit-pass']").set 'admin'
b.button(:xpath,"//input[@id='edit-submit']").click
b.close