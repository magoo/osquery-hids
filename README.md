#osquery-hids
This is a proof of concept hids for OSX using osquery. It is:

1. A launchd daemon
2. A simple growl notifier
3. An osquery config

It needs:

1. OSX
2. Growl (accepting connections)

##Install
Don't install this with any big expectation of security. It sucks. Build something better!

1. Install osquery (daemonized) http://osquery.io/downloads/
2. Install growl, and make sure "listen for incoming connections" is checked, and boots on login
3. Install growlnotify
4. Drop the osquery-hids plist into /System/Library/LaunchDaemons
5. Drop the config into /var/osquery/, edit paths accordingly
6. Reboot or `sudo launchctl load /System/Library/LaunchDaemons/com.osquery.hids.plist`
7. Add a Login Item in System Preferences to see if it worked. 
