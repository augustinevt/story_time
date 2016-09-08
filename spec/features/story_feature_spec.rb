require 'rails_helper'

describe 'the story feature' do

  it 'should allow user to add a new story' do
    visit stories_path
    click_on 'Add New Story'
    fill_in 'Title', with: 'August\'s Biking Adventures'
    fill_in 'Creator', with: 'Beetle the Bard'
    click_on 'Create Story'
    expect(page).to have_content('August\'s Biking Adventures')
  end

end
