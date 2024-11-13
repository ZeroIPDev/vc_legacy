function showHapp(): Void {
	if(_root.happ >= -1) {
		_root.mood.textColor = 0xFF0000;
		_root.mood.text = "HAPPY";
	} else if(_root.happ < -1 and _root.happ >= -3) {
		_root.mood.textColor = 0x33FF00;
		_root.mood.text = "NEUTRAL";
	} else if(_root.happ == -4) {
		_root.mood.textColor = 0x0033FF;
		_root.mood.text = "UNHAPPY";
	} else {
		_root.mood.textColor = 0x0000FF;
		_root.mood.text = "VERY UNHAPPY";
	}
}
function showType(): Void {
	if(_root.coreType == 1) {
		_root.cType.textColor = 0xA200FF;
		_root.cType.text = "SORCERY";
	} else if(_root.coreType == 2) {
		_root.cType.textColor = 0x001BFF;
		_root.cType.text = "RESISTANCE";
	} else if(_root.coreType == 3) {
		_root.cType.textColor = 0x00FF0F;
		_root.cType.text = "SWIFTNESS";
	} else if(_root.coreType == 4) {
		_root.cType.textColor = 0xFF0000;
		_root.cType.text = "PHYSICALITY";
	} else {
		_root.cType.textColor = 0x808080;
		_root.cType.text = "NEUTRAL";
	}
}
function hideButton(): Void {
	if(_root.getCreatureTier(_root.character) < 2) {
		_root.movesButton._x = -4000;
	}
}
function colorMove(): Void {
	if(a[1] == "Phys") {
		_root.MoveType.textColor = 0xFF0000;
	} else if(a[1] == "Sorcery") {
		_root.MoveType.textColor = 0xA200FF;
	} else if(a[1] == "Swift") {
		_root.MoveType.textColor = 0x00FF0F;
	} else if(a[1] == "Resist") {
		_root.MoveType.textColor = 0x001BFF;
	} else {
		_root.MoveType.textColor = 0x808080;
	}
	if(a[2] == "Physical") {
		_root.MoveCore.textColor = 0xFF0000;
	} else if(a[2] == "Magical") {
		_root.MoveCore.textColor = 0x0033FF;
	} else {
		_root.MoveCore.textColor = 0x808080;
	}
}
function displayMove(i: Number): Void {
	a = _root.getMoveInfo(_root.coreMoves[i]);
	_root.MoveName.text = a[0];
	_root.MoveType.text = a[1];
	_root.MoveCore.text = a[2];
	if(a[3] > 0) {
		_root.MoveDamage.text = a[3];
	} else {
		_root.MoveDamage.text = "N/A";
	}
	_root.MoveDesc.text = a[5];
	if(a[4] != "N/A") {
		_root.MoveDesc.text = _root.MoveDesc.text + " " + a[4];
	}
	colorMove();
}