require 'spec_helper'

describe 'phpmyadmin', :type => :class do

  context "RedHat architecture" do
    let :facts do
      {
        :osfamily     => 'RedHat',
      }
    end

    it { should contain_package('phpMyAdmin').with(
      'name' => 'phpmyadmin'
      )
    }

    context "default host" do
      it { should contain_file("/etc/phpMyAdmin/config.inc.php").with_content %r{^\$cfg\['Servers'\]\[\$i\]\['host'\] = localhost} }            
    end

  end
 end