require 'spec_helper'

describe 'moduleplate', :type => :class do

    context "RedHat architecture" do
        let :facts do
            {
                :osfamily     => 'RedHat',
            }
        end

     end

     context "Debian architecture" do
        let :facts do
            {
                :osfamily     => 'Debian',
            }
        end

    end
 end