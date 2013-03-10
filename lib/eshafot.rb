class Scaffold #graphics
  def initialize
     @tree = Tree.new
     @body=[Head.new,Body.new,Legs.new]
  end

  def drawActual
    @tree.atBegin
    @body.each {|el| el.draw }
    @tree.atFinal
  end

  def wrongAnswer    #delete one elem
     @body-=@body.last.minimize
  end

  def isOver?
    if @body.count==0
      return true
    end
    false
  end
end
