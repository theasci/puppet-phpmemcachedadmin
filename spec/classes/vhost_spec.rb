require 'spec_helper'

describe 'phpmemcachedadmin::vhost', :type => :class do

    context "RedHat architecture" do
        let :facts do
            {
                :osfamily               => 'RedHat',
                :operatingsystemrelease => '6'
            }
        end

        it do 
          should contain_file('/etc/httpd/conf.d/phpMemcachedAdmin.conf').with(
            'ensure'  => 'file',
            'owner'   => 'root',
            'group'   => 'root',
            'mode'    => '0644'
          )
          should contain_file('/etc/httpd/conf.d/phpMemcachedAdmin.conf').with_content(/Allow from 127\.0\.0\.1/)
      end

     end

     context "Debian architecture" do
        let :facts do
            {
                :osfamily               => 'Debian',
                :operatingsystemrelease => '6'
            }
        end

    end
 end
 