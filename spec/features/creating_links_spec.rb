# As a time-pressed user
# So that I can save a website
# I would like to add the site's address and title to my bookmark manager

feature 'Creating links' do
  scenario 'can add links using a form' do
    visit '/links/new'
    fill_in('title', with: 'Yahoo')
    fill_in('url', with: 'http://www.yahoo.com')
    click_button('Submit')
    within 'ul#links' do
      expect(page).to have_content('Yahoo')
    end
  end
end
