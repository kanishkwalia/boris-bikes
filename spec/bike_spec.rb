require 'bike'

describe Bike do
  let(:bike){Bike.new}

  it 'knows that it is working' do
    expect(bike).to be_working
  end

  it 'can break' do
  	bike.break!
  	expect(bike).not_to be_working
  end

  it 'can be fixed once broken' do
  	bike.break!
  	bike.fix!
  	expect(bike).to be_working
  end

  it 'cannot be fixed if not broken' do
  	expect { bike.fix! }.to raise_error("Bike not broken")
  end


end
