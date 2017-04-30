name             'bcs_postgresql'
maintainer       'BCS Ltd'
maintainer_email 'richard.wigley@github.com'
license          'MIT'
description      'wrapper postgresql for bcs ltd.'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '2.2.1'

source_url       'https://github.com/BCS-io-provision/bcs_postgresql' if respond_to?(:source_url)
issues_url       'https://github.com/BCS-io-provision/bcs_postgresql/issues' if respond_to?(:issues_url)

chef_version     '>= 12.0' if respond_to?(:chef_version)

supports         'ubuntu', '>= 14.04'

depends          'apt'
depends          'postgresql', '~> 6.1.0'
