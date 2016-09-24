require_relative "../base"

module PageObjects
  module Application
    class Navbar < Base
      def sign_in
        click_on "Login"
        PageObjects::Devise::Sessions::New.new
      end


    end
  end
end
