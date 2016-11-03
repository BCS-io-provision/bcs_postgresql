
default['postgresql']['version'] = '9.4'

# Security Settings
default['postgresql']['pg_hba_defaults'] = false
default['postgresql']['pg_hba'] = [
  { type: 'local', db: 'all', user: 'all', addr: '', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '::1/128', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '83.67.10.5/32', method: 'trust' }
]

# Readme says that this is enough to set locale.
# However, I have found it needs lc_XX set.
default['postgresql']['initdb_options']    = '--locale=en_GB.UTF-8'

default['postgresql']['lc_messages']       = 'en_GB.UTF-8'
default['postgresql']['lc_monetary']       = 'en_GB.UTF-8'
default['postgresql']['lc_numeric']        = 'en_GB.UTF-8'
default['postgresql']['lc_time']           = 'en_GB.UTF-8'

# IP security setting
default['postgresql']['listen_addresses'] = '*'
