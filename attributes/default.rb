#
# wrapper for hw-cookbooks/postgresql
#  - seems the most actively managed
#  - versions of the database seem to be in keeping with the linux distribution's default
#  - There are some pull requests in the offing but don't hold breath

# Security Settings
default['postgresql']['pg_hba_defaults'] = false
default['postgresql']['pg_hba'] = [
  { type: 'local', db: 'all', user: 'all', addr: '', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '::1/128', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '83.67.10.5/32', method: 'trust' }
]

default['postgresql']['password'] = {}

# IP security setting
default['postgresql']['config']['listen_addresses'] = '*'
