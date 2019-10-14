require 'rails_helper'

describe "User Search For Members" do
  it "When I visit '/' And I Select 'Griffindor' from the select field
  (Note: Use the existing select field) Then I should be on page '/search'" do

    visit "/"

    click_on "Griffindor"

    click_on "Search For Members"

    expect(current_path).to eq("/search")
    expect(page).to have_content("Total members: 21")

    within "#character-#{character.id}" do
      expect(page).to have_content(character.name)
      expect(page).to have_content(character.house)
    end

  end
end
