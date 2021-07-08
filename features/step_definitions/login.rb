Given /the following users exist/ do |user_table|
  user_table.hashes.each do |user|
   User.create(username: user["username"], password: user["password"], emailID: user["emailID"])
  end
end
   
Then("I should see {string}") do |string|
  if page.respond_to? :should
    page.should have_content(string)
  else
    assert page.has_content?(string)
  end
end

#And ("I fill in {string} with {value}") do |field, value|
 # page.fill_in 'emailID', :with => field
#  page.fill_in 'password', :with => value
#end


And ("I signin with invalid account") do
  #page.fill_in "email", :with => "jstone1@binghamton.edu"
end

#When ("I login with facebook") do
#  visit "/dashboard/index"
#end

