checkslot1 = false;
checkslot2 = false;
checkslot3 = false;
checkslot4 = false;
function checkcheckslot():Number {
	if (checkslot1 == false) {
		checkslot1 = true;
		return(235.55);
	} else if (checkslot2 == false) {
		checkslot2 = true;
		return(275.65);
	} else if (checkslot3 == false) {
		checkslot3 = true;
		return(316.55);
	} else if(checkslot4 == false) {
		checkslot4 = true;
		return(359.45);
	}
}
function evoButtonCheck(): Void {
	if (_root.character == 0) {
			gotoAndPlay("Evo", 2);
	} else if (_root.canevo == 1 and _root.getCreatureTier(_root.character) < 3) {
		gotoAndPlay("Evo", 4);
	} else {
		gotoAndPlay("Evo", 1);
	}
}
if (_root.hunger <= 20 && _root.character != 0) {
	_root.hung._x = 24.4;
	_root.hung._y = checkcheckslot();
} else if (_root.hunger >= 80) {
	_root.stuff._x = 24.4;
	_root.stuff._y = checkcheckslot();
}
if (_root.happ < -5) {
	_root.unhapp._x = 24.4;
	_root.unhapp._y = checkcheckslot();
}
if (_root.canevo == 1) {
	_root.evo._x = 24.4;
	_root.evo._y = checkcheckslot();
}
if(_root.voidInProgress != 0 and _root.voidInProgress != undefined and _root.character > 1) {
	_root.voidButton._x = 24.4;
	_root.voidButton._y = checkcheckslot();
}