function getStasisCost(l: Number, t: Number): Number {
	if(t == 0) {t = 1;}
	return(Math.round(250 * (l * t)));
}
function setStasisCost(): Void {
	_root.sCost = getStasisCost(_root.level, _root.getCreatureTier(_root.character));
	_root.sName.text = "Would you like to put " + _root.vc_name + " in Stasis?";
}
function setStasis(c: Number): Void {
	if(_root.checkCost(c)) {
		_root.money -= c;
		_root.stasis = true;
		_root.saveGame();
		_root.saveArray();
		_root.saveFlush();
		stopAllSounds();
		gotoAndPlay("INT", 1);
	} else {
		_root.toobroke.text = "You don't have enough money!";
	}
}