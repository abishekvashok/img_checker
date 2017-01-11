# img_checker ruby gem
# This gem checks for images which exceept the specified limit in the
# img_config.yml file.
# Authored by Abishek V Ashok and Ankit R Gadiya of FOSSASIA
#
# img_checker is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# img_checker is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
class ImgChecker
  def initialize(config_file)
    print 'Starting Image Checker,'
    print ' authored by Abishek V Ashok "for" FOSSASIA with love'
    puts "Improvements by Robby O'Connor during GCI 2016"
    # Initialize the config file
    require 'yaml'
    @config = YAML.load(File.open(config_file))
    # This int is to count the number of big images that exceed the specified
    # widthor height
    @big_images = 0
  end

  # Check the image dimensions
  def check_dimensions?(image, width, height)
    require 'fastimage'
    image_size = FastImage.size(image)
    if image_size[0] > width || image_size[1] > height
      puts "The image #{image} is larger than #{width}px x #{height}px [w x h]"
      @big_images += 1
      return false
    end
    true
  end

  def check_images?
    valid_sizes = true
    # For each direcotry hash do
    @config.each do |dir_config|
      # Get the directory pathonly from the array
      directory = Dir[dir_config['directory']]
      height = dir_config['height']
      width = dir_config['width']
      directory.each do |image|
        # Now we will use the other data available in the dir_config array
        valid_sizes = false unless check_dimensions?(image, width, height)
      end
    end
    valid_sizes
  end

  def ok?
    if check_images?
      puts 'All images are ok... Hurray!'
    else
      big_images = @big_images
      puts 'Image Checker: These images exceeds the specified dimensions'
      abort "#{big_images} image(s) have greater dimensions then specified."
      return false
    end
    true
  end
end
