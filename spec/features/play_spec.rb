feature 'Can see the Hit Points of player 2' do
  scenario '' do
    sign_in
    expect(page).to have_content("Jean: 100 HP")
  end
end