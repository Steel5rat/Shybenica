require './lib/eshafot'
require './lib/head'
require './lib/tree'
require './lib/body'
require './lib/legs'
require './lib/db'
require './lib/play'

graph=Scaffold.new
db = Database.new
play = Player.new db.getWord
graph.drawActual
play.drawInfo

until play.isWin? || graph.isOver?
  play.symbol=gets.chomp
  if play.isRight?
    play.openSymb
  else
    play.addSymb
    graph.wrongAnswer
  end
  graph.drawActual
  play.drawInfo
end
