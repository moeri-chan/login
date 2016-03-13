require 'spec_helper'

describe "Users" do
  describe "GET /" do
    it "should display a login page" do
      visit root_path
      expect(page).to have_content 'Log in' 
    end
  end
end
