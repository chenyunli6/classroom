module WardenBackdoor
  include Warden::Test::Helpers

  def sign_in(user = nil)
    user ||= create(:user)
    login_as user
    user
  end
end

RSpec.configure do |config|
  config.include WardenBackdoor, type: :feature

  config.before(:suite) do
    Warden.test_mode!
  end

  config.after(type: feature) do
    Warden.test_reset!
  end
end
