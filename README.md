#osquery-hids
This is a proof of concept hids for OSX using osquery. It is:

1. A launchd daemon
2. A simple ruby-growl notifier
3. An osquery config

It needs:

1. OSX
2. Ruby
3. Growl (accepting connections)

##Install
Don't install this with any big expectation of security. It sucks. Build something better!

1. Install osquery (daemonized) http://osquery.io/downloads/
2. Drop the osquery-hids plist into /System/Library/LaunchDaemons and edit its paths accordingly
3. Drop the config into /var/osquery/, edit paths accordingly
4. Install growl, and make sure "listen for incoming connections" is checked, and boots on login
