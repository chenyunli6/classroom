require 'rails_helper'

describe "user sign in", :type => :feature do

  before :each do
    User.create(:email => 'user@example.com', :password => 'password')
  end


  # it 'sign_in the user' do
  #
  #   new_session_page.sign_in 'user@example.com', 'password'
  #   expect(page).to have_content 'user@example.com'
  # end

  scenario "good credentials" do
    new_session_page.sign_in 'user@example.com', 'password'
    expect(page).to have_content 'user@example.com'
  end

  scenario "bad credentials" do
    new_session_page.sign_in 'XXX@example.com', 'password'
    expect(page).not_to have_content 'user@example.com'
  end

end


private

def home_page
  PageObjects::Pages::Home.new
end

def new_session_page
  home_page.go
  navbar.sign_in
end

def navbar
   PageObjects::Application::Navbar.new
end
