#Sinatra + Cucumber
To initialize a sinatra web app with cucumber tests:  
`cucumber-sinatra init --app  BattleShips lib/battleships.rb`  
To run the sinatra app:
`rackup`  

#Rubocop setup
  * This is my setup for rubocop placed in `.rubocop.yml`:
```
Documentation:
  Enabled: false
Style/MethodDefParentheses:
  Enabled: false
Metrics/LineLength:
  Max: 99
```
  * My `Rakefile` to get things started with rspec and rubocop:
```require 'rubocop/rake_task'
require 'rspec/core/rake_task'
RuboCop::RakeTask.new(:cop)
RSpec::Core::RakeTask.new(:spec)
task default: [:cop, :spec]```
