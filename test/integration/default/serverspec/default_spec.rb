require 'spec_helper'

describe 'sublime_text::default' do
  describe package('sublime-text-installer') do
    it 'is installed' do
      expect(subject).to be_installed
    end
  end
end
