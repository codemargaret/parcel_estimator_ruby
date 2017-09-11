class Parcel
  def initialize(width,height,length,weight,rush,location)
    @width = width
    @height = height
    @length = length
    @weight = weight
    @rush = rush
    @location = location
  end

  def volume
    volume = @width * @length * @height
    return volume
  end

  def cost_to_ship
    cost = (volume/500) * (@weight/10)
    if @rush == 'Rush'
      cost += 5
    else cost
    end
    if @location == 'International'
      cost += 10
    else cost
    end
  end
end
