require './lib/weather'
class WeatherHolder; include Weather; end

describe Weather do
  let(:holder) { WeatherHolder.new }
  it 'should be sunny or stormy' do
    expect([:sunny, :stormy]).to include(holder.weather_reading)
  end
end
