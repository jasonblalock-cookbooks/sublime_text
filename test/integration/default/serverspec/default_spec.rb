require 'spec_helper'

describe 'sublime_text::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('sublime-text-installer') do
    it { should be_installed }
  end
end
