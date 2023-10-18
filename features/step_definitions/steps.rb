

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

And('i fill the Price min with {int} and Price max with {int}') do |int, int2|
  fill_in("minprice", with: int)
  fill_in("maxprice", with: int2)
  fill_in("minf", with: 1)
  fill_in("maxtime", with: 30)
  find('select#sort_order').find('option[value=""]').select_option
end

And ('I press cerca button') do 
  within('form[action="/pages/search"]') do  
    click_button("commit")
  end
puts current_path
end

Then('I should be on {string}') do |string|
   # Write code here that turns the phrase above into concrete actions
end

And ('I should see some results ordered by price') do
  pending # Write code here that turns the phrase above into concrete actions
end



Then('I should receive some results') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I Click on Save button') do
  pending # Write code here that turns the phrase above into concrete actions
end

When('I press Save button') do
  pending # Write code here that turns the phrase above into concrete actions
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


