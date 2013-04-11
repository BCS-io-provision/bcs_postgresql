
default["postgresql"]["pg_hba"]  = [
  { type: "local", db: "all", user: "all",  addr: "", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "127.0.0.1/32", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "::1/128", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "0.0.0.0/0", method: "md5"  }
]

default["postgresql"]["pg_hba_defaults"]                 = false

# These settings are initialized by initdb, but they can be changed.
default["postgresql"]["lc_messages"]                     = "en_GB.UTF-8"
default["postgresql"]["lc_monetary"]                     = "en_GB.UTF-8"
default["postgresql"]["lc_numeric"]                      = "en_GB.UTF-8"
default["postgresql"]["lc_time"]                         = "en_GB.UTF-8"
