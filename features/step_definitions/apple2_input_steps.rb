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
  @a.type_line "HOME"
end

When /^I type ["'](.*)['"]$/ do |line|
  @a.type_line(line)
end

When /^I enter the following program/ do |lines|
  lines.hashes.each { |l|  @a.type_line l['lines']  }
end
