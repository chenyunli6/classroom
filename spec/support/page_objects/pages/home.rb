require_relative "../base"

module PageObjects
  module Pages
    class Home < Base
      def go
        visit "/"
        self
      end

      def add_course
        click_on "New course"
        PageObjects::Courses::Form.new
      end
    end
  end
end
