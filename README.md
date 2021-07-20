# Testautomatisierung
Automatisches Testen von Webapps mit Cucumber

## Installation
```ruby
bundle install
```
installiert die benötigten gems

Anschliessend muss der Befehl 'selenium install' ausgeführt werden. Dieser Befehl wird fehl schlagen: Das Installationsskript muss gepatcht werden:

vi .rvm/gems/ruby-2.5.0/gems/selenium-0.2.11/lib/selenium/starter.rb

--> SELENIUM_SERVER_VERSION = "2.39.0"
--> source = "http://selenium-release.storage.googleapis.com/2.39/selenium-server-2.39.0.zip"

Für den Betrieb der Browser (Firefox / Chrome) mit jeweils ein entsprechender Treiber herunter geladen und installiert werden:
chrome: https://sites.google.com/a/chromium.org/chromedriver/downloads
firefox: https://github.com/mozilla/geckodriver/releases


## Usage
Aufruf: cucumber [features/suche.feature] [--format html >output20170922.html]

# capybara cheat sheet #
Taken from https://launchacademy.com/codecabulary/learn-test-driven-development/rspec/capybara-cheat-sheet

## Navigating
    visit('/projects')
    visit(post_comments_path(post))

## Clicking links and buttons
    click_link('id-of-link')
    click_link('Link Text')
    click_button('Save')
    click('Link Text') # Click either a link or a button
    click('Button Value')

## Interacting with forms
    fill_in('First Name', :with ## > 'John')
    fill_in('Password', :with ## > 'Seekrit')
    fill_in('Description', :with ## > 'Really Long Text…')
    choose('A Radio Button')
    check('A Checkbox')
    uncheck('A Checkbox')
    attach_file('Image', '/path/to/image.jpg')
    select('Option', :from ## > 'Select Box')

## scoping
    within("//li[@id## 'employee']") do
      fill_in 'Name', :with ## > 'Jimmy'
    end
    within(:css, "li#employee") do
      fill_in 'Name', :with ## > 'Jimmy'
    end
    within_fieldset('Employee') do
      fill_in 'Name', :with ## > 'Jimmy'
    end
    within_table('Employee') do
      fill_in 'Name', :with ## > 'Jimmy'
    end

## Querying
    page.has_xpath?('//table/tr')
    page.has_css?('table tr.foo')
    page.has_content?('foo')
    page.should have_xpath('//table/tr')
    page.should have_css('table tr.foo')
    page.should have_content('foo')
    page.should have_no_content('foo')
    find_field('First Name').value
    find_link('Hello').visible?
    find_button('Send').click
    find('//table/tr').click
    locate("//*[@id## 'overlay'").find("//h1").click
    all('a').each { |a| a[:href] }

## Scripting
    result ##  page.evaluate_script('4 + 4');

## Debugging
    save_and_open_page

## Asynchronous JavaScript
    click_link('foo')
    click_link('bar')
    page.should have_content('baz')
    page.should_not have_xpath('//a')
    page.should have_no_xpath('//a')

## XPath and CSS
    within(:css, 'ul li') { ... }
    find(:css, 'ul li').text
    locate(:css, 'input#name').value
    Capybara.default_selector ##  :css
    within('ul li') { ... }
    find('ul li').text
    locate('input#name').value

