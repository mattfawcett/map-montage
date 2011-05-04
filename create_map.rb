x = 32345..32360
y = 21435..21450

tiles = []

y.each do |y_value|
  x.each do |x_value|
    filename = "tiles/#{x_value}-#{y_value}.png"
    tiles << filename
    system "curl 'http://mt#{rand(3)}.google.com/vt/lyrs=m@152064754&hl=en&x=#{x_value}&y=#{y_value}&z=16&s=Gal' > #{filename}"
  end
end

system("montage -quality 100 -monitor -mode Concatenate #{tiles.join(' ')} finished-map.jpg")

