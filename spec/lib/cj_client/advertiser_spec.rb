require_relative '../../spec_helper'

describe CjClient::Advertiser do

  describe "default attributes" do

    it "must include httparty methods" do
      CjClient::Advertiser.must_include HTTParty
    end

    it "must have the base url set to the CJ Advertiser endpoint" do
      CjClient::Advertiser.base_uri.must_equal 'https://advertiser-lookup.api.cj.com'
    end

  end

  describe "initialize object" do

    it "must have developer key" do
      lambda { CjClient::Advertiser.new }.must_raise ArgumentError
    end

  end

  describe "GET lookup" do

    let(:cj) { CjClient::Advertiser.new "XXXXXX" }

    before do
      VCR.insert_cassette 'cj', :record => :new_episodes
    end

    after do
      VCR.eject_cassette
    end

    it "must have a lookup method" do
      cj.must_respond_to :lookup
    end

    it "must parse the api response from XML to Hash" do
      cj.lookup(:'advertiser-ids' => :joined).must_be_instance_of Hash
    end

    it "must perform the request and get the data" do
      response = cj.lookup :'advertiser-ids' => :joined
    end

    describe "dynamic attributes" do

      before do
        cj.lookup(:'advertiser-ids' => :joined)
      end

      it "must return the attribute value if present in lookup" do
        cj.total_matched.must_equal "1017"
        cj.records_returned.must_equal "25"
        cj.page_number.must_equal "1"
      end

      it "must raise method missing if attribute is not present" do
        lambda { cj.foo_attribute }.must_raise NoMethodError
      end

    end
  end
end