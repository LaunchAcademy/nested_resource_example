require 'spec_helper'

describe Product do
  it { should belong_to :category }

  it { should have_valid(:name).when('rainbow footy socks') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_valid(:category).when(Category.new) }
  it { should_not have_valid(:category).when(nil) }
end
