Gegebensei(/^, dass die Startseite aufgerufen ist$/) do
  puts "************************"
  puts $startseite
  puts "************************"
end

Wenn(/^ich in den Suchschlitz den Suchbegriff "([^"]*)" eingebe,$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Dann(/^sollen mindestens (\d+) Treffer angezeigt werden$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
