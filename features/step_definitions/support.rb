require 'appscript'
World(Appscript)

Before do
  @a = app("Virtual ][").machines[0]
end

AfterStep do |scenario|
  sleep 0.5
end
