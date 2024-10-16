require 'car'

RSpec.describe Car do
  let(:car) { Car.new }

  it 'returns an instance of Car' do
    expect(car).to be_a Car
    expect(car.type).to eq(:car)
  end
end
