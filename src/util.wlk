object util{
	method posicionRandom() = game.at(self.randomX(), self.randomY())
	method randomX() = 1.randomUpTo(game.width()-1).roundUp()
	method randomY() = 1.randomUpTo(game.height()-1).roundUp()
}