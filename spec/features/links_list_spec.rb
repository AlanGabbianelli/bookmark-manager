feature 'List of links' do
  scenario 'has a list of links on the homepage' do
    Link.create(url: 'http://www.google.com', title: 'Google')
    visit '/links'
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
