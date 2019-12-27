feature 'Can see the Hit Points' do
  scenario 'Player 2 HP' do
    sign_in
    expect(page).to have_content("Jean: 100 HP")
  end

  scenario 'Player 1 HP' do
    sign_in
    expect(page).to have_content("Jonathan: 100 HP")
  end
end