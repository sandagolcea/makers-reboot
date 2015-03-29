require './lib/weather'
class WeatherHolder; include Weather; end

describe Weather do
  let(:holder) { WeatherHolder.new }
  it 'should be good or not' do
    expect([true, false]).to include(holder.good_weather?)
  end
end
