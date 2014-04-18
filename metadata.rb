name             'bcs_postgresql'
maintainer       'Richard Wigley'
maintainer_email 'richard.wigley'
license          'MIT'
description      'wrapper postgresql for bcs ltd.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

supports 'ubuntu', '>= 12.04'

depends 'apt'
depends 'locale', '~> 1.0.0'
depends 'locale-wrapper', '~> 1.0.0'
depends 'postgresql', '~> 0.13.3'
