function showDesc(i: Number): Void {
	if(i == 1) {
		_root.desc.text = "--ARENAS--\nFast-paced battles based on your stats and Rock-Paper-Scissors style Stances!";
	} else if(i == 2) {
		_root.desc.text = "--BATTLE TOWERS--\nTraditional RPG battles with unique movesets and high rewards!";
	} else if(i == 3) {
		_root.desc.text = "--VOID MINE--\nObtain valuable resources to power up your creature!";
	}
}
function checkTower(n: Number): Boolean {
	lock = false;
	for(i=0;i<_root.towerClears.length;i++) {
		if(_root.towerClears[i] == n) {
			lock = true;
		}
	}
	return(lock);
}
function hideMenu(): Void {
	if(checkTower(6) == false or _root.battle_debug) {
		_root.nextButton._x = -4000;
		_root.nextText._x = -4000;
	}
}
function hideTower(): Void {
	if(checkTower(14) == false) {
		_root.rebirthTower._x = -4000;
	}
}
function destroyTower(): Void {
	if(_root.checkTower(14) == true) {
		_root.VoidTowerButton._x = -4000;
		_root.VoidTowerDestroy._x = 317.50;
	}
}
function getDailyBonus(): Number {
	//0 - Money, 1 - Chest, 2 - Synth
	p = _root.returnRTC(6);
	if(p == 1 or p == 3) {
		return(0);
	} else if(p == 2 or p == 4) {
		return(1);
	} else if(p == 5 or p == 6) {
		return(2);
	} else {
		return(3);
	}
}
function showDailyBonus(): Void {
	var RTC : Date = new Date();
	if(getDailyBonus() == 0) {
		_root.giftType.gotoAndStop(1);
		_root.giftText.text = "Money";
	} else if(getDailyBonus() == 1) {
		_root.giftType.gotoAndStop(4);
		_root.giftType.chest.gotoAndStop(5);
		_root.giftText.text = "Chest";
	} else if(getDailyBonus() == 2) {
		_root.giftType.gotoAndStop(5);
		_root.giftText.text = "Synth";
	} else if(getDailyBonus() == 3) {
		_root.giftType.gotoAndStop(6);
		_root.giftText.text = "Wildcard!";
	}
}
function giveDailyBonus(n: Number): Void {
	if(n == 0) {
		n1 = _root.quickGenerate(1500, 2000, true);
	} else if(n == 1) {
		n1 = _root.quickGenerate(4, 4, true);
	} else if(n == 2) {
		n1 = _root.quickGenerate(8, 10, true);
	} else if(n == 3) {
		giveDailyBonus(_root.quickGenerate(1, 2, true));
	}
	if(n != 3) {
		_root.drillDrop = [n, n1];
		_root.giveDrop(true);
	}
}