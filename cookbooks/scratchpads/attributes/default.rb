# Passwords bag
default["scratchpads"]["encrypted_data_bag"] = "passwords"

# FQDN of the control server (this probably shouldn't be set here)
default["scratchpads"]["control"]["fqdn"] = "sp-control-1.nhm.ac.uk"

# Aegir database user
default["scratchpads"]["control"]["aegir"]["dbuser"] = "aegir"
default["scratchpads"]["control"]["aegir"]["dbuserhost"] = "%"
#default["scratchpads"]["control"]["aegir"]["host"] = "sp-control-1"
default["scratchpads"]["control"]["aegir"]["dbname"] = "aegir"

# Aegir database server
default["scratchpads"]["control"]["dbserver"] = "localhost"
default["scratchpads"]["control"]["dbuser"] = "root"
default['scratchpads']['control']['admin_email'] = "s.rycroft@nhm.ac.uk"

# Extra SQL files
default["scratchpads"]["percona"]["percona-functions-file"] = "/tmp/percona-functions.sql"
default["scratchpads"]["percona"]["secure-installation-file"] = "/tmp/secure-installation.sql"

# Aegir settings
default["scratchpads"]["aegir"]["home_folder"] = "/var/aegir"
default["scratchpads"]["aegir"]["hostmaster_folder"] = "hostmaster"
default["scratchpads"]["aegir"]["environment"] = ({
  'SHELL' => '/bin/bash',
  'TERM' => 'xterm',
  'USER' => 'aegir',
  'MAIL' => '/var/mail/aegir',
  'PATH' => '/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games',
  'PWD' => default["scratchpads"]["aegir"]["home_folder"],
  'LANG' => 'en_GB.UTF-8',
  'SHLVL' => '1',
  'HOME' => default["scratchpads"]["aegir"]["home_folder"]
})
default["scratchpads"]["aegir"]["group"] = "www-data"
default["scratchpads"]["aegir"]["user"] = "aegir"
default["scratchpads"]["aegir"]["provision_version"] = "provision-7.x-3.x"
default["scratchpads"]["aegir"]["modules_to_install"] = ["hosting_queued","hosting_alias","hosting_clone","hosting_cron","hosting_migrate","hosting_signup","hosting_task_gc","hosting_web_pack"]
default["scratchpads"]["aegir"]["modules_to_download"] = ["memcache","varnish"]