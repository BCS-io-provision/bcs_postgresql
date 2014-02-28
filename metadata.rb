name             "postgresql-wrapper"
maintainer       "Richard Wigley"
maintainer_email "richard.wigley"
license          "MIT"
description      "Wrapper to postgresql cookbook maintained by phlipper/chef-postgresql"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"

supports 'ubuntu', '>= 12.04'

depends 'postgresql'
