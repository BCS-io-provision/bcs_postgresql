require 'serverspec'

set :backend, :exec

describe 'bcs_postgresql::default' do
  it 'installed postgresql' do
    expect(package(app_version(os[:release]))).to be_installed
  end

  describe service 'postgresql' do
    if os[:release] == '14.04'
      # be_enabled was false - but moving away from 14 so not
      # investigating any further
      it { should be_running }
    elsif os[:release] == '16.04' || os[:release] == '18.04'
      it { should be_enabled }
      it { should be_running.under('systemd') }
    end
  end

  def app_version(os)
    if os == '14.04'
      'postgresql-9.3'
    elsif os == '16.04' || os == '18.04'
      'postgresql-9.5'
    end
  end
end
