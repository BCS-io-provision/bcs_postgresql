# BCS_POSTGRESQL COOKBOOK

This is a wrapper to the postgresql cookbook supported by phlipper:
https://github.com/phlipper/chef-postgresql

This is simply a way of setting attributes specific for my company without forking the upstream respository maintained by phlipper.

# Requirements

# Usage

# Attributes

AUTHENTICATION

pg_hba

To control the security of Postgres means configuring pg_hba.

These security settings trust ALL internal connections. This means that ANY user on the system can log on as any database user, including the superuser postgres, without a password. The only user on the system will be the deployer. Your security requirements may vary.

Postgres Documentation on pg_hba http://www.postgresql.org/docs/9.2/static/auth-pg-hba-conf.html

default["postgresql"]["pg_hba"]  = [
  { type: "local", db: "all", user: "all",  addr: "", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "127.0.0.1/32", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "::1/128", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "0.0.0.0/0", method: "md5"  }
]

Do not include the default pg_hba if you are configuring your own pg_hba.

default["postgresql"]["pg_hba_defaults"]                 = false

Default Postgres User

A typical customisation is to give the default Postgres superuser a password. You need postgres to authenticate the postgres user. You could do this by making this the first line in your pg_hba.

{ type: "local", db: "all", user: "postgres",  addr: "", method: "md5"  },

Then change the user postgres in the standard cookbook way. See the Users section of the readme and configure it was a username "postgres".
https://github.com/phlipper/chef-postgresql/blob/master/README.md#usage


LOCALE

The default customisation initialises the initdb with US settings. If that is not the case you need to configure this.

http://www.postgresql.org/docs/9.2/static/locale.html

# These settings are initialized by initdb, but they can be changed.
default["postgresql"]["lc_messages"]                     = "en_GB.UTF-8"
default["postgresql"]["lc_monetary"]                     = "en_GB.UTF-8"
default["postgresql"]["lc_numeric"]                      = "en_GB.UTF-8"
default["postgresql"]["lc_time"]                         = "en_GB.UTF-8"


# Recipes

The default runs the upstream "postgresql::server"

# Author

Author:: Richard Wigley (richard.wigley@bcs.io)