feature 'Adding a new bookmark' do
  scenario 'user can add a book mark to the bookmark manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    click_button 'Submit'

    expect(page).to have_content 'http://example.org'
  end
end
