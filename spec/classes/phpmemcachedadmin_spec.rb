require 'spec_helper'

describe 'phpmemcachedadmin', :type => :class do

  context "RedHat architecture" do
    let :facts do
      {
        :osfamily     => 'RedHat',
      }
    end

    it { should contain_package('phpMemcachedAdmin').with(
      'name' => 'phpMemcachedAdmin'
      )
    }

    it do
     should contain_file("/etc/phpMemcachedAdmin/Memcache.php").with_content(/'hostname' => '127\.0\.0\.1',/)
   end

  end
 end
