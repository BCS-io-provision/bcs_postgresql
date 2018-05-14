# frozen_string_literal: true

#
# wrapper for sous-chefs/postgresql
#   - pinned at 6.1.1 while the move to lwrp
#   - we want to use a lwrp next as it is more precise than a general recipe
#     - alternative to sous-chef is https://github.com/express42/postgresql_lwrp

# Security Settings
default['postgresql']['pg_hba_defaults'] = false

# security applied when you try to make connection
default['postgresql']['pg_hba'] = [
  { type: 'local', db: 'all', user: 'all', addr: '', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '127.0.0.1/32', method: 'trust' },
  { type: 'host',  db: 'all', user: 'all', addr: '::1/128', method: 'trust' }
]

# chef-solo / chef-zero requires a password is set - chef-server sets password
#
default['postgresql']['password']['postgresql'] = ''

# IP security setting
#   - what ip addresses (interfaces really) will you listen on
default['postgresql']['config']['listen_addresses'] = 'localhost'
