require 'httparty'

Dir[File.dirname(__FILE__) + '/cj_client/*.rb'].each do |file|
  require file
end

module CjClient
  attr_accessor :developer_key

  def self.developer_key=(developer_key)
    @@developer_key = developer_key
  end

  def self.developer_key
    @@developer_key
  end

  def self.configure
    yield self
  end
end