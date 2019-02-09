require "spec_helper"
require "sum"

RSpec.describe Sum do
  describe ".hello" do
    it "'Hello'と返す" do
      expect(Sum.hello).to eq("Hello")
    end
  end
  describe ".add(a,b)" do
    context "a=3,b=5の時" do
      it "8を返す" do
        result = Sum.add(3,5)
        expect(result).to eq(8)
      end
    end
    context "a=10,b=100の時" do
      it "110を返す" do
        expect(Sum.add(10,100)).to eq(110)
      end
    end
    context "a=7,b=7の時" do
      it "14を返す" do
        expect(Sum.add(7,7)).to eq(14)
      end
    end
  end
end