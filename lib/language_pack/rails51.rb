require 'securerandom'
require "language_pack"
require "language_pack/rails5"

class LanguagePack::Rails51 < LanguagePack::Rails5
  # @return [Boolean] true if it's a Rails 5.1.x app
  def self.use?
    instrument "rails51.use" do
      rails_version = bundler.gem_version('railties')
      return false unless rails_version
      is_rails = rails_version >= Gem::Version.new('5.1.x')
      return is_rails
    end
  end
end
