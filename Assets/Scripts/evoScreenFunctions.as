function changeName(): Void {
	_root.old_name = _root.vc_name;
	if(_root.nickname != 1) {
		_root.vc_name = getName(_root.character);
	}
}
function showName(): Void {
	_root.congrats.text = "Congrats! Your " + _root.old_name + " evolved into " + getName(_root.character) + "!";
}
function setType(i: Number): Void {
	if(i == 2) {
		_root.coreType = 4;
	} else if(i == 3) {
		_root.coreType = 2;
	} else if(i == 4) {
		_root.coreType = 1;
	} else if(i == 5) {
		_root.coreType = 3;
	} else if(i == 6) {
		_root.coreType = 4;
	} else if(i == 7) {
		_root.coreType = 2;
	} else if(i == 8) {
		_root.coreType = 2;
	} else if(i == 9) {
		_root.coreType = 2;
	} else if(i == 10) {
		_root.coreType = 1;
	} else if(i == 11) {
		_root.coreType = 1;
	} else if(i == 12) {
		_root.coreType = 3;
	} else if(i == 13) {
		_root.coreType = 3;
	} else if(i == 14) {
		_root.coreType = 4;
	} else if(i == 15) {
		_root.coreType = 4;
	} else if(i == 16) {
		_root.coreType = 2;
	} else if(i == 17) {
		_root.coreType = 2;
	} else if(i == 18) {
		_root.coreType = 1;
	} else if(i == 19) {
		_root.coreType = 1;
	} else if(i == 20) {
		_root.coreType = 3;
	} else if(i == 21) {
		_root.coreType = 3;
	}
}
function setMaxStats(i: Number): Void {
	if(i == 2) {
		_root.maxHP = 300;
		_root.maxATK = 75;
		_root.maxDEF = 50;
		_root.maxMAG = 50;
		_root.maxSPD = 50;
	} else if(i == 3) {
		_root.maxHP = 300;
		_root.maxATK = 50;
		_root.maxDEF = 75;
		_root.maxMAG = 50;
		_root.maxSPD = 50;
	} else if(i == 4) {
		_root.maxHP = 300;
		_root.maxATK = 50;
		_root.maxDEF = 50;
		_root.maxMAG = 75;
		_root.maxSPD = 50;
	} else if(i == 5) {
		_root.maxHP = 300;
		_root.maxATK = 50;
		_root.maxDEF = 50;
		_root.maxMAG = 50;
		_root.maxSPD = 75;
	} else if(i == 6) {
		_root.maxHP = 600;
		_root.maxATK = 100;
		_root.maxDEF = 75;
		_root.maxMAG = 80;
		_root.maxSPD = 80;
	} else if(i == 7) {
		_root.maxHP = 550;
		_root.maxATK = 130;
		_root.maxDEF = 60;
		_root.maxMAG = 80;
		_root.maxSPD = 70;
	} else if(i == 8) {
		_root.maxHP = 600;
		_root.maxATK = 80;
		_root.maxDEF = 100;
		_root.maxMAG = 75;
		_root.maxSPD = 80;
	} else if(i == 9) {
		_root.maxHP = 600;
		_root.maxATK = 75;
		_root.maxDEF = 150;
		_root.maxMAG = 70;
		_root.maxSPD = 60;
	} else if(i == 10) {
		_root.maxHP = 600;
		_root.maxATK = 70;
		_root.maxDEF = 80;
		_root.maxMAG = 100;
		_root.maxSPD = 80;
	} else if(i == 11) {
		_root.maxHP = 500;
		_root.maxATK = 70;
		_root.maxDEF = 75;
		_root.maxMAG = 130;
		_root.maxSPD = 60;
	} else if(i == 12) {
		_root.maxHP = 600;
		_root.maxATK = 80;
		_root.maxDEF = 80;
		_root.maxMAG = 70;
		_root.maxSPD = 100;
	} else if(i == 13) {
		_root.maxHP = 550;
		_root.maxATK = 75;
		_root.maxDEF = 70;
		_root.maxMAG = 60;
		_root.maxSPD = 130;
	} else if(i == 14) {
		_root.maxHP = 800;
		_root.maxATK = 200;
		_root.maxDEF = 170;
		_root.maxMAG = 175;
		_root.maxSPD = 180;
	} else if(i == 15) {
		_root.maxHP = 720;
		_root.maxATK = 220;
		_root.maxDEF = 140;
		_root.maxMAG = 170;
		_root.maxSPD = 160;
	} else if(i == 16) {
		_root.maxHP = 800;
		_root.maxATK = 180;
		_root.maxDEF = 200;
		_root.maxMAG = 180;
		_root.maxSPD = 170;
	} else if(i == 17) {
		_root.maxHP = 800;
		_root.maxATK = 160;
		_root.maxDEF = 220;
		_root.maxMAG = 175;
		_root.maxSPD = 175;
	} else if(i == 18) {
		_root.maxHP = 800;
		_root.maxATK = 180;
		_root.maxDEF = 180;
		_root.maxMAG = 200;
		_root.maxSPD = 170;
	} else if(i == 19) {
		_root.maxHP = 740;
		_root.maxATK = 175;
		_root.maxDEF = 175;
		_root.maxMAG = 220;
		_root.maxSPD = 180;
	} else if(i == 20) {
		_root.maxHP = 800;
		_root.maxATK = 180;
		_root.maxDEF = 170;
		_root.maxMAG = 175;
		_root.maxSPD = 200;
	} else if(i == 21) {
		_root.maxHP = 720;
		_root.maxATK = 175;
		_root.maxDEF = 180;
		_root.maxMAG = 170;
		_root.maxSPD = 220;
	}
}
function evoStatBoost(): Void {
if(_root.character != 1) {
	if(_root.compareNumbers(_root.maxATK, _root.maxDEF) and _root.compareNumbers(_root.maxATK, _root.maxSPD) and _root.compareNumbers(_root.maxATK, _root.maxMAG)) {
		_root.coreATK += _root.quickGenerate(2, 4, true);
	} else if(_root.compareNumbers(_root.maxDEF, _root.maxATK) and _root.compareNumbers(_root.maxDEF, _root.maxSPD) and _root.compareNumbers(_root.maxDEF, _root.maxMAG)) {
		_root.coreDEF += _root.quickGenerate(2, 4, true);
	} else if(_root.compareNumbers(_root.maxMAG, _root.maxATK) and _root.compareNumbers(_root.maxMAG, _root.maxDEF) and _root.compareNumbers(_root.maxMAG, _root.maxSPD)) {
		_root.coreMAG += _root.quickGenerate(2, 4, true);
	} else if(_root.compareNumbers(_root.maxSPD, _root.maxATK) and _root.compareNumbers(_root.maxSPD, _root.maxDEF) and _root.compareNumbers(_root.maxSPD, _root.maxMAG)) {
		_root.coreSPD += _root.quickGenerate(2, 4, true);
	} else {
		_root.coreHP += _root.quickGenerate(2, 4, true);
	}
	_root.coreATK += _root.quickGenerate(2, 3, true);
	_root.coreDEF += _root.quickGenerate(2, 3, true);
	_root.coreMAG += _root.quickGenerate(2, 3, true);
	_root.coreSPD += _root.quickGenerate(2, 3, true);
	_root.coreHP += _root.quickGenerate(2, 3, true);
	if(_root.getCreatureTier(_root.character) == 3) {
		_root.coreHP += Math.round(_root.coreHP * 0.50);
	}
	if(_root.coreHP > _root.maxHP) {
		_root.coreHP = _root.maxHP;
	} else if(_root.coreATK > _root.maxATK) {
		_root.coreATK = _root.maxATK;
	} else if(_root.coreDEF > _root.maxDEF) {
		_root.coreDEF = _root.maxDEF;
	} else if(_root.coreMAG > _root.maxMAG) {
		_root.coreMAG = _root.maxMAG;
	} else if(_root.coreSPD > _root.maxSPD) {
		_root.coreSPD = _root.maxSPD;
	}
}
}