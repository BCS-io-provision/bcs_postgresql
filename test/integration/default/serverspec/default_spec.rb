require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe 'bcs_postgresql::default' do
  it 'installed postgresql-9.3' do
    expect(package 'postgresql-9.3').to be_installed
  end
end
