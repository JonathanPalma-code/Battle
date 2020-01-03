feature 'Confirms an attack' do
  scenario 'confirm an attack from player 1 to player 2' do
    sign_in
    click_on 'Attack'
    expect(page).to have_content("Jonathan attacked Jean")
    click_on 'Ok'
  end

  scenario 'reduces player 2 s hp by 10' do
    sign_in
    click_on 'Attack'
    expect(page).to_not have_content("Jean: 100 HP")
    expect(page).to have_content("Jean: 90 HP")
    click_on 'Ok'
  end

  scenario 'be attacked by Player 2' do
    sign_in
    attack
    click_on 'Attack'
    expect(page).to have_content("Jean attacked Jonathan")
  end
  
  scenario 'reduce Player 1 HP by 10' do
    sign_in
    2.times { attack }
    expect(page).not_to have_content('Jonathan: 100 HP')
    expect(page).to have_content('Jonathan: 90 HP')
  end
end
