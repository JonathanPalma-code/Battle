feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in
      expect(page).to have_content "Jonathan's turn."
    end

    scenario 'after player 1 attacks' do
      sign_in
      click_on 'Attack'
      click_on 'Ok'
      expect(page).not_to have_content "Jonathan's turn."
      expect(page).to have_content "Jean's turn."
    end
  end
end