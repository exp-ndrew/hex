require 'rspec'
require 'hex_rgb'

describe 'hex_rgb' do
  describe 'break_into_colors' do
    it "takes an input and builds a hash with arrays as values for r, g, and b" do
      expect(break_into_colors("f1553a")).to include(:r => ["f","1"])
      expect(break_into_colors("f1553a")).to include(:g => ["5","5"])
      expect(break_into_colors("f1553a")).to include(:b => ["3","a"])
    end
  end
  describe 'convert_to_base10' do
    it "takes output of break_into_colors and builds a hash of r, g, b values" do
      expect hex_rgb("f1553a").to eq "255,0,0"
    end
  end
end