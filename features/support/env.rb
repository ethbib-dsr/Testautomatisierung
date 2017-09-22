# read configs

targets = YAML.load_file('features/support/config.yml')

ENV['TARGET'] ? my_env = ENV['TARGET'].downcase : my_env = "test"
$startseite = targets[my_env]['url']