# Examining text output

Then /^I should see ["'](.*)['"]$/ do |string|
  @a.screen_text.content.get.should include(string)
end
