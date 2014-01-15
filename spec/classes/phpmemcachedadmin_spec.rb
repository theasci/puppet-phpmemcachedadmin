require 'spec_helper'

describe 'phpmemcachedadmin', :type => :class do

  context "RedHat architecture" do
    let :facts do
      {
        :osfamily     => 'RedHat',
      }
    end

    it { should compile }

    it { should contain_package('phpMemcachedAdmin').with(
      'name' => 'phpMemcachedAdmin'
      )
    }

    context "default host" do
      it { should contain_file("/etc/phpMemcachedAdmin/Memcache.php") }            
    end

  end
 end
