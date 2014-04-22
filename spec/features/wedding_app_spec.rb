require 'spec_helper'

feature 'welcome page' do
  scenario 'allows user to register' do

    visit '/'

    click_on 'Register'

    fill_in 'user_name', with: "Ellie"
    click_on 'Submit'

    save_and_open_page

    expect(page).to have_content "Welcome, Ellie!"

  end
end