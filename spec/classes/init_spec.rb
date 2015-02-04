require 'spec_helper'
describe 'issue' do

  it { should compile.with_all_deps }

  context 'with defaults for all params' do

    it { should compile.with_all_deps }
    it { should contain_class('issue') }

    it {
      should contain_file('issue').with({})
    }

  end
end
