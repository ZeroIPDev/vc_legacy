if (_root.enemyselect == 1 && _root.select == 2) {
	_root.result1 = "WINNER!";
	_root.result2 = "LOSER!";
	_root.score += 1;
	_root.gameround += 1;
}
if (_root.enemyselect == 1 && _root.select == 1) {
	_root.result1 = "NOTHING!";
	_root.result2 = "NOTHING!";
}
if (_root.enemyselect == 1 && _root.select == 3) {
	_root.result1 = "LOSER!"
	_root.result2 = "WINNER!"
	_root.score2 += 1;
	_root.gameround += 1;
}
if (_root.enemyselect == 2 && _root.select == 2) {
	_root.result1 = "NOTHING!";
	_root.result2 = "NOTHING!";
}
if (_root.enemyselect == 2 && _root.select == 1) {
	_root.result1 = "LOSER!"
	_root.result2 = "WINNER!"
	_root.score2 += 1;
	_root.gameround += 1;
}
if (_root.enemyselect == 2 && _root.select == 3) {
	_root.result1 = "WINNER!";
	_root.result2 = "LOSER!";
	_root.score += 1;
	_root.gameround += 1;
}
if (_root.enemyselect == 3 && _root.select == 3) {
	_root.result1 = "NOTHING!";
	_root.result2 = "NOTHING!";
}
if (_root.enemyselect == 3 && _root.select == 1) {
	_root.result1 = "WINNER!";
	_root.result2 = "LOSER!";
	_root.score += 1;
	_root.gameround += 1;
}
if (_root.enemyselect == 3 && _root.select == 2) {
	_root.result1 = "LOSER!"
	_root.result2 = "WINNER!"
	_root.score2 += 1;
	_root.gameround += 1;
}