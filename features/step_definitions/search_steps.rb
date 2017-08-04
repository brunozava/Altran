Given(/^Access google page$/) do
  searchPage.load
end

Given(/^I have to do a search by "([^"]*)" in google page$/) do |search_input|
  @input = search_input
end

When(/^I do a search$/) do
  searchPage.do_search(@input)
end

Then(/^"([^"]*)" should be displayed in google search results$/) do |page_link|
  expect(page).to have_content page_link
end

When(/^I click on Altran portugal webpage link in google search results$/) do
   searchPage.acess_url
end

Then(/^I should be redirected to "([^"]*)"$/) do |result_page|
  expected_url = page.current_url
   expect(expected_url).to eql result_page
end