require_relative "../src/same_arrays"

RSpec.describe "should solve same arrays" do

    it "should return true for two empty arrays" do
        expect(ArrayCompare.same?([], [])).to be true
    end

    it "should return false for two arrays with different numbers" do
        expect(ArrayCompare.same?([2], [5])).to be false
    end

    it "should return false for two arrays with different amounts" do
        expect(ArrayCompare.same?([2], [2, 6])).to be false 
    end

    it "should return false for two arrays with multiple different numbers" do
        expect(ArrayCompare.same?([2, 4], [2, 5])).to be false
    end

    it "should return true for two nested arrays with the same numbers" do
        expect(ArrayCompare.same?([[3], [4]], [[3], [4]])).to be true
    end

    it "should return false for two nested arrays with multiple different numbers" do
        expect(ArrayCompare.same?([[2], [4]], [[2], [5]])).to be false
    end

end