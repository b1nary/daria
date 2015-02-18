#!/usr/bin/env ruby
require 'yaml'
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/plugins/in/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/lib/plugins/out/*.rb'].each {|file| require file }

puts ":: #{NixColor.bold}Welcome to Daria #{Daria::VERSION}#{NixColor.clear_color} ::"
puts "#{NixColor.italic}Your friendly home automation bot."
puts "#{NixColor.clear_color}"

$running = true

print "- Loading config...\t"
$config = YAML.load( File.open( File.dirname(__FILE__)+"/config.yml" ).read )
puts "#{NixColor.fg(10)}[ok]"

trap("INT") {
  print "#{NixColor.fg(9)}-> Killing #{$config['general']['name']}\r"
  $running = false
}

while $running
  sleep 1
end

print "#{NixColor.fg(11)}#{$config['general']['name']} is now dead. See you next time.\r\n"
print NixColor.clear_color
