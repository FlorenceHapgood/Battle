feature 'Attack_Player' do
  scenario "Attacks player_2 and gets confirmation" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Florence attacked Emma")
  end

  scenario "The attack reduces player_2's health points by 10" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content("Emma's health was reduced by 10 points")
    expect(page).to have_content("Emma hitpoints: 50")

  end


end
