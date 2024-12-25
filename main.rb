require_relative("knight.rb")
require_relative("board.rb")

a = Knight.new()
#p a.validPosition([1,8])
p a.move([0,0], [1,1])