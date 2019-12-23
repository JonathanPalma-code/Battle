feature 'Can see the Hit Points of player 2' do
  scenario '' do
    visit('/')
    fill_in :player1, with: "Jonathan"
    fill_in :player2, with: "Jean"
    click_on("submit")
    expect(page).to have_content("Jean: 100 HP")
  end
end