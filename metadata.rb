name             'bcs_postgresql'
maintainer       'Richard Wigley'
maintainer_email 'richard.wigley'
license          'MIT'
description      'wrapper postgresql for bcs ltd.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.0.4'

source_url       'https://github.com/BCS-io-provision/bcs_postgresql' if respond_to?(:source_url)
issues_url       'https://github.com/BCS-io-provision/bcs_postgresql/issues' if respond_to?(:issues_url)

supports 'ubuntu', '>= 14.04'

depends 'apt'
depends 'postgresql', '~> 5.1.0'
