class Knight
  def initialize
    @curruntpos = nil
    @moves = [[-1,-2],[-2,-1],[-1,2],[1,-2],[1,2],[2,1],[-2,1],[2,-1]]
  end
  def validPosition(val)
    if val.any?{|elem| elem.negative? || elem > 8}
      return false
    end
    return true
  end

  def possibleMoves(start)
    
  end

  def getSum(p1,p2)
    sum = p1.each_with_index{|num, ind| p num + p2[ind]}
    return sum
  end

  def move(start, last, count = 0, path = [start])
    #debugger
    if start == last
      return [path, count]
    end
    @moves.any?{|pair| validPosition(getSum(start,pair)) ? move(getSum(start,pair),last,count +=1, path.push(start)) : next}
  end
end
