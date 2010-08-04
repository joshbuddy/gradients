require 'spec_helper'
describe "Gradients" do
  context "should calculate a gradient of two colors" do
    before(:each) do
      @gradient = Gradients.new('#000000', '#ffffff')
    end
    
    it "should find the half way point" do
      @gradient.at(0.5).to_s.should == '808080'
    end
    
    it "should find the beginning" do
      @gradient.at(0.0).to_s.should == '000000'
    end
  
    it "should find the end" do
      @gradient.at(1.0).to_s.should == 'ffffff'
    end
  
    it "should find an arbitrary position" do
      @gradient.at(0.76).to_s.should == 'c2c2c2'
    end
  end
  
  context "should calculate a gradient of two weird colors" do
    before(:each) do
      @gradient = Gradients.new('#f56510', '#a09981')
    end
    
    it "should find the half way point" do
      @gradient.at(0.5).to_s.should == 'cb7f49'
    end
    
    it "should find the beginning" do
      @gradient.at(0.0).to_s.should == 'f56510'
    end
  
    it "should find the end" do
      @gradient.at(1.0).to_s.should == 'a09981'
    end
  
    it "should find an arbitrary position" do
      @gradient.at(0.76).to_s.should == 'b48d66'
    end
  end

  context "should calculate a gradient of three weird colors" do
    before(:each) do
      @gradient = Gradients.new('#f56510', '#a09981', '#000000')
    end
    
    it "should find the half way point" do
      @gradient.at(0.5).to_s.should == 'a09981'
    end
    
    it "should find the beginning" do
      @gradient.at(0.0).to_s.should == 'f56510'
    end

    it "should find the end" do
      @gradient.at(1.0).to_s.should == '000000'
    end

    it "should find an arbitrary position" do
      @gradient.at(0.76).to_s.should == '4d493e'
    end
  end

end
