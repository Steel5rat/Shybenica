class Player
  attr_writer :symbol
  def initialize db
    @word = db
    @usedSymbols=[]
    @publicStr='_'*@word.length
  end

  def isWin?
     if @publicStr==@word
       return true
     end
    false
  end

  def isRight?
    @word.each_char do |sym|
      if sym==@symbol
        return true
      end
    end
    false
  end

  def addSymb
    @usedSymbols-=[@symbol]    #уваходзіць сымбаль пвінен толькі аднойчы
    @usedSymbols+=[@symbol]
  end

  def openSymb
    for i in (0..@word.length-1) do
      if @word[i]==@symbol
        @publicStr[i]=@symbol
      end
    end
  end

  def drawInfo
    print 'Word: '
    @publicStr.each_char {|ch| print ch+' '}
    puts
    print 'Used letters: '
    @usedSymbols.each {|ch| print ch+' '}
    puts
  end
end