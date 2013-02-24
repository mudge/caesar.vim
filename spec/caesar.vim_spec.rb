require "vimrunner_helper"

describe "caesar.vim" do
  before(:all) do
    vim.add_plugin(File.expand_path("../..", __FILE__), "plugin/caesar.vim")
  end

  describe "<C-R> mapping", :filesystem => true do
    it "converts the number under the cursor to Roman numerals" do
      vim.edit("roman.txt")
      vim.insert("19")
      vim.normal
      vim.feedkeys('\<C-R>')
      vim.write

      expect(File.read("roman.txt").chomp).to eq("XIX")
    end
  end

  describe "caesar#ToRoman()" do
    it "converts 1 to I" do
      expect(vim.echo("caesar#ToRoman(1)")).to eq("I")
    end

    it "converts 2 to II" do
      expect(vim.echo("caesar#ToRoman(2)")).to eq("II")
    end

    it "converts 6 to VI" do
      expect(vim.echo("caesar#ToRoman(6)")).to eq("VI")
    end

    it "converts 19 to XIX" do
      expect(vim.echo("caesar#ToRoman(19)")).to eq("XIX")
    end

    it "converts 3994 to MMMCMXCIV" do
      expect(vim.echo("caesar#ToRoman(3994)")).to eq("MMMCMXCIV")
    end
  end
end
