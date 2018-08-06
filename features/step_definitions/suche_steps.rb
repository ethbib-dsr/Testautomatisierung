Gegebensei(/^, dass die Startseite "([^"]*)" aufgerufen ist$/) do |startseite|
  visit(startseite) 
end

Wenn(/^ich in den Suchschlitz den Suchbegriff "([^"]*)" eingebe,$/) do |q|
  fill_in('searchBar', with: q)
  find(".button-confirm").send_keys(:enter)
end

Dann(/^solle?n? mindestens (\d+) Treffer angezeigt werden$/) do |anzahl|
  inhalt = page.find("div#resultsNumbersTile").text
  resultat = /^\D+\d+\s-\s\d+\D+(\d+)\D+/.match(inhalt)
  resultat ? treffer = resultat[1] : treffer = 0
  expect(treffer.to_i).to be > anzahl
end
