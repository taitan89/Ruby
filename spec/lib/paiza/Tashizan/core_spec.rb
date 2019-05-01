require "spec_helper"
require "paiza/Tashizan/core"

RSpec.describe "Tashizanのcore" do
  describe "sum(a,b)" do
    context "a=3,b=5の時" do
      it "8を返す" do
        result = sum(3,5)
        expect(result).to eq(8)
      end
    end
    context "a=10,b=100の時" do
      it "110を返す" do
        expect(sum(10,100)).to eq(110)
      end
    end
    context "a=7,b=7の時" do
      it "14を返す" do
        expect(sum(7,7)).to eq(14)
      end
    end
  end
end