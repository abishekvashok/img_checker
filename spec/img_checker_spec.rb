# Rsepc tests for img_checker ruby gem

require 'img_checker/img_checker.rb'
require 'helper.rb'

RSpec.describe ImgChecker, "This should check for images when the config file is parsed" do
  context "and checks the image dimensions" do
    it "and handles errors as well" do
      CONFIG_FILE = './img_config.yml'.freeze
      if File.exist?(CONFIG_FILE)
        require_relative '../lib/img_checker/img_checker.rb'
        checker = ImgChecker.new CONFIG_FILE
        checker.ok?
      else
        abort 'Critical Error: img_config.yml not found. Please add to the current directory.' # rubocop: disable Metrics/LineLength
      end
    end
  end
end
