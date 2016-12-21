#
# wrapper for sous-chefs/postgresql
#  - currently actively managed - 2016/12/21

# Security Settings
default['postgresql']['pg_hba_defaults'] = false
default['postgresql']['pg_hba'] = [
  { type: 'local', db: 'all', user: 'all', addr: '', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '::1/128', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '83.67.10.5/32', method: 'trust' }
]

# chef-solo / chef-zero requires a password is set - chef-server sets password
#
default['postgresql']['password']['postgresql'] = ''

# IP security setting
default['postgresql']['config']['listen_addresses'] = '*'
