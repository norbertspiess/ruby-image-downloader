require_relative '../../lib/helper/downloader'
require 'fakefs'

describe Downloader do
  before do
    FakeFS.activate!
  end

  after do
    FakeFS.deactivate!
  end

  describe ".single_download" do
    # hm...
  end
end
