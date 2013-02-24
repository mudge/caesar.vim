require "vimrunner"
require "vimrunner/testing"

module Vimrunner

  # Create a global Vim server instance to be re-used across examples.
  class << self
    attr_accessor :instance
  end

  module Testing

    # Lazily start a global Vim server.
    def vim
      Vimrunner.instance ||= Vimrunner.start
    end
  end
end

RSpec.configure do |config|
  config.include(Vimrunner::Testing)

  config.after(:suite) do
    Vimrunner.instance.kill
  end

  config.around(:each, :filesystem => true) do |example|
    tmpdir(vim) do
      example.run
    end
  end
end
