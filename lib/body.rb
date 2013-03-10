class Body
  def initialize
    @status=2
  end

  def draw
    if @status>=1
      print ' '*2+'_'*2+'|'
      if @status==2
        puts   '_'*2+' '*2+'|'
      else
        puts  ' '*4+'|'
      end
    else
      puts ' '*4+'|'+' '*4+'|'
    end
    puts ' '*4+'|'+' '*4+'|'
    puts ' '*4+'|'+' '*4+'|'
  end

  def minimize
    if @status==0    #only body
      [self]
    elsif @status==1 #body+one hand
      @status=0
      []
    else
      @status=1
      []
    end
  end
end
