require_relative '../../lib/helper/download'
require 'fakefs'

describe Download do
  before do
    FakeFS.activate!
  end

  after do
    FakeFS.deactivate!
  end

  describe ".single_download" do
    # hm...
    # played around with double(), expect and more.
    # Couldn't get it to work to mock the file open() nor the url open().
  end
end
