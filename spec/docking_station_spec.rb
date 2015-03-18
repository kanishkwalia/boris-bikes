require 'docking_station'

describe DockingStation do
  
  let(:old_street) { DockingStation.new }

  it "has a default capacity" do
	  expect(old_street.capacity).to eq 20
  end

  it "has a custom capacity" do
	  shoreditch = DockingStation.new({capacity: 50})
	  expect(shoreditch.capacity).to eq 50
  end

  it "has no bikes when created" do
    expect(old_street).not_to have_bikes
  end

  it "can accept bikes" do
    bike = "Bike"
    old_street.dock(bike)
    expect(old_street).to have_bikes
  end
end
