require 'rspec'
require 'hex_rgb'

describe 'hex_rgb' do
  describe 'break_apart' do
    it "takes an input and builds a hash with arrays as values for r, g, and b" do
      expect(break_apart("f1553a")).to include(:r => ["f","1"])
      expect(break_apart("f1553a")).to include(:g => ["5","5"])
      expect(break_apart("f1553a")).to include(:b => ["3","a"])
    end
  end
  describe 'convert_to_rgb' do
    it "takes output of break_apart and builds a hash of r, g, b values" do
      expect(convert_to_rgb({:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]})).to include(:r => 241)
      expect(convert_to_rgb({:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]})).to include(:g => 85)
      expect(convert_to_rgb({:r => ["f","1"], :g => ["5","5"], :b => ["3","a"]})).to include(:b => 58)
    end
  end
  describe 'interpret' do
    it "takes the rgb_hash as an input and turns it into a string that displays in the UI" do
      expect(interpret({:r=>241.0, :g=>85.0, :b=>58.0})).to eq "R: 241, G: 85, B: 58"
    end
  end
end