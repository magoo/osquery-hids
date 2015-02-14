require 'file-tail'
require 'ruby-growl'
require 'json'

g = Growl.new "localhost", "ruby-growl"

#OSQuery Results Location
filename = '/var/log/osquery/osqueryd.results.log'

#Tail the log and report to growl locally. 
File.open(filename) do |log|
  log.extend(File::Tail)
  log.interval = 10
  log.backward(0)
  log.tail { |line|
    alert = JSON.parse(line) 
    g.add_notification "ruby-growl Notification"
    g.notify "ruby-growl Notification", "OSQuery Alert", "#{alert['name']} changed. #{alert['columns']['name']} was #{alert['action']}.",0, true
  }
end

