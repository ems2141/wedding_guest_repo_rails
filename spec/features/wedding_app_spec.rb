require 'spec_helper'

feature 'welcome page' do
  scenario 'allows user to register' do

    visit '/'

    click_on 'Add Guest'

    fill_in 'user_name', with: "Ellie"
    click_on 'Submit'

    expect(page).to have_content "Name: Ellie"
save_and_open_page
    click_on 'Add Guest'

    fill_in 'user_name', with: "Sarah"
    click_on 'Submit'

    expect(page).to have_content "Name: Ellie"
    expect(page).to have_content "Name: Sarah"

  end
end