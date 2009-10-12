require File.join(File.dirname(__FILE__), "/../spec_helper")

describe Array do
  it "should be able to determine its dimensions" do
    [1,2,3].dimensions.should eql(1)
    [[1,2,3], [1,2,3]].dimensions.should eql(2)
    [[[1,2,3], [1,2,3]], [[1,2,3], [1,2,3], [[1,2,3], [1,2,3]]]].dimensions.should eql(3)
  end
  
  it "should depend on the first element to determine dimensions" do
    [1, [1,2]].dimensions.should eql(1)
  end
  
  it "should shuffle" do
    a = [1,2,3,4,5,6,7,8,9,0]
    a.shuffle.should_not == a
  end
end