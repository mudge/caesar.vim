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
end
