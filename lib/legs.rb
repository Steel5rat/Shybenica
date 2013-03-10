class Legs
  def initialize
    @status=1
  end

  def draw
    if @status==1
      puts ' '*4+'/\\'+' '*3+'|'
      puts ' '*3+'/  \\'+' '*2+'|'
    else
      puts ' '*4+'/ '+'   '+'|'
      puts ' '*3+'/  '+'   '+'|'
    end
  end

  def minimize
     if @status==1
       @status=0
       []
     else
       [self]
     end
  end
end