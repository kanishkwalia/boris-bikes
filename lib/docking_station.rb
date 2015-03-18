class DockingStation
  
  DEFAULT_CAPACITY = 20

  def initialize (options = {})
	  @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
    @bikes = []
  end

  def capacity
	  @capacity
  end

  def has_bikes?
    !@bikes.empty?
  end

  def dock(bike)
    @bikes << bike
  end

end