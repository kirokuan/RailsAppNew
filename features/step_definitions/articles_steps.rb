Given(/^a new article titled "([^"]*)" and text is "([^"]*)"$/) do |title, text|
  visit '/articles/new'
  fill_in('article_title', with: title)
  fill_in('article_text', with: text)
  @article = Article.new(title: title, text: text)
end

When(/^I save the article$/) do
  click_button 'Create Article'
end

Then(/^I should see the article in the listing$/) do
  visit '/articles'
  expect(page).to have_content @article.title
  expect(page).to have_content @article.text
end
