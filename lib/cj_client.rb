require "httparty"
Dir[File.dirname(__FILE__) + '/cj_client/*.rb'].each do |file|
  require file
end