## Postgresql-wrapper

This is a wrapper to give a company specific version for the [postgresql cookbook supported by phlipper.](https://github.com/phlipper/chef-postgresql)

## Requirements

* Chef 11.0
* Ruby >= 2.1.0
* Ubuntu 12.04
* [None US collation requires the locale wrapper recipie to have run.](https://github.com/BCS-io/chef-locale-wrapper)
* [phlipper postgresql cookbook](https://github.com/phlipper/chef-postgresql)

## Usage

Most commonly included into other cookbooks and add a dependency in the metadata.


| File        | Command                                                   |
| ----------- | ----------------------------------------------------------|
| berksfile   | cookbook 'postgresql', github: "phlipper/chef-postgresql"
| berksfile   | cookbook 'postgresql-wrapper', github: "BCS-io/chef-postgresql-wrapper" |
| metadata.rb | depends 'locale'                     |
| recipe/     | include_recipe 'postgresql-wrapper'  |

Include in a runlist

````
    chef.run_list = [
      "recipe[common-system::default]"
  ]
````


## Attributes

### Authentication

#### pg_hba

To control the security of Postgres means configuring pg_hba.

These security settings trust ALL internal connections. This means that ANY user on the system can log on as any database user, including the superuser postgres, without a password. The only user on the system will be the deployer. Your security requirements may vary.

Postgres Documentation on pg_hba http://www.postgresql.org/docs/9.2/static/auth-pg-hba-conf.html

````
default["postgresql"]["pg_hba"]  = [
  { type: "local", db: "all", user: "all",  addr: "", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "127.0.0.1/32", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "::1/128", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "0.0.0.0/0", method: "md5"  }
]
````

Do not include the default pg_hba if you are configuring your own pg_hba.

````
default["postgresql"]["pg_hba_defaults"]                 = false
````

### Default Postgres User

A typical customisation is to give the default Postgres superuser a password. You need postgres to authenticate the postgres user. You could do this by making this the first line in your pg_hba.

````
{ type: "local", db: "all", user: "postgres",  addr: "", method: "md5"  },
````

Then change the user postgres in the standard cookbook way. [See the Users section of the readme and configure it was a username "postgres".](https://github.com/phlipper/chef-postgresql/blob/master/README.md#usage)

### Locale

[The default is to take the collation of the operating system.](http://www.postgresql.org/docs/9.3/static/locale.html) This can be overriden just for postgres, however, I prefer to have the system set the locale so that every application has the same localisation setting.


## Recipes

The default runs the upstream `postgresql::libpq`, a Ubuntu requirement, `postgresql::server` the main database application, and the optional modules from `postgresql::contrib` - this is needed for array and hstore support.

## Author

Author:: Richard Wigley (richard.wigley@bcs.io)
