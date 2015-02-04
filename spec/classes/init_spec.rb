require 'spec_helper'
describe 'issue' do

  it { should compile.with_all_deps }

  context 'with defaults for all params' do

    it { should compile.with_all_deps }
    it { should contain_class('issue') }

    it {
      should contain_file('issue').with({
        'ensure'  => 'file',
        'path'    => '/etc/issue',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
        'content' => nil,
      })
    }
  end

  describe 'with invalid path' do

    ['issue'].each do |resource|  ## This allows us to be expandable later

      context "specified for #{resource}_file" do

        let (:params) {{ :"#{resource}_file" => 'invalid/path' }}

        it 'should fail' do
          expext {
            should contain_class('issue')
          }.to raise_error(Puppet::Error)
        end
      end
    end
  end
end
