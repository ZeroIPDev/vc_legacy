function initConfig(): Void {
	_root.movePool = [0, 5, 0, 10, 10, 0, 0];
}
function arenaNameText(): Void {
	if(_root.battleType) {
		_root.battleTypeName.text = "Battle Tower";
	} else {
		_root.battleTypeName.text = "Battle Arena";
	}
}
function battleTypeGoto(): Void {
	if(_root.battleType) {
		gotoAndPlay("Battle", 1);
	} else {
		_root.current_battle = 1;
		_root.setTimer();
		gotoAndPlay("ArenaBattle", 1);
	}
}
function healthColor(): Void {
	if(_root.CharCurHP <= _root.CharTotalHP - (_root.CharTotalHP * 0.8)) {
		_root.CharCurHPText.textColor = 0xFF0000;
	} else if(_root.CharCurHP <= _root.CharTotalHP - (_root.CharTotalHP * 0.5)) {
		_root.CharCurHPText.textColor = 0xFF9900;
	}
	if(_root.EnemCurHP <= _root.EnemHP - (_root.EnemHP * 0.8)) {
		_root.EnemCurHPText.textColor = 0xFF0000;
	} else if(_root.EnemCurHP <= _root.EnemHP - (_root.EnemHP * 0.5)) {
		_root.EnemCurHPText.textColor = 0xFF9900;
	}
}
function quickText(): Void {
	_root.EnemLvl.text = "Lv." + _root.enemLevel;
	_root.CharLvl.text = "Lv." + _root.level;
	_root.healthColor();
}
function enemSprite(): Void {
	_root.enem.gotoAndStop(_root.EnemID + 1);
}
function initChar():Void {
	if(_root.arenaType != 5) {
		_root.CharTotalHP = _root.coreHP;
		_root.CharCurHP = CharTotalHP;
		_root.CharCurATK = _root.coreATK;
		_root.CharCurDEF = _root.coreDEF;
		_root.CharCurSPD = _root.coreSPD;
		_root.CharCurMAG = _root.coreMAG;
	} else {
		PlayerArray = _root.getMaxStats(_root.character);
		for(i=0;i<PlayerArray.length;i++) {
			PlayerArray[i] *= 2;
		}
		_root.CharTotalHP = PlayerArray[0];
		_root.CharCurHP = CharTotalHP;
		_root.CharCurATK = PlayerArray[1];
		_root.CharCurDEF = PlayerArray[2];
		_root.CharCurMAG = PlayerArray[3];
		_root.CharCurSPD = PlayerArray[4];
	}
	_root.CharCurCRIT = 0.2;
	_root.critBoost = 1;
}
function refreshHP(): Void {
	_root.CharCurHP = _root.CharTotalHP;
	_root.CharCurATK = _root.fATK;
	_root.CharCurDEF = _root.fDEF;
	_root.CharCurSPD = _root.fSPD;
	_root.CharCurMAG = _root.fMAG;
}
function freezeStats(): Void {
	_root.fATK = _root.CharCurATK;
	_root.fDEF = _root.CharCurDEF;
	_root.fSPD = _root.CharCurSPD;
	_root.fMAG = _root.CharCurMAG;
}
function initEnem(): Void {
	_root.EnemCurHP = _root.EnemHP;
	_root.EnemCurATK = _root.EnemATK;
	_root.EnemCurDEF = _root.EnemDEF;
	_root.EnemCurSPD = _root.EnemSPD;
	_root.EnemCurMAG = _root.EnemMAG;
	_root.enemMoves = _root.getMoveset(_root.EnemID);
}
function setEnemType(enemID: Number): Void {
	if(enemID == 2) {
		_root.enemType = 4;
	} else if(enemID == 3) {
		_root.enemType = 2;
	} else if(enemID == 4) {
		_root.enemType = 1;
	} else if(enemID == 5) {
		_root.enemType = 3;
	} else if(enemID == 6) {
		_root.enemType = 4;
	} else if(enemID == 7) {
		_root.enemType = 2;
	} else if(enemID == 8) {
		_root.enemType = 2;
	} else if(enemID == 9) {
		_root.enemType = 2;
	} else if(enemID == 10) {
		_root.enemType = 1;
	} else if(enemID == 11) {
		_root.enemType = 1;
	} else if(enemID == 12) {
		_root.enemType = 3;
	} else if(enemID == 13) {
		_root.enemType = 3;
	} else if(enemID == 14) {
		_root.enemType = 4;
	} else if(enemID == 15) {
		_root.enemType = 4;
	} else if(enemID == 16) {
		_root.enemType = 2;
	} else if(enemID == 17) {
		_root.enemType = 2;
	} else if(enemID == 18) {
		_root.enemType = 1;
	} else if(enemID == 19) {
		_root.enemType = 1;
	} else if(enemID == 20) {
		_root.enemType = 3;
	} else if(enemID == 21) {
		_root.enemType = 3;
	} else {
		_root.enemType = 0;
	}
}
function initEnemDebug():Void {
	_root.EnemName = "BLOB";
	_root.EnemLevel = 1;
	_root.EnemTotalHP = 50;
	_root.EnemCurATK = 5;
	_root.EnemCurDEF = 5;
	_root.EnemCurSPD = 5;
	_root.EnemCurMAG = 5;
	_root.EnemCurCRIT = 0.2;
	_root.EnemCurHP = EnemTotalHP;
	_root.EnemID = 1;
}
function moveAssemble(invNum : Number):String {
	if (_root.coreMoves[invNum] != undefined) {
	dup = _root.coreMoves[invNum];
	stringValue = String(dup);
	numValue = Number(stringValue);
	frameValue = numValue + 1;
	} else {
		frameValue = 1;
	}
	return(frameValue);
}
function moveSet(): Void {
	_root.coreMoves = getMoveset(_root.character);
	_root.move1.gotoAndStop(moveAssemble(0));
	_root.move2.gotoAndStop(moveAssemble(1));
	_root.move3.gotoAndStop(moveAssemble(2));
	_root.move4.gotoAndStop(moveAssemble(3));
}
function createColor(ID : Number): Number {
	if (ID == 1  or ID == 21 or ID == 41 or ID == 61 or ID == 81 or ID == 5 or ID == 25 or ID == 45 or ID == 65 or ID == 85 or ID == 9 or ID == 29 or ID == 49 or ID == 69 or ID == 89 or ID == 13 or ID == 33 or ID == 53 or ID == 73 or ID == 93 or ID == 17 or ID == 37 or ID == 57 or ID == 77 or ID == 97 or ID == 101 or ID == 105 or ID == 109 or ID == 113 or ID == 117) {
		return(1);
	}
	else if (ID == 2  or ID == 22 or ID == 42 or ID == 62 or ID == 82 or ID == 6 or ID == 26 or ID == 46 or ID == 66 or ID == 86 or ID == 10 or ID == 30 or ID == 50 or ID == 70 or ID == 90 or ID == 14 or ID == 34 or ID == 54 or ID == 74 or ID == 94 or ID == 18 or ID == 38 or ID == 58 or ID == 78 or ID == 98 or ID == 102 or ID == 106 or ID == 110 or ID == 114 or ID == 118) {
		return(2);
	}
	else if (ID == 3  or ID == 23 or ID == 43 or ID == 63 or ID == 83 or ID == 7 or ID == 27 or ID == 47 or ID == 67 or ID == 87 or ID == 11 or ID == 31 or ID == 51 or ID == 71 or ID == 91 or ID == 15 or ID == 35 or ID == 55 or ID == 75 or ID == 95 or ID == 19 or ID == 39 or ID == 59 or ID == 79 or ID == 99 or ID == 103 or ID == 107 or ID == 111 or ID == 115 or ID == 119) {
		return(3);
	}
	else if (ID == 4  or ID == 24 or ID == 44 or ID == 64 or ID == 84 or ID == 8 or ID == 28 or ID == 48 or ID == 68 or ID == 88 or ID == 12 or ID == 32 or ID == 52 or ID == 72 or ID == 92 or ID == 16 or ID == 36 or ID == 56 or ID == 76 or ID == 96 or ID == 20 or ID == 40 or ID == 60 or ID == 80 or ID == 100 or ID == 104 or ID == 108 or ID == 112 or ID == 116 or ID == 120) {
		return(4);
	}
}
function createType(ID : Number): Number {
	if (ID == 1 or ID == 2 or ID == 3 or ID == 4 or ID == 21 or ID == 22 or ID == 23 or ID == 24 or ID == 41 or ID == 42 or ID == 43 or ID == 44 or ID == 61 or ID == 62 or ID == 63 or ID == 64 or ID == 81 or ID == 82 or ID == 83 or ID == 84) {
		return(1);
	}
	else if (ID == 5 or ID == 6 or ID == 7 or ID == 8 or ID == 25 or ID == 26 or ID == 27 or ID == 28 or ID == 45 or ID == 46 or ID == 47 or ID == 48 or ID == 65 or ID == 66 or ID == 67 or ID == 68 or ID == 85 or ID == 86 or ID == 87 or ID == 88) {
		return(2);
	}
	else if (ID == 9 or ID == 10 or ID == 11 or ID == 12 or ID == 29 or ID == 30 or ID == 31 or ID == 32 or ID == 49 or ID == 50 or ID == 51 or ID == 52 or ID == 69 or ID == 70 or ID == 71 or ID == 72 or ID == 89 or ID == 90 or ID == 91 or ID == 92) {
		return(3);
	}
	else if (ID == 13 or ID == 14 or ID == 15 or ID == 16 or ID == 33 or ID == 34 or ID == 35 or ID == 36 or ID == 53 or ID == 54 or ID == 55 or ID == 56 or ID == 73 or ID == 74 or ID == 75 or ID == 76 or ID == 93 or ID == 94 or ID == 95 or ID == 96) {
		return(4);
	}
	else if (ID == 17 or ID == 18 or ID == 19 or ID == 20 or ID == 37 or ID == 38 or ID == 39 or ID == 40 or ID == 57 or ID == 58 or ID == 59 or ID == 60 or ID == 77 or ID == 78 or ID == 79 or ID == 80 or ID == 97 or ID == 98 or ID == 99 or ID == 100) {
		return(5);
	}
	else if (ID == 101 or ID == 102 or ID == 103 or ID == 104 or ID == 105 or ID == 106 or ID == 107 or ID == 108 or ID == 109 or ID == 110 or ID == 111 or ID == 112 or ID == 113 or ID == 114 or ID == 115 or ID == 116 or ID == 117 or ID == 118 or ID == 119 or ID == 120) {
		return(6);
	}
}
function createLevel(ID : Number): Number {
	if (ID <= 20) {
		return(1);
	}
	else if (ID >= 21 and ID <= 40) {
		return(2);
	}
	else if (ID >= 31 and ID <= 60) {
		return(3);
	}
	else if (ID >= 61 and ID <= 80) {
		return(4);
	}
	else if (ID >= 81 and ID <= 100) {
		return(5);
	}
	else if (ID >= 101 and ID <= 104) {
		return(1);
	}
	else if (ID >= 105 and ID <= 108) {
		return(2);
	}
	else if (ID >= 109 and ID <= 112) {
		return(3);
	}
	else if (ID >= 113 and ID <= 116) {
		return(4);
	}
	else {
		return(5);
	}
}
function createBoost(equipID : Number) : Void {
	_root.equipBoosts.push([_root.createColor(equipID), _root.createType(equipID), _root.createLevel(equipID)]);
}
function synthBoostSlot(i: Number): Number {
	if(i == 0) {
		return(_root.synthSlot1);
	} else if(i == 1) {
		return(_root.synthSlot2);
	} else {
		return(_root.synthSlot3);
	}
}
function synthBoost(i: Number): Number {
		return((synthBoostSlot(i) * 2) * 0.01);
}
function createBoosts(i: Number): Void {
		if (_root.equipBoosts[i][0] == _root.coreType)  {
			_root.critBoost += 1;
		}
		if (_root.equipBoosts[i][2] == 1) {
			levelBoost = 0.05;
		} else if (_root.equipBoosts[i][2] == 2) {
			levelBoost = 0.1;
		} else if (_root.equipBoosts[i][2] == 3) {
			levelBoost = 0.15;
		} else if (_root.equipBoosts[i][2] == 4) {
			levelBoost = 0.2;
		} else if (_root.equipBoosts[i][2] == 5) {
			levelBoost = 0.3;
		}
		if(synthBoostSlot(i) != undefined) {
			levelBoost += synthBoost(i);
		}
		if (_root.equipBoosts[i][1] == 1) {
			_root.CharCurMAG += Math.round(_root.CharCurMAG * levelBoost);
		} else if (_root.equipBoosts[i][1] == 2) {
			_root.CharCurATK += Math.round(_root.CharCurATK * levelBoost); 
		} else if (_root.equipBoosts[i][1] == 3) {
			_root.CharCurDEF += Math.round(_root.CharCurDEF * levelBoost);
		} else if (_root.equipBoosts[i][1] == 4) {
			_root.CharCurSPD += Math.round(_root.CharCurSPD * levelBoost);
		} else if (_root.equipBoosts[i][1] == 5) {
			_root.CharCurHP += Math.round(_root.CharCurHP * levelBoost);
			_root.CharTotalHP += Math.round(_root.CharTotalHP * levelBoost);
		} else if (_root.equipBoosts[i][1] == 6) {
			_root.CharCurCRIT += _root.CharCurCRIT * levelBoost;
		}
}
function setBoosts(): Void {
	if (_root.equipSlot1 != undefined and _root.equipSlot1 != 0) {
		createBoost(_root.equipSlot1);
		createBoosts(0);
	}
	if (_root.equipSlot2 != undefined and _root.equipSlot2 != 0) {
		createBoost(_root.equipSlot2);
		createBoosts(1);
	}
	if (_root.equipSlot3 != undefined and _root.equipSlot3 != 0) {
		createBoost(_root.equipSlot3);
		createBoosts(2);
	}
}
function setCookingBoost(): Void {
	if(_root.cookingBoost == 0) {
		_root.CharCurHP += Math.round(_root.CharCurHP * _root.cookingBoostAmount);
	} else if(_root.cookingBoost == 1) {
		_root.CharCurATK += Math.round(_root.CharCurATK * _root.cookingBoostAmount);
	} else if(_root.cookingBoost == 2) {
		_root.CharCurDEF += Math.round(_root.CharCurDEF * _root.cookingBoostAmount);
	} else if(_root.cookingBoost == 3) {
		_root.CharCurSPD += Math.round(_root.CharCurSPD * _root.cookingBoostAmount);
	} else if(_root.cookingBoost == 4) {
		_root.CharCurMAG += Math.round(_root.CharCurMAG * _root.cookingBoostAmount);
	}
}
function lockToMax(): Void {
	if(_root.CharTotalHP > _root.maxHP) {
		_root.CharTotalHP = _root.maxHP;
		_root.CharCurHP = CharTotalHP;
	}
	if(_root.CharCurATK > _root.maxATK) {
		_root.CharCurATK = _root.maxATK;
	}
	if(_root.CharCurDEF > _root.maxDEF) {
		_root.CharCurDEF = _root.maxDEF;
	}
	if(_root.CharCurSPD > _root.maxSPD) {
		_root.CharCurSPD = _root.maxSPD;
	}
	if(_root.CharCurMAG > _root.maxMAG) {
		_root.CharCurMAG = _root.maxMAG;
	}
}
function checkCookBoost(): Void {
	if(_root.cookTime != undefined and _root.updateTime() >= (_root.cookTime + 86400000)) {
		_root.cookingBoost = undefined;
		_root.cookTime = undefined;
	}
}
function getVoidName(n: Number): String {
	if(n == 1) {
		return("VOID");
	} else if(n == 2) {
		return("VOI?DD");
	} else if(n == 3) {
		return("??VO1?DDV");
	}
}
function setVoidBattle(n: Number): Void {
	if(n == 1) {
		_root.EnemID = 22;
		_root.EnemHP = 600;
		_root.EnemATK = 150;
		_root.EnemDEF = 150;
		_root.EnemMAG = 150;
		_root.EnemSPD = 100;
	} else if(n == 2) {
		_root.EnemID = 22;
		_root.EnemHP = 750;
		_root.EnemATK = 150;
		_root.EnemDEF = 150;
		_root.EnemMAG = 150;
		_root.EnemSPD = 125;
	} else if(n == 3) {
		_root.EnemID = 23;
		_root.EnemHP = 999;
		_root.EnemATK = 10;
		_root.EnemDEF = 200;
		_root.EnemMAG = 10;
		_root.EnemSPD = 999;
	}
	_root.EnemName = getVoidName(n);
	if(n < 3) {
		_root.enemLevel = "??";
		_root.EnemSP = _root.createSP(_root.EnemHP, _root.EnemATK, _root.EnemDEF, _root.EnemSPD, _root.EnemMAG);
	} else {
		_root.enemLevel = "V?";
		_root.EnemSPText.text = "?1D!";
	}
}
function checkVoidBattle(): Void {
	if(_root.towerInProg == 14 and _root.current_round == _root.getMaxRound()) {
		gotoAndPlay("VoidIntro", 1);
	}
}