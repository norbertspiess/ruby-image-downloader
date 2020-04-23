require_relative '../../lib/helper/files_folders'

describe FilesFolders do

  context ".read_unique_lines" do
    it 'should return lines of given file' do
      lines = FilesFolders.read_unique_non_empty_lines 'spec/helper/duplicate.txt'
      expect(lines).to include("duplicate")
    end

    it 'should remove duplicate lines' do
      lines = FilesFolders.read_unique_non_empty_lines 'spec/helper/duplicate.txt'
      expect(lines).to contain_exactly("duplicate")
    end

    it 'should ignore empty lines' do
      lines = FilesFolders.read_unique_non_empty_lines 'spec/helper/empty_lines.txt'
      expect(lines).to contain_exactly("value")
    end

  end
end
