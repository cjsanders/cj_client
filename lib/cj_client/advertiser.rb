module CjClient
  class Advertiser
    include HTTParty

    base_uri 'https://advertiser-lookup.api.cj.com'

    def initialize developer_key
      self.class.headers 'authorization' => developer_key
    end

    def lookup params={}
      @response = self.class.get('/v3/advertiser-lookup', :query => params)['cj_api']['advertisers']
    end

    def advertisers
      @response['advertiser']
    end

    def method_missing(name, *args, &block)
      @response.has_key?(name.to_s) ? @response[name.to_s] : super
    end

  end
end