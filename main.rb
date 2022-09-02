require_relative 'app'
require_relative 'menu'
require_relative 'preserve_data'

def main
  newapp = App.new
  newapp.menu
end
main
