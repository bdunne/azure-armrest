########################################################################
# armest_module_spec.rb
#
# Test suite for the base Azure::ArmRest module.
########################################################################
require 'azure/armrest'
require 'rspec/autorun'

describe "ArmRest" do
  context "module" do
    it "is a module, not a class" do
      Azure::ArmRest.should be_a_kind_of(Module)
    end
  end

  context "constants" do
    it "defines the COMMON_URI constant" do
      Azure::ArmRest::COMMON_URI.should_not be_nil
      Azure::ArmRest::COMMON_URI.should be_a_kind_of(String)
      Azure::ArmRest::COMMON_URI.should eql("https://management.azure.com/subscriptions")
    end
  end
end
