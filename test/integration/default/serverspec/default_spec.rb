require 'serverspec'

set :backend, :exec

describe 'bcs_postgresql::default' do
  it 'installed postgresql' do
    app_version = os[:release] == '16.04' ? 'postgresql-9.5' : 'postgresql-9.3'
    expect(package(app_version)).to be_installed
  end
end
