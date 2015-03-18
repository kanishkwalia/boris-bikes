class Bike

  def initialize
  	fix!
  end

	def working?
		@working
	end

  def break!
    @working = false
  end

  def fix!
  	raise "Bike not broken" if working?
  	@working = true
  end
end
