require 'spec_helper'

describe Category do

  it { should have_valid(:name).when('footy socks') }
  it { should_not have_valid(:name).when(nil, '')}
end
