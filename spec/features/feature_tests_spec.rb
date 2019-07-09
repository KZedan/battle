feature 'enter names' do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content "Dave vs. Mittens"
  end
end

feature 'check points' do
  scenario 'checking points of player 2' do
    sign_in_and_play
    expect(page).to have_content "Mittens: 60HP"
  end
end
