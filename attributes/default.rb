
default["postgresql"]["pg_hba"]  = [
  { type: "local", db: "all", user: "all",  addr: "", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "127.0.0.1/32", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "::1/128", method: "trust"  },
  { type: "host",  db: "all", user: "all",  addr: "83.67.10.5/32", method: "trust"  }
]

default["postgresql"]["pg_hba_defaults"]                 = false
default["postgresql"]["listen_addresses"] =  "*"
