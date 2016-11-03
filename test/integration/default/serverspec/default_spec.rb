require 'spec_helper'

describe file('/etc/localtime') do
  it { should be_symlink }
end

describe file('/etc/localtime') do
  it { should be_linked_to '/usr/share/zoneinfo/Europe/Warsaw' }
end

