# Rsepc tests for img_checker ruby gem
require 'img_checker/iimg_checker.rb'

Rspec.describe ImgChecker, "This should check for images when the config file is parsed"
  context "and checks the image dimensions"
    it "and handles errors as well"
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
