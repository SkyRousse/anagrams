require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the make change path',  {:type => :feature}) do
  it('fills in the input fields and returns the minimum number of coins used and coins still available') do
    visit('/')
    fill_in('target_word', :with => 'nameless')
    fill_in('word_argument', :with => 'salesmen')
    click_button('Submit')
    expect(page).to have_content('salesmen is an anagram of nameless')
  end
  it('fills in the input fields and returns the minimum number of coins used and coins still available') do
    visit('/')
    fill_in('target_word', :with => 'roasting')
    fill_in('word_argument', :with => 'toasting')
    click_button('Submit')
    expect(page).to have_content('toasting is not an anagram of roasting')
  end
end
