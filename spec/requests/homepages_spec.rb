require 'spec_helper'

describe "Homepages" do
  describe "index" do
    it "should have content 'Guest Book'" do
    	visit '/homepage/index'
    	expect(page).to have_content('Guest Book')
    end
  end
end
