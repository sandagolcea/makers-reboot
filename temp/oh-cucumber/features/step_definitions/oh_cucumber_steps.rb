# cucumber test
class Greet
  def say_hello
    'all hail cucumber'
  end
end

Given(/^a nazi greeter$/) do
  @greeter = Greet.new
end

When(/^I send it the greet message$/) do
  @message = @greeter.say_hello
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  expect(@message).to eq arg1
end
