feature 'Can read Hello world' do
  scenario 'can run the page and check its content' do
    visit('/')
    expect(page).to have_content("Hello World")
  end
end