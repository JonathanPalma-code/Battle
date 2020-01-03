feature 'Game Over' do
  context 'When player 2 reaches 0 HP' do
    before do
      sign_in
      18.times { attack }
    end

    scenario 'Player 2 loses' do
      click_on 'Attack'
      expect(page).to have_content('Jean loses!')
    end
  end
end