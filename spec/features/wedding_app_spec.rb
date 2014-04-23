require 'spec_helper'

feature 'welcome page' do
  scenario 'allows user to register' do

    visit '/'

    click_on 'Add Guest'

    fill_in 'user_name', with: "Ellie"
    click_on 'Submit'

    expect(page).to have_content "Name: Ellie"
    click_on 'Add Guest'

    fill_in 'user_name', with: "Sarah"
    click_on 'Submit'

    expect(page).to have_content "Name: Ellie"
    expect(page).to have_content "Name: Sarah"
  end

  scenario 'allow user to update guest name' do
    visit '/'

    click_on 'Add Guest'

    fill_in 'user_name', with: "Kaylee"
    click_on 'Submit'

    expect(page).to have_content "Name: Kaylee"
    click_on 'Edit'
    fill_in 'update_name', with: "Rachael"
    click_on 'Submit'

    expect(page).to have_content "Name: Rachael"
  end

  scenario 'allow user to delete a guest name' do
    visit '/'

    click_on 'Add Guest'

    fill_in 'user_name', with: "Kaylee"
    click_on 'Submit'

    expect(page).to have_content "Name: Kaylee"
    click_on 'Delete'

    expect(page).to have_no_content "Name: Kaylee"

  end
end