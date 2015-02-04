require 'rubygems'
require 'puppetlabs_spec_helper/module_spec_helper'

begin
  require 'simpleconv'
  require 'coveralls'
  SimpleConv.formatter = Coveralls::SimpleConv::Formatter
  SimpleConv.start do
    add.filter '/spec/'
    add.filter '/ext/'
  end
  Coveralls.wear!
rescue Exception => e
  warn "#{e}: Coveralls disabled..."
end
