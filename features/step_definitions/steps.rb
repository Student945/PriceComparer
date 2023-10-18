

Given('I am a registered User') do
  @user=FactoryBot.create(:user)
end

And  ("I am on the Sign in Page") do
  visit "http://127.0.0.1:3000/users/sign_in"
end

When('I insert email email and password') do
  fill_in("user_email", with: @user.email)
  fill_in("user_password", with: @user.password)
end

When('I click button {string}') do |string|
  click_button(string)
end

Then('I am redirected to Home Page') do
  expect(current_path).to eq(root_path)
end

Given("I am on the Home Page") do
  visit "http://127.0.0.1:3000/"
end

When('I fill the keyword space with {string}') do |string|
  fill_in("keyword", with: string)
end


And ('I select the option filter {string}') do |string|
  select(string, from: "sort_order")
end

And('i fill the Price min with {int} and Price max with {int}') do |int, int2|
  fill_in("minprice", with: int)
  fill_in("maxprice", with: int2)
  fill_in("minf", with: 1)
  fill_in("maxtime", with: 30)
end



And ('I press cerca button') do 
    click_button("commit")
end

Then('I should be on {string}') do |string|
  expect(page).to have_current_path(string)
end

And ('I should see some results with name {string} in it') do |string|
  elementi=all("div."+"result-item")
  regex=/#{Regexp.quote(string)}/i
  elementi.each do |element|
    expect(element.text).to match(regex)
  end
end

And ('the results should be ordere by price') do
  @elementi=all("div."+"result-item").map do |element|
    text=element.text
    prezzo=text.match(/Prezzo:(\d+)USD/)
    prezzo ? prezzo[1].to_i : nil
  end
    @elementi.compact! 
    expect(@elementi).to match(@elementi.sort)
  end

  Given('I am on the Search Page') do
    visit "http://127.0.0.1:3000/pages/search?keyword=car&minprice=15&maxprice=50&minf=1&place=&maxtime=30&commit=Cerca&sort_order=PricePlusShippingLowest"
  end
  

When('I Click on Save button') do
  elementi=all("div."+"result-item")
  secondo=nil
  elementi.each do |element|
    if element.text=="Salva"
      if secondo==

  
end

When('I am redirected to a {string}') do |string|
  expect(page).to match(string)
end

Then('i should see the saved research') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I click on Review button') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I fill the form') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I press the submit button') do
  pending # Write code here that turns the phrase above into concrete actions
end

Then('i should see the Review') do
  pending # Write code here that turns the phrase above into concrete actions
end


