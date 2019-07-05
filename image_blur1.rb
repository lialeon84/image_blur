class Image
  attr_accessor :image 

def initialize (image)
  self.image = image
end

def blur
  location = []
  image.each_with_index do |row, i|
    row.each_with_index do |x, row_i|
    if x == 1
      location << [i, row_i]
       puts "#{i} and #{row_i}"
     end
    end
  end


  def output_image
    image.each do |row|
      puts row.join
    end
  end
end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])
image.blur
 
 end     