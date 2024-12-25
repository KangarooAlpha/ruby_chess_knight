require_relative("knight.rb")
require_relative("board.rb")

a = Knight.new()
#p a.validPosition([1,8])
#p a.getSum([1,1], [2,1])
p a.move([1,1], [2,2])