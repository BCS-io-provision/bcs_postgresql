# # encoding: utf-8

# Inspec test for recipe letting::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

title 'bcs_postgresql::default'

def app_version(release = os[:release])
  if release == '14.04'
    '9.3'
  elsif release == '16.04' || release == '18.04'
    '9.5'
  end
end

describe package("postgresql-#{app_version}") do
  it { should be_installed }
end

if os[:release] == '14.04'
  describe service('postgresql') do
    it { should be_enabled  }
    it { should be_installed  }
    it { should be_running }
  end
elsif os[:release] == '16.04' || os[:release] == '18.04'
  describe systemd_service('postgresql') do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end
end

describe file("/etc/postgresql/#{app_version}/main/pg_hba.conf") do
  it { should exist }
  its('content') { should match('83.67.10.5/32') }
end
