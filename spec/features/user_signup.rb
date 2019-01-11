require 'rails_helper'

feature "Signup" do
    scenario "When a user signs up" do
      visit "/"
      click_on "Sign up"
      expect(page).to have_text("Signup page")


      fill_in "Email", :with => "bob@bob.com"
      fill_in "Password", :with => "bob"


      click_button "Save User"
      
      page.html

      expect(page).to have_text("Instagaram")


    end
end