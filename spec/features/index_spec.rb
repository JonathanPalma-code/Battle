feature 'Can insert players' do
  scenario 'can run the page and check its content' do
    visit('/')
    fill_in :player1, with: "Jonathan"
    fill_in :player2, with: "Jean"
    click_on("submit")
    expect(page).to have_content("Jonathan VS Jean")
  end
end