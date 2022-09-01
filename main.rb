# rubocop:disable Metrics/CyclomaticComplexity
# rubocop:disable Metrics/MethodLength
# rubocop:disable Metrics/AbcSize

require_relative 'app'
require_relative 'menu'

def main
  newapp = App.new
  newapp.menu
end
main
# rubocop:enable Metrics/CyclomaticComplexity
# rubocop:enable Metrics/MethodLength
# rubocop:enable Metrics/AbcSize
