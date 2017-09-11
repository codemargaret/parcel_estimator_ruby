require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/parcel')

get('/') do
  erb(:input)
end

get('/output') do
  @width = params.fetch('width').to_i
  @height = params.fetch('height').to_i
  @length = params.fetch('length').to_i
  @weight = params.fetch('weight').to_i
  @rush = params.fetch('rush')
  @location = params.fetch('location')
  parcel = Parcel.new(@width,@height,@length,@weight,@rush,@location)
  @display_volume = parcel.volume
  @display_cost = parcel.cost_to_ship
  erb(:output)
end
