feature 'Confirms an attack' do
  scenario 'confirm an attack from player 1 to player 2' do
    sign_in
    click_on 'Attack'
    expect(page).to have_content("Jonathan attacked Jean")
  end

  scenario 'reduces player 2 s hp by 10' do
    sign_in
    click_on 'Attack'
    expect(page).to_not have_content("Jean: 100 HP")
    expect(page).to have_content("Jean: 90 HP")
    click_on 'Ok'
  end

end
