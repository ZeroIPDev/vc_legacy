function statIncrease(i: Number, m: Number, s: Number): Number {
	if(s + i <= m) {
		return(i);
	} else {
		return(0);
	}
}
function typeStatIncrease(isType: Number): Void {
	if(isType == 1) {
		_root.coreMAG += statIncrease(1, _root.maxMAG, _root.coreMAG);
	} else if(isType == 2) {
		_root.coreDEF += statIncrease(1, _root.maxDEF, _root.coreDEF);
	} else if(isType == 3) {
		_root.coreSPD += statIncrease(1, _root.maxSPD, _root.coreSPD);
	} else if(isType == 4) {
		_root.coreATK += statIncrease(1, _root.maxATK, _root.coreATK);
	}
}
function getHPIncrease(): Number {
	if(_root.getCreatureTier(_root.character) <= 2) {
		return(_root.quickGenerate(1, 3, true));
	} else {
		return(_root.quickGenerate(5, 7, true));
	}
}
function levelUp(): Void {
	_root.level += 1;
	_root.happ += 1;
	_root.coreHP += statIncrease(getHPIncrease(), _root.maxHP, _root.coreHP);
	_root.coreATK += statIncrease(quickGenerate(1, 2, true), _root.maxATK, _root.coreATK);
	_root.coreDEF += statIncrease(quickGenerate(1, 2, true), _root.maxDEF, _root.coreDEF);
	_root.coreSPD += statIncrease(quickGenerate(1, 2, true), _root.maxSPD, _root.coreSPD);
	_root.coreMAG += statIncrease(quickGenerate(1, 2, true), _root.maxMAG, _root.coreMAG);
}
function doXP(): Void {
	if (_root.next_xp > 0 and _root.level < _root.levelcap) {
		_root.xp += 1;
		_root.next_xp -= 1;
	} else {
		if(_root.level < _root.levelcap) {
			levelUp();
			nextLevel();
			typeStatIncrease(_root.coreType);
			_root.next_lvl = Math.round(_root.next_lvl * 1.10);
			_root.next_xp = _root.next_lvl;
		} else {
			_root.nextlvl.text = _root.levelcap;
			_root.current_xp = 0;
			_root.next_xp = 0;
		}
	}
}
function checkXP(): Void {
	if (_root.current_xp > 0) {
		doXP();
		_root.current_xp -= 1;
		gotoAndPlay(30);
	} else {
		gotoAndPlay(32);
	}
}
function skipXP(): Void {
	loopCount = _root.current_xp;
	for(i=loopCount;i > 0;i--) {
		if(_root.current_xp > 0) {
			doXP();
			_root.current_xp -= 1;
		}
	}
	gotoAndPlay(32);
}
function getLowBoost(l: Number): Number {
	if(l < 5) {
		return(1.50);
	} else if(l < 15) {
		return(1.30);
	} else if(l < 25) {
		return(1.10);
	} else {
		return(1);
	}
}
function getBaseXP(t: Boolean): Number {
	if(t) {
		return(_root.quickGenerate(80, 89, true)); //Minigame
	} else {
		return(_root.quickGenerate(90, 119, true)); //Arena, Battle
	}
}
function getXPMulti(b: Boolean): Number {
	if(b) {
		return(1.5);
	} else {
		return(1);
	}
}
function getXPCap(n: Number): Number {
	if(n > 9999) {
		return(9999);
	} else {
		return(n);
	}
}
function calcXP(f: Number, typeXP: Boolean): Number {
	return(getXPCap(Math.round(getXPMulti(_root.battleType) * ((getBaseXP(typeXP) * f) * getLowBoost(_root.level)))));
}
function scaleXPBattle(): Void {
	if(_root.xp_type == false) {
		_root.current_xp = _root.XPScale(_root.current_xp);
	}
}
function nextLevel(): Void {
	if(_root.level < _root.levelcap) {
		_root.nextlvl.text = _root.level + 1;
	} else {
		_root.nextlvl.text = _root.levelcap;
	}
}
function resetXPCounter(): Void {
	if(_root.level == _root.levelcap) {
		_root.current_xp = 0;
	}
}
function clearTower(): Void {
	if(_root.towerInProg != undefined and _root.towerInProg != 0) {
		lock = false;
		for(i=0;i<_root.towerClears.length;i++) {
			if(_root.towerClears[i] == _root.towerInProg) {
				lock = true;
			}
		}
		if(!lock) {
			_root.towerClears.push(_root.towerInProg);
			if(_root.towerInProg == 3 or _root.towerInProg == 6 or _root.towerInProg == 13 or _root.towerInProg == 14) {
				_root.newTowers.text = "New tower set unlocked!";
			} else if(_root.towerInProg < 7 or _root.towerInProg > 10) {
				if(_root.towerInProg < 15) {
					_root.newTowers.text = "New tower unlocked!";
				}
			}
		}
	}
}