require 'spec_helper'

describe 'phpmemcachedadmin', :type => :class do

    context "RedHat architecture" do
        let :facts do
            {
                :osfamily               => 'RedHat',
                :operatingsystemrelease => '6',
            }
        end

        it { should contain_package('phpMemcachedAdmin').with(
            'ensure' => 'installed',
            'name'   => 'phpMemcachedAdmin',
          )
        }

        it do 
          should contain_file('/etc/phpMemcachedAdmin/Memcache.php').with(
            'ensure'  => 'file',
            'owner'   => 'root',
            'group'   => 'root',
            'mode'    => '0644'
          )
          should contain_file('/etc/phpMemcachedAdmin/Memcache.php').with_content(/'hostname' => '127\.0\.0\.1',/)
      end

     end

     context "Debian architecture" do
        let :facts do
            {
                :osfamily               => 'Debian',
                :operatingsystemrelease => '6',
            }
        end

    end
 end
 