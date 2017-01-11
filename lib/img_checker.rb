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

CONFIG_FILE = './img_config.yml'.freeze

if File.exist?(CONFIG_FILE)
  require_relative '../lib/img_checker/img_checker.rb'
  checker = ImgChecker.new CONFIG_FILE
  checker.ok?
else
  abort 'Critical Error: img_config.yml not found. Please add to the current directory.' # rubocop: disable Metrics/LineLength
end
