class Database
  def initialize
    @data = ['word']     #initialize db
    @data<<'tie'
  end

  def getWord
    @data[rand(@data.count)]
  end
end
