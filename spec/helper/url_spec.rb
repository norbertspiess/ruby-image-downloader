require_relative '../../lib/helper/url.rb'
describe Url do
  context "given valid url" do
    it 'should return true' do
      valid = Url.valid?("http://example.com")
      expect(valid).to be true
    end
  end

  context "given invalid url" do
    it 'should return false on missing host' do
      valid = Url.valid?("http://.com")
      expect(valid).to be false
    end
    it 'should return false on just schema' do
      valid = Url.valid?("http://")
      expect(valid).to be false
    end
    it 'should return false on host but not domain' do
      valid = Url.valid?("http://example")
      expect(valid).to be false
    end
  end
end
