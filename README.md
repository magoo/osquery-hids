#osquery-hids
This is a proof of concept hids for OSX using osquery. It is:

1. A launchd daemon
2. A simple growl notifier
3. An osquery config

It needs:

1. OSX
2. Growl (accepting connections)

It watches for launchd changes, kernel extension changes, and changes to startup items. It does not enumerate all known malware locations, though it does cover the most common ones. See: https://www.virusbtn.com/virusbulletin/archive/2014/10/vb201410-malware-persistence-MacOSX#id5003810 

##Install
Don't install this with any big expectation of security. It sucks. Build something better!

1. Install osquery (daemonized) http://osquery.io/downloads/
2. Install growl and configure to boot on login. http://growl.info/
3. Install growlnotify http://growl.info/downloads#generaldownloads
4. Drop the osquery-hids plist into `/System/Library/LaunchDaemons`
5. Drop the config into `/var/osquery/`, edit paths accordingly
6. Drop their sexy logo into `/var/osquery/`
7. Reboot or `sudo launchctl load /System/Library/LaunchDaemons/com.osquery.hids.plist`
8. Add a Login Item in System Preferences to see if it worked. 

##Thanks!
...to the fine folks at FB for making osquery.
