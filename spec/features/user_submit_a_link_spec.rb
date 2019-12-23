require 'rails_helper'

RSpec.feature "User Submit A Links", type: :feature do
  # As a user
  # When I visit the home page
  # And I click "Submit a link post"
  # And I fill in my title and URL
  # And I click "Submit"
  # Then I should see the title on the page
  # And it should link to the given URL

  scenario "they see the page for the submitted link" do
    link_title = "This Testing Rails book is awesome!"
    link_url = "http://testingrailsbook.com"

    visit root_path
    click_on "Submit a new link"
    fill_in "link_title", with: link_title
    fill_in "link_url", with: link_url
    click_on "Submit!"

    expect(page).to have_link link_title, href: link_url
  end
end
