# Booting, etc

Given /^I boot the Apple II into BASIC$/ do
  @a.reset
end

Given /^there is no current BASIC program$/ do
  step 'I boot the Apple II into BASIC'
  step 'I type "NEW"'
end

# Entering text

When /^I clear the screen$/ do
  @a.type_text "HOME"
end

When /^I type ["'](.*)['"]$/ do |line|
  @a.type_text(line + "\n")
end

When /^I enter the following program/ do |lines|
  lines.hashes.each { |l|  @a.type_text l['lines']  }
end
