function leaveBattle(): Void {
	stopAllSounds();
	gotoAndPlay("Main", 1);
}
function createSP(h: Number, a: Number, d: Number, s: Number, m: Number): Number {
	return(Math.round(h + a + d + s + m));
}
function getMaxRound(): Number {
	if(_root.arenaType == 1 or _root.arenaType == 5) {
		return(5);
	} else if(_root.arenaType == 2) {
		return(7);
	} else if(_root.arenaType == 3 and _root.towerInProg < 11 or _root.arenaType == 8) {
		return(10);
	} else if(_root.arenaType == 4) {
		return(99);
	} else if(_root.arenaType == 6 or _root.arenaType == 7) {
		return(20);
	} else if(_root.towerInProg >= 11 and _root.towerInProg <= 14) { 
		return(15);
	} else {
		return(1);
	}
}
function getMaxBoost(i: Number): Number {
	if(i == 1) {
		return(1);
	} else if(i == 3) {
		return(1.5);
	} else if(i == 5) {
		return(2);
	} else if(i == 7) {
		return(3);
	} else if(i == 10 or i == 12) {
		return(5);
	} else if(i == 15) {
		return(7);
	} else {
		return(0);
	}
}
function scaleInfinite(): Void {
	if(_root.arenaType == 4) {
		if(_root.current_round >= 90) {
			_root.arenaBoost = 15;
		} else if(_root.current_round >= 80) {
			_root.arenaBoost = 12;
		} else if(_root.current_round >= 70) {
			_root.arenaBoost = 10;
		} else if(_root.current_round >= 50) {
			_root.arenaBoost = 7;
		} else if(_root.current_round >= 30) {
			_root.arenaBoost = 5;
		} else if(_root.current_round >= 10) {
			_root.arenaBoost = 3;
		} else {
			_root.arenaBoost = 1;
		}
	}
}
function addSP(): Void {
		if(_root.ATK_a != 0) {
			_root.ATK_a -= 1;
			_root.SP_a += 1;
		}
		if(_root.DEF_a != 0) {
			_root.DEF_a -= 1;
			_root.SP_a += 1;
		}
		if(_root.SPD_a != 0) {
			_root.SPD_a -= 1;
			_root.SP_a += 1;
		}
		if(_root.MAG_a != 0) {
			_root.MAG_a -= 1;
			_root.SP_a += 1;
		}
		if(_root.HP_a != 0) {
			_root.HP_a -= 1;
			_root.SP_a += 1;
		}
}
function checkSP(): Void {
	if(_root.SP_a < _root.CharSP) {
		gotoAndPlay(90);
	} else {
		_root.ATK_a = 0;
		_root.DEF_a = 0;
		_root.SPD_a = 0;
		_root.MAG_a = 0;
		_root.HP_a = 0;
	}
}
function skipSP(): Void {
	_root.SP_a = _root.CharSP;
	_root.ATK_a = 0;
	_root.DEF_a = 0;
	_root.SPD_a = 0;
	_root.MAG_a = 0;
	_root.HP_a = 0;
	gotoAndPlay(92);
}
function lockLevel(n: Number): Number {
	if(_root.arenaType != 7 and _root.arenaType != 4) {
		if(n > 50) {
			return(50);
		} else {
			return(n);
		}
	} else {
		if(n > 99) {
			return(99);
		} else {
			return(n);
		}
	}
}
function getMaxStats(i: Number): Array {
	//HP, ATK, DEF, MAG, SPD
	if(i == 2) {
		return([300, 75, 50, 50, 50]);
	} else if(i == 3) {
		return([300, 50, 75, 50, 50]);
	} else if(i == 4) {
		return([300, 50, 50, 75, 50]);
	} else if(i == 5) {
		return([300, 50, 50, 50, 75]);
	} else if(i == 6) {
		return([600, 100, 75, 80, 80]);
	} else if(i == 7) {
		return([550, 130, 60, 80, 70]);
	} else if(i == 8) {
		return([600, 80, 100, 75, 80]);
	} else if(i == 9) {
		return([600, 75, 150, 70, 60]);
	} else if(i == 10) {
		return([600, 70, 80, 100, 80]);
	} else if(i == 11) {
		return([500, 70, 75, 130, 60]);
	} else if(i == 12) {
		return([600, 80, 80, 70, 100]);
	} else if(i == 13) {
		return([550, 75, 70, 60, 130]);
	} else if(i == 14) {
		return([800, 200, 170, 175, 180]);
	} else if(i == 15) {
		return([720, 220, 140, 170, 160]);
	} else if(i == 16) {
		return([800, 180, 200, 180, 170]);
	} else if(i == 17) {
		return([800, 160, 220, 175, 175]);
	} else if(i == 18) {
		return([800, 180, 180, 200, 170]);
	} else if(i == 19) {
		return([740, 175, 175, 220, 180]);
	} else if(i == 20) {
		return([800, 180, 170, 175, 200]);
	} else if(i == 21) {
		return([720, 175, 180, 170, 220]);
	}
}
function lockEnemyStats(): Void {
	EnemArray = getMaxStats(_root.EnemID);
	if(_root.EnemHP > EnemArray[0]) {
		_root.EnemHP = EnemArray[0];
	}
	if(_root.EnemATK > EnemArray[1]) {
		_root.EnemATK = EnemArray[1];
	}
	if(_root.EnemDEF > EnemArray[2]) {
		_root.EnemDEF = EnemArray[2];
	}
	if(_root.EnemMAG > EnemArray[3]) {
		_root.EnemMAG = EnemArray[3];
	}
	if(_root.EnemSPD > EnemArray[4]) {
		_root.EnemSPD = EnemArray[4];
	}
}
function levelScale(l: Number): Number {
	if(_root.arenaType == 1) {
		return(Math.ceil(l - (l * 0.30)));
	} else if(_root.arenaType == 2) {
		return(Math.ceil(l - (l * 0.10)));
	} else {
		return(l);
	}
}
function getEnemHPIncrease(l: Number): Number {
	if(l < 35) {
		return(_root.quickGenerate(1, 3, true));
	} else {
		return(_root.quickGenerate(5, 7, true));
	}
}
function generateStats(c: Number, l: Number): Void {
	_root.EnemHP = (_root.quickGenerate(100, 125, true));
	if(c == 2 or c == 6 or c == 7 or c == 14 or c == 15) {
		_root.EnemATK = (_root.quickGenerate(8, 11, true));
		_root.EnemDEF = (_root.quickGenerate(5, 6, true));
		_root.EnemSPD = (_root.quickGenerate(5, 6, true));
		_root.EnemMAG = (_root.quickGenerate(5, 6, true));
	} else if(c == 3 or c == 8 or c == 9 or c == 16 or c == 17) {
		_root.EnemATK = (_root.quickGenerate(5, 6, true));
		_root.EnemDEF = (_root.quickGenerate(8, 11, true));
		_root.EnemSPD = (_root.quickGenerate(5, 6, true));
		_root.EnemMAG = (_root.quickGenerate(5, 6, true));
	} else if(c == 4 or c == 10 or c == 11 or c == 18 or c == 19) {
		_root.EnemATK = (_root.quickGenerate(5, 6, true));
		_root.EnemDEF = (_root.quickGenerate(5, 6, true));
		_root.EnemSPD = (_root.quickGenerate(5, 6, true));
		_root.EnemMAG = (_root.quickGenerate(8, 11, true));
	} else if(c == 5 or c == 12 or c == 13 or c == 20 or c == 21) {
		_root.EnemATK = (_root.quickGenerate(5, 6, true));
		_root.EnemDEF = (_root.quickGenerate(5, 6, true));
		_root.EnemSPD = (_root.quickGenerate(8, 11, true));
		_root.EnemMAG = (_root.quickGenerate(5, 6, true));
	}
	for(i=1;i < l;i++) {
		_root.EnemHP += _root.getEnemHPIncrease(i);
		_root.EnemATK += _root.quickGenerate(1, 2, true);
		_root.EnemDEF += _root.quickGenerate(1, 2, true);
		_root.EnemSPD += _root.quickGenerate(1, 2, true);
		_root.EnemMAG += _root.quickGenerate(1, 2, true);
	}
	if(_root.getCreatureTier(c) == 3) {
		_root.EnemHP += Math.round(_root.EnemHP * 0.50);
	}
	if(_root.arenaType != 7 and _root.arenaType != 4) {
		lockEnemyStats();
	}
	_root.EnemSP = _root.createSP(_root.EnemHP, _root.EnemATK, _root.EnemDEF, _root.EnemSPD, _root.EnemMAG);
}
function generateStatsMax(f: Boolean): Void {
	EnemArray = getMaxStats(_root.EnemID);
	_root.EnemHP = EnemArray[0];
	_root.EnemATK = EnemArray[1];
	_root.EnemDEF = EnemArray[2];
	_root.EnemMAG = EnemArray[3];
	_root.EnemSPD = EnemArray[4];
	lockEnemyStats();
	if(f) {
		_root.EnemHP *= 2;
		_root.EnemATK *= 2;
		_root.EnemDEF *= 2;
		_root.EnemMAG *= 2;
		_root.EnemSPD *= 2;
	}
	_root.EnemSP = _root.createSP(_root.EnemHP, _root.EnemATK, _root.EnemDEF, _root.EnemSPD, _root.EnemMAG);
}
function generateEnemy(): Void {
	if(_root.arenaType == 1) {
		_root.EnemID = _root.quickGenerate(2, 4, true);
	} else if(_root.arenaType == 2) {
		_root.EnemID = _root.quickGenerate(6, 12, true);
	} else if(_root.arenaType == 3 or _root.arenaType == 6) {
		_root.EnemID = _root.quickGenerate(14, 20, true);
	} else if(_root.arenaType == 4) {
		if(_root.arenaBoost == 1) {
			if(_root.battleType != true) {
				_root.EnemID = _root.quickGenerate(2, 4, true);
			} else {
				_root.EnemID = _root.quickGenerate(6, 12, true);
			}
		} else if(_root.arenaBoost == 3) {
			_root.EnemID = _root.quickGenerate(6, 12, true);
		} else {
			_root.EnemID = _root.quickGenerate(14, 20, true);
		}
	} else if(_root.arenaType == 5 or _root.arenaType == 7 or _root.arenaType == 8) {
		if(_root.getCreatureTier(_root.character) == 1) {
			_root.EnemID = _root.quickGenerate(2, 4, true);
		} else if(_root.getCreatureTier(_root.character) == 2) {
			_root.EnemID = _root.quickGenerate(6, 12, true);
		} else {
			_root.EnemID = _root.quickGenerate(14, 20, true);
		}
	}
	if(_root.arenaType == 5 or _root.arenaType == 6) {
		enemLevel = 99;
		generateStatsMax(true);
	} else {
		enemLevel = _root.levelScale(_root.lockLevel(_root.quickGenerate((_root.level - (6 - (_root.current_round + (_root.arenaBoost * _root.getMaxBoost(_root.arenaBoost))))), (_root.level + (_root.current_round + (_root.arenaBoost * _root.getMaxBoost(_root.arenaBoost)))), true)));
		generateStats(_root.EnemID, enemLevel);
	}
}
function generateAI(): Number {
	if(_root.compareNumbers(_root.EnemATK, _root.EnemDEF) and _root.compareNumbers(_root.EnemATK, _root.EnemSPD) and _root.compareNumbers(_root.EnemATK, _root.EnemMAG)) {
		EnemPool = 1;
	} else if(_root.compareNumbers(_root.EnemDEF, _root.EnemATK) and _root.compareNumbers(_root.EnemDEF, _root.EnemSPD) and _root.compareNumbers(_root.EnemDEF, _root.EnemMAG)) {
		EnemPool = 2;
	} else if(_root.compareNumbers(_root.EnemMAG, _root.EnemATK) and _root.compareNumbers(_root.EnemMAG, _root.EnemDEF) and _root.compareNumbers(_root.EnemMAG, _root.EnemSPD)) {
		EnemPool = 3;
	} else if(_root.compareNumbers(_root.EnemSPD, _root.EnemATK) and _root.compareNumbers(_root.EnemSPD, _root.EnemDEF) and _root.compareNumbers(_root.EnemSPD, _root.EnemMAG)) {
		EnemPool = 4;
	} else {
		EnemPool = 0;
	}
	EnemRoll = _root.quickGenerate(1, 100, true);
	if(EnemRoll >= 15 and EnemPool != 0) {
		if(EnemPool == 1) {
			return(1);
		} else if(EnemPool == 2) {
			return(2);
		} else if(EnemPool == 3) {
			return(3);
		} else {
			return(4);
		}
	} else {
		return(Math.floor(_root.quickGenerate(1, 4)));
	}
}
function checkAdvantage(pStance: Number, eStance: Number): Number {
	//1 - Atk, 2 - Def, 3 - Spd, 4 - Mag
	if(pStance == eStance) {
		return(0);
	} else if(pStance == 1) {
		if(eStance == 2) {
			return(0);
		} else if(eStance == 3) {
			return(1);
		} else if(eStance == 4) {
			return(2);
		}
	} else if(pStance == 2) {
		if(eStance == 1) {
			return(0);
		} else if(eStance == 3) {
			return(2);
		} else if(eStance == 4) {
			return(1);
		}
	} else if(pStance == 3) {
		if(eStance == 1) {
			return(2);
		} else if(eStance == 2) {
			return(1);
		} else if(eStance == 4) {
			return(0);
		}
	} else if(pStance == 4) {
		if(eStance == 1) {
			return(1);
		} else if(eStance == 2) {
			return(2);
		} else if(eStance == 3) {
			return(0);
		}
	} else {
		return(2);
	}
}
function highestStatBoostPlayer(s: Number): Void {
	if(_root.compareNumbers(_root.CharCurATK, _root.CharCurDEF) and _root.compareNumbers(_root.CharCurATK, _root.CharCurSPD) and _root.compareNumbers(_root.CharCurATK, _root.CharCurMAG) and s == 1) {
		_root.PChance += Math.round(_root.PChance * 0.10);
	} else if(_root.compareNumbers(_root.CharCurDEF, _root.CharCurATK) and _root.compareNumbers(_root.CharCurDEF, _root.CharCurSPD) and _root.compareNumbers(_root.CharCurDEF, _root.CharCurMAG) and s == 2) {
		_root.PChance += Math.round(_root.PChance * 0.10);
	} else if(_root.compareNumbers(_root.CharCurMAG, _root.CharCurATK) and _root.compareNumbers(_root.CharCurMAG, _root.CharCurDEF) and _root.compareNumbers(_root.CharCurMAG, _root.CharCurSPD) and s == 4) {
		_root.PChance += Math.round(_root.PChance * 0.10);
	} else if(_root.compareNumbers(_root.CharCurSPD, _root.CharCurATK) and _root.compareNumbers(_root.CharCurSPD, _root.CharCurDEF) and _root.compareNumbers(_root.CharCurSPD, _root.CharCurMAG) and s == 3) {
		_root.PChance += Math.round(_root.PChance * 0.10);
	}
}
function highestStatBoostEnemy(s: Number): Void {
	if(_root.compareNumbers(_root.EnemATK, _root.EnemDEF) and _root.compareNumbers(_root.EnemATK, _root.EnemSPD) and _root.compareNumbers(_root.EnemATK, _root.EnemMAG) and s == 1) {
		_root.EChance += Math.round(_root.EChance * 0.10);
	} else if(_root.compareNumbers(_root.EnemDEF, _root.EnemATK) and _root.compareNumbers(_root.EnemDEF, _root.EnemSPD) and _root.compareNumbers(_root.EnemDEF, _root.EnemMAG) and s == 2) {
		_root.EChance += Math.round(_root.EChance * 0.10);
	} else if(_root.compareNumbers(_root.EnemMAG, _root.EnemATK) and _root.compareNumbers(_root.EnemMAG, _root.EnemDEF) and _root.compareNumbers(_root.EnemMAG, _root.EnemSPD) and s == 4) {
		_root.EChance += Math.round(_root.EChance * 0.10);
	} else if(_root.compareNumbers(_root.EnemSPD, _root.EnemATK) and _root.compareNumbers(_root.EnemSPD, _root.EnemDEF) and _root.compareNumbers(_root.EnemSPD, _root.EnemMAG) and s == 3) {
		_root.EChance += Math.round(_root.EChance * 0.10);
	}
}
function calcChances(): Void {
	_root.EnemStance = _root.generateAI();
	_root.ChancePool = _root.CharSP + _root.EnemSP;
	_root.FinalDraw = _root.quickGenerate(1, _root.ChancePool, true);
	_root.Advantage = _root.checkAdvantage(_root.CharStance, _root.EnemStance);
	_root.PChance = _root.CharSP;
	_root.EChance = _root.EnemSP;
	_root.highestStatBoostPlayer(_root.CharStance);
	_root.highestStatBoostEnemy(_root.EnemStance);
	if(_root.Advantage == 1) {
		_root.PChance += Math.round(_root.PChance * 0.40);
	} else if(_root.Advantage == 2) {
		_root.EChance += Math.round(_root.EChance * 0.40);
	}
	if(_root.quickGenerate(1, 15, true) <= _root.critBoost) {
		trace("Critical");
		_root.pCritical = true;
		_root.PChance += Math.round(_root.PChance * _root.CharCurCRIT);
	} else {
		_root.pCritical = false;
	}
	if(_root.quickGenerate(1, 15, true) <= 1) {
		trace("Enemy critical");
		_root.eCritical = true;
		_root.EChance += Math.round(_root.EChance * 0.2);
	} else {
		_root.eCritical = false;
	}
	trace("Advantage is " + _root.Advantage + ", PChance is " + _root.PChance + ", EChance is " + _root.EChance + ", Final Draw is " + _root.FinalDraw);
}
function showAdvantage(): Void {
	if(_root.Advantage == 1) {
		_root.pAdvantage.text = "Advantage!";
		_root.eAdvantage.text = "";
	} else if(_root.Advantage == 2) {
		_root.eAdvantage.text = "Advantage!";
		_root.pAdvantage.text = "";
	} else {
		_root.pAdvantage.text = "";
		_root.eAdvantage.text = "";
	}
}
function showCritical(i: Boolean): Void {
	if(i == true) {
		if(_root.pCritical == true) {
			_root.PCritical.text = "Critical hit!";
			_root.ECritical.text = "";
		}  else {
			_root.PCritical.text = "";
			_root.ECritical.text = "";
		}
	} else if(i == false) {
		if(_root.eCritical == true) {
			_root.ECritical.text = "Critical hit!";
			_root.PCritical.text = "";
		} else {
			_root.ECritical.text = "";
			_root.PCritical.text = "";
		}
	} else {
		_root.PCritical.text = "";
		_root.ECritical.text = "";
	}
}
function checkWin(): Boolean {
	if(_root.PChance >= _root.FinalDraw) {
		trace("Win by draw");
		return(true);
	} else if(_root.EChance >= _root.FinalDraw) {
		trace("Loss by draw");
		return(false);
	} else {
		if(_root.PChance >= _root.EChance) {
			trace("Win by comparison");
			return(true);
		} else {
			trace("Loss by comparison");
			return(false);
		}
	}
}
function endBattle(): Void {
	if(checkWin() == true) {
		_root.current_battle += 1;
		gotoAndPlay("ArenaBattle", 106);
	} else {
		gotoAndPlay("ArenaBattle", 147);
	}
}
function endTurn(i: Number): Void {
	if(i == 1) {
		_root.CharStance = 1;
	} else if(i == 2) {
		_root.CharStance = 2;
	} else if(i == 3) {
		_root.CharStance = 3;
	} else if(i == 4) {
		_root.CharStance = 4;
	} else {
		_root.CharStance = 0;
	}
	_root.play();
}
function setTimer(): Void {
	if(_root.arenaType == 1) {
		_root.battleTimer = 15;
	} else {
		_root.battleTimer = 10;
	}
}
function tickTimer(): Boolean {
	if(_root.battleTimer > 0) {
		_root.battleTimer -= 1;
		return(true);
	} else {
		return(false);
	}
}
function resetTimer(): Void {
	if(_root.battleTimer <= 0) {
		_root.setTimer();
	}
}
function turnTimer(): Void {
	if(_root.battleTimer <= 5) {
		_root.battleTimer = 5;
	}
}
function getStanceName(i: Number): String {
	if(i == 0) {
		return("NEUTRAL");
	} else if(i == 1) {
		return("ATTACK");
	} else if(i == 2) {
		return("DEFENSE");
	} else if(i == 3) {
		return("MAGIC");
	} else if(i == 4) {
		return("SPEED");
	} else {
		return("ERROR");
	}
}
function showStances(): Void {
	_root.playerStance.text = _root.vc_name + " IN\n" + getStanceName(_root.CharStance);
	_root.enemyStance.text = _root.EnemName + " IN\n" + getStanceName(_root.EnemStance);
}
function XPScale(n: Number): Number {
	if(_root.arenaType != 4) {
		if(_root.getCreatureTier(_root.character) > _root.arenaType) {
			return(Math.ceil(n - (n * 0.40)));
		} else {
			return(n);
		}
	} else {
		if(_root.arenaBoost < _root.getCreatureTier(_root.character)) {
			return(Math.ceil(n - (n * 0.40)));
		} else {
			return(n);
		}
	}
}
function xpBonus(aType: Number): Number {
	if(aType == 1) {
		return(0);
	} else if(aType == 2) {
		return(1);
	} else if(aType == 3) {
		return(1.50);
	} else if(aType == 4) {
		return(1);
	} else {
		return(0);
	}
}
function getBaseXP(aBoost: Number): Number {
	if(aBoost == 1) {
		return(0.10);
	} else {
		return(0.20);
	}
}
function battleRound(): Void {
	_root.c_kills += 1;
	if(_root.current_battle > 3 or _root.battleType) {
		if(_root.current_round >= getMaxRound()) {
			stopAllSounds();
			if(_root.arenaType != 5) {
				_root.xp_factor = Math.ceil((_root.c_kills * getBaseXP(_root.arenaBoost)) * (xpBonus(_root.arenaType) + (_root.arenaBoost / 1.3)));
				_root.mFactor = (10 * _root.arenaBoost);
			} else {
				_root.xp_factor = 0;
				_root.mFactor = 2;
			}
			_root.xp_type = false;
			_root.arena_result = true;
			if(_root.arenaType != 4 and _root.arenaType != 5) {
				subFood(_root.c_kills * 2);
			}
			gotoAndPlay("ArenaDone", 1);
			} else {
				stopAllSounds();
				gotoAndPlay("Arena", 1);
			}
	} else {
		gotoAndPlay("ArenaBattle", 2);
	}
}
function battleLost(): Void {
	stopAllSounds();
	_root.xp_type = false;
	_root.arena_result = false;
	if(_root.arenaType != 5) {
		if(_root.arenaBoost > 1) {
			_root.xp_factor = Math.ceil((_root.c_kills * getBaseXP(_root.arenaBoost)) * (_root.arenaBoost / 1.5));
		} else {
			_root.xp_factor = Math.ceil(_root.c_kills * getBaseXP(_root.arenaBoost));
		}
		if(_root.c_kills != 0) {
			_root.mFactor = (4 * _root.arenaBoost);
		} else {
			_root.mFactor = 0;
		}
	} else {
		_root.xp_factor = 0;
		_root.mFactor = 1;
	}
	if(_root.arenaType != 4 and _root.arenaType != 5) {
		subFood(_root.c_kills * 2);
	}
	gotoAndPlay("ArenaDone", 1);
}