require_relative '../spec_helper'

describe CjClient do
  describe ".configure" do
    it "must set the developer key" do
      CjClient.configure do |config|
        config.developer_key = "123456"
      end
      CjClient.developer_key.must_equal "123456"
    end
  end
end