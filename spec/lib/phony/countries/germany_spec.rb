require 'spec_helper'

describe Phony::Countries::Germany do
  
  before(:each) do
    @germany = Phony::Countries::Germany
  end
  
  # Note: Many Specs
  #
  describe "split" do
    it "should handle Berlin" do
      @germany.split('3038625454').should == ['30', '386', '25454']
    end
    it "should handle Cologne" do
      @germany.split('22137683323').should == ['221', '376', '83323']
    end
    it "should handle Freiburg im Breisgau" do
      @germany.split('7614767676').should == ['761', '476', '7676']
    end
    it "should handle Nettetal-Lobberich" do
      @germany.split('21535100').should == ['2153', '510', '0']
    end
    it "should handle Geithain" do
      @germany.split('3434144602').should == ['34341', '446', '02']
    end
    it "should handle service numbers with 180 [regression]" do
      @germany.split('1805878323').should == ['180', '587', '8323']
    end
    it "should handle service numbers with 181 [regression]" do
      @germany.split('1815878323').should == ['181', '587', '8323']
    end
  end
  
end