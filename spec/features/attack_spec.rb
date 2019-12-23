feature 'Confirms an attack' do
  scenario 'confirm an attack from player 1 to player 2' do
    sign_in
    click_on 'Attack'
    expect(page).to have_content("Jonathan attacked Jean")
  end
end