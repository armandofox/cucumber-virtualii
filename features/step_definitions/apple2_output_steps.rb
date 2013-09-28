# Examining text output

Then /^I should see ["'](.*)['"]$/ do |string|
  @apple2.screen_text.content.get.should include(string)
end
