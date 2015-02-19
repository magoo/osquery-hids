#!/usr/bin/env ruby

require 'ruby-growl'

g = Growl.new "localhost", "ruby-growl"

#OSQuery Results Location
filename = '/var/log/osquery/osqueryd.results.log'

g.add_notification "ruby-growl Notification"
g.notify "ruby-growl Notification", "OSQuery Alert", "Logs happened that you should probably pay attention to. /var/log/osquery/osquery.log",0, true
