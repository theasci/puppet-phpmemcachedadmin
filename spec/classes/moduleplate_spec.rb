require 'spec_helper'

describe 'moduleplate', :type => :class do

    context "RedHat architecture" do
        let :facts do
            {
                :osfamily               => 'RedHat',
                :operatingsystemrelease => '6',
            }
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