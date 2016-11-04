require 'spec_helper'

describe file('/etc/localtime') do
  it { should be_symlink }
end

describe file('/etc/localtime') do
  it { should be_linked_to '/usr/share/zoneinfo/Europe/Warsaw' }
end

describe file('/etc/ntp.conf') do
  it { should be_file }
end

describe file('/etc/ntp.conf') do
  it { should contain '1.ubuntu.pool.ntp.org' }
  it { should contain '2.ubuntu.pool.ntp.org' }
end

describe file('/etc/motd'), :if => os[:family] == 'ubuntu' do
  it { should contain 'Debian' }
end

describe file('/etc/motd'), :if => os[:family] == 'redhat' do
  it { should contain 'RedHat' }
end
