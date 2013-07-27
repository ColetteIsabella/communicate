require "spec_helper"

feature "Creating Question" do
  scenario "can create a question" do
    visit '/'
    click_link "New Question"
    fill_in("Question", with: "What is the air speed of an unladen swallow?")
    fill_in("Question Seeker", with: "Bridge Keeper")
    click_button "Submit"
    page.should have_content("What is the air speed of an unladen swallow?")
    page.should have_content("Bridge Keeper")
    page.should have_content("Successfully created.")
  end

  scenario "cannot create a question without a question filled in" do
    visit '/'
    click_link "New Question"
    click_button "Submit"
    page.should have_content("Question can't be blank")
  end
end
