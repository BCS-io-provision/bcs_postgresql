name             "chef-postgresql-wrapper"
maintainer       "Richard Wigley"
maintainer_email "richard.wigley"
license          "MIT"
description      "Wrapper to postgresql cookbook maintained by phlipper/chef-postgresql"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

%w{ ubuntu}.each do |os|
  supports os
end


%w{ postgresql }.each do |cb|
  depends cb
end
