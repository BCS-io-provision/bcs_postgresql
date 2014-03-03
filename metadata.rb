name             'bcs_postgresql'
maintainer       'Richard Wigley'
maintainer_email 'richard.wigley'
license          'MIT'
description      'wrapper postgresql for bcs ltd.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.2'

supports 'ubuntu', '>= 12.04'

depends 'postgresql'
