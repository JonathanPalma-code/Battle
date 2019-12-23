feature 'Can insert players' do
  scenario 'can run the page and check its content' do
    sign_in
    expect(page).to have_content("Jonathan VS Jean")
  end
end