class Knight
  def initialize
    @curruntpos = nil
    @moves = [[-1,-2],[-2,-1],[-1,2],[1,-2],[1,2],[2,1],[-2,1],[2,-1]]
  end
  def validPosition(val)
    if val.any?{|elem| elem.negative? || elem > 8}
      return 0
    end
    return 1
  end

  def possibleMoves(start)
    
  end

  def move(start, last, count = 0, path = [start])
    #debugger
    if start == last
      return [path, count]
    end
    @moves.any?{|pair| move(start[0][1] + pair[0][1],last,count +=1, path.push(start)) if validPosition(start[0][1] + pair[0][1])}
  end
end
