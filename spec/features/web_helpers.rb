def sign_in
  visit('/')
  fill_in :player1, with: "Jonathan"
  fill_in :player2, with: "Jean"
  click_on("submit")
end