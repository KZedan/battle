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

  feature 'attacks a player' do
    scenario 'it attacks a player' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content "Dave attacked Mittens"
    end
  end

feature 'deducts points' do
  scenario 'reduces players HP' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content "Mittens: 50HP"
    expect(page).not_to have_content "Mittens: 60HP"
  end
end
