function calculatePhys(moveDamage:Number, userATK: Number, oppDEF: Number): Number {
	return(userATK - (oppDEF / (moveDamage * 0.1)));
}
function calculateMag(moveDamage:Number, userMAG: Number, oppDEF: Number): Number {
	return(userMAG - (oppDEF / (moveDamage * 0.2)));
}
function calculateHapp(typeDamage: Number): Number {
	//unused
	return((_root.happ * -1) * 2);
}
function calculateStale(Damage: Number, isMag: Boolean): Number {
	if(isMag) {
		return(Damage * _root.stale * 1.5);
	} else {
		return(Damage * _root.stale);
	}
}
function calculateStaleStat(statChange: Number): Number {
	return(statChange * (_root.stale * 0.2));
}
function changeStat(stat: Number, statChange: Number): Number {
	if(Math.ceil(stat - (stat * statChange)) <= 1) {
		return(0);
	} else {
		return(Math.ceil(stat * statChange));
	}
}
function setStatChange(statNum: Number, statChange: Number): Void {
	//0 - ATK, 1 - DEF, 2 - SPD, 3 - MAG
	if(_root.turn and statChange >= 0) {
		statChange -= calculateStaleStat(statChange);
		if(statNum == 0) {
			_root.EnemCurATK -= changeStat(_root.EnemCurATK, statChange);
		} else if(statNum == 1) {
			_root.EnemCurDEF -= changeStat(_root.EnemCurDEF, statChange);
		} else if(statNum == 2) {
			_root.EnemCurSPD -= changeStat(_root.EnemCurSPD, statChange);
		} else if(statNum == 3) {
			_root.EnemCurMAG -= changeStat(_root.EnemCurMAG, statChange);
		}
	} else if(_root.turn and statChange < 0) {
		statChange -= calculateStaleStat(statChange);
		if(statNum == 0) {
			_root.CharCurATK -= changeStat(_root.CharCurATK, statChange);
		} else if(statNum == 1) {
			_root.CharCurDEF -= changeStat(_root.CharCurDEF, statChange);
		} else if(statNum == 2) {
			_root.CharCurSPD -= changeStat(_root.CharCurSPD, statChange);
		} else if(statNum == 3) {
			_root.CharCurMAG -= changeStat(_root.CharCurMAG, statChange);
		}
	} else if(!_root.turn and statChange >= 0) {
		if(statNum == 0) {
			_root.CharCurATK -= changeStat(_root.CharCurATK, statChange);
		} else if(statNum == 1) {
			_root.CharCurDEF -= changeStat(_root.CharCurDEF, statChange);
		} else if(statNum == 2) {
			_root.CharCurSPD -= changeStat(_root.CharCurSPD, statChange);
		} else if(statNum == 3) {
			_root.CharCurMAG -= changeStat(_root.CharCurMAG, statChange);
		}
	} else {
		if(statNum == 0) {
			_root.EnemCurATK -= changeStat(_root.EnemCurATK, statChange);
		} else if(statNum == 1) {
			_root.EnemCurDEF -= changeStat(_root.EnemCurDEF, statChange);
		} else if(statNum == 2) {
			_root.EnemCurSPD -= changeStat(_root.EnemCurSPD, statChange);
		} else if(statNum == 3) {
			_root.EnemCurMAG -= changeStat(_root.EnemCurMAG, statChange);
		}
	}
}
function checkTypeAdvantage(atkType: Number, defType: Number): Number {
	//0 - Netural, 1 - Pos, 2 - Negative
	//1 - Mag, 2 - Def, 3 - Spd, 4 - Atk
	if(atkType == defType) {
		return(0);
	} else if(atkType == 1) {
		if(defType == 2) {
			return(1);
		} else if(defType == 3) {
			return(0);
		} else if(defType == 4) {
			return(2);
		} else {
			return(0);
		}
	} else if(atkType == 2) {
		if(defType == 1) {
			return(2);
		} else if(defType == 3) {
			return(1);
		} else if(defType == 4) {
			return(0);
		} else {
			return(0);
		}
	} else if(atkType == 3) {
		if(defType == 1) {
			return(0);
		} else if(defType == 2) {
			return(2);
		} else if(defType == 4) {
			return(1);
		} else {
			return(0);
		}
	} else if(atkType == 4) {
		if(defType == 1) {
			return(1);
		} else if(defType == 2) {
			return(0);
		} else if(defType == 3) {
			return(2);
		} else {
			return(0);
		}
	} else {
		return(2);
	}
}
function calculateFinal(moveID: Number, moveCore: Number): Number {
	if (moveCore == 0) {
		if(_root.turn) {
			inputATK = _root.CharCurATK;
			inputDEF = _root.EnemCurDEF;
		} else {
			inputATK = _root.EnemCurATK;
			inputDEF = _root.CharCurDEF;
		}
		totalDamage = (moveDamage + calculatePhys(moveDamage, inputATK, inputDEF));
		if(_root.turn) {
			totalDamage -= calculateStale(totalDamage, false);
		}
	} else if (moveCore == 1) {
		if(_root.turn) {
			inputMAG = _root.CharCurMAG;
			inputDEF = _root.EnemCurDEF;
		} else {
			inputMAG = _root.EnemCurMAG;
			inputDEF = _root.CharCurDEF;
		}
		totalDamage = (moveDamage + calculateMag(moveDamage, inputMAG, inputDEF));
		if(_root.turn) {
			totalDamage -= calculateStale(totalDamage, true);
		}
	} else {
		totalDamage = 0;
	}
	if(_root.turn) {
		_root.advantage = checkTypeAdvantage(_root.moveType, _root.enemType);
	} else {
		_root.advantage = checkTypeAdvantage(_root.moveType, _root.coreType);
	}
	if(_root.advantage == 1) {
		totalDamage += (totalDamage * 0.30);
	} else if(_root.advantage == 2) {
		totalDamage -= (totalDamage * 0.40);
	}
	if(_root.turn) {
		critP = _root.critBoost;
		if(_root.CharCurHP <= (_root.coreHP * 0.2)) {
			critP += 1;
		}
		critA = _root.CharCurCRIT;
	} else {
		critP = 1;
		critA = 0.2;
	}
	if (_root.quickGenerate(1, 15, true) <= critP) {
			totalDamage += (totalDamage * critA);
			_root.isCrit = true;
	}
	if(_root.moveType == _root.coreType and _root.turn == true) {
		totalDamage += (totalDamage * 0.15);
	}
	return(Math.round(totalDamage));
}
function handleDamage(): Void {
	if (_root.turn) {
		_root.EnemCurHP -= _root.returnDamage;
	} else {
		_root.CharCurHP -= _root.returnDamage;
	}
}
function moveIndex(moveID : Number, enemTurn: Boolean): Void {
	//1 - Mag, 2 - Def, 3 - Spd, 4 - Atk
	_root.statInfo = undefined;
	_root.isCrit = false;
	_root.advantage = 0;
	if(moveID == 1) {
		moveCore = 0;
		_root.moveDamage = 15;
		_root.moveType = 4;
		_root.moveAnim = 10;
		_root.moveName = "CRASH";
	} else if(moveID == 2) {
		moveCore = 1;
		_root.moveDamage = 15;
		_root.moveType = 1;
		_root.moveAnim = 76;
		_root.moveName = "JOLT";
	} else if(moveID == 3) {
		moveCore = 0;
		_root.moveAnim = 111;
		_root.moveDamage = 20;
		_root.moveType = 3;
		_root.moveName = "CLAW";
	} else if(moveID == 4) {
		moveCore = 0;
		_root.moveAnim = 138;
		_root.moveDamage = 10;
		_root.moveType = 2;
		if(_root.quickGenerate(1, 99, true) <= 15) {
			_root.statInfo = [2, 0.10];
		}
		_root.moveName = "ROCK BREAK";
	} else if(moveID == 5) {
		moveCore = 0;
		_root.moveAnim = 507;
		_root.moveDamage = 15;
		_root.moveType = 2;
		_root.moveName = "BASH";
	} else if(moveID == 6) {
		moveCore = 1;
		_root.moveAnim = 183;
		_root.moveDamage = 10;
		_root.moveType = 1;
		if(_root.quickGenerate(1, 99, true) <= 15) {
			_root.statInfo = [1, 0.10];
		}
		_root.moveName = "BUBBLES";
	} else if(moveID == 7) {
		moveCore = 0;
		_root.moveAnim = 296;
		_root.moveDamage = 15;
		_root.moveType = 4;
		if(_root.quickGenerate(1, 99, true) <= 10) {
			_root.statInfo = [0, 0.10];
		}
		_root.moveName = "PUNCH";
	} else if(moveID == 8) {
		moveCore = 0;
		_root.moveAnim = 424;
		_root.moveDamage = 15;
		_root.moveType = 2;
		if(_root.quickGenerate(1, 99, true) <= 10) {
			_root.statInfo = [1, 0.10];
		}
		_root.moveName = "FLAME PUNCH";
	} else if(moveID == 9) {
		moveCore = 0;
		_root.moveAnim = 386;
		_root.moveDamage = 20;
		_root.moveType = 1;
		_root.moveName = "SHOCK PUNCH";
	} else if(moveID == 10) {
		moveCore = 0;
		_root.moveAnim = 356;
		_root.moveDamage = 20;
		_root.moveType = 3;
		_root.moveName = "QUICK PUNCH";
	} else if(moveID == 11) {
		moveCore = 0;
		_root.moveAnim = 668;
		_root.moveDamage = 30;
		_root.moveType = 4;
		_root.moveName = "HARD TACKLE";
	} else if(moveID == 12) {
		moveCore = 1;
		_root.moveAnim = 221;
		_root.moveDamage = 25;
		_root.moveType = 1;
		_root.moveName = "ICE SHARD";
	} else if(moveID == 13) {
		moveCore = 1;
		_root.moveAnim = 264;
		_root.moveDamage = 30;
		_root.moveType = 2;
		_root.moveName = "LAVA RUSH";
	} else if(moveID == 14) {
		moveCore = 1;
		_root.moveAnim = 280;
		_root.moveDamage = 30;
		_root.moveType = 1;
		if(_root.quickGenerate(1, 99, true) <= 10) {
			_root.statInfo = [1, 0.10];
		}
		_root.moveName = "GEYSER";
	} else if(moveID == 15) {
		moveCore = 0;
		_root.moveAnim = 454;
		_root.moveDamage = 40;
		_root.moveType = 4;
		if(_root.quickGenerate(1, 99, true) <= 10) {
			_root.statInfo = [2, 0.10];
		}
		_root.moveName = "CHOMP";
	} else if(moveID == 16) {
		moveCore = 0;
		_root.moveAnim = 477;
		_root.moveDamage = 35;
		_root.moveType = 3;
		_root.moveName = "AQUA PUNCH";
	} else if(moveID == 17) {
		moveCore = 1;
		_root.moveAnim = 150;
		_root.moveDamage = 20;
		_root.moveType = 1;
		if(_root.quickGenerate(1, 99, true) <= 50) {
			_root.statInfo = [0, 0.15];
		}
		_root.moveName = "TOXINS";
	} else if(moveID == 18) {
		moveCore = 1;
		_root.moveAnim = 221;
		_root.moveDamage = 30;
		_root.moveType = 1;
		_root.moveName = "ICE BLAST";
	} else if(moveID == 19) {
		moveCore = 0;
		_root.moveAnim = 638;
		_root.moveDamage = 35;
		_root.moveType = 3;
		_root.moveName = "SUPER SPEED";
	} else if(moveID == 20) {
		moveCore = 1;
		_root.moveAnim = 264;
		_root.moveDamage = 40;
		_root.moveType = 2;
		_root.moveName = "TRIPLE RUSH";
	} else if(moveID == 21) {
		moveCore = 1;
		_root.moveAnim = 280;
		_root.moveDamage = 35;
		_root.moveType = 1;
		_root.moveName = "TRIPLE GUSH";
	} else if(moveID == 22) {
		moveCore = 0;
		_root.moveAnim = 120;
		_root.moveDamage = 40;
		_root.moveType = 3;
		_root.moveName = "CROSS CLAW";
	} else if(moveID == 23) {
		moveCore = 1;
		_root.moveAnim = 603;
		_root.moveDamage = 40;
		_root.moveType = 1;
		_root.moveName = "SUPER JOLT";
	} else if(moveID == 24) {
		moveCore = 0;
		_root.moveAnim = 326;
		_root.moveDamage = 35;
		_root.moveType = 2;
		if(_root.quickGenerate(1, 99, true) <= 15) {
			_root.statInfo = [1, 0.10];
		}
		_root.moveName = "ROCK PUNCH";
	} else if(moveID == 25) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [0, 0.20];
		_root.moveName = "HOWL";
	} else if(moveID == 26) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [1, 0.20];
		_root.moveName = "DIFFUSE";
	} else if(moveID == 27) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [2, 0.20];
		_root.moveName = "SHRIEK";
	} else if(moveID == 28) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [3, 0.20];
		_root.moveName = "OMEN";
	} else if(moveID == 29) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [0, 0.30];
		_root.moveName = "HI-FREQ";
	} else if(moveID == 30) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [1, 0.30];
		_root.moveName = "LO-FREQ";
	} else if(moveID == 31) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [2, 0.30];
		_root.moveName = "SCREAM";
	} else if(moveID == 32) {
		moveCore = 2;
		_root.moveAnim = 40;
		_root.moveDamage = 0;
		_root.statInfo = [3, 0.30];
		_root.moveName = "CURSE";
	} else if(moveID == 33) {
		moveCore = 2;
		_root.moveAnim = 58;
		_root.moveDamage = 0;
		_root.statInfo = [0, -0.20];
		_root.moveName = "CRY";
	} else if(moveID == 34) {
		moveCore = 2;
		_root.moveAnim = 58;
		_root.moveDamage = 0;
		_root.statInfo = [1, -0.20];
		_root.moveName = "IRON WILL";
	} else if(moveID == 35) {
		moveCore = 2;
		_root.moveAnim = 58;
		_root.moveDamage = 0;
		_root.statInfo = [2, -0.20];
		_root.moveName = "BOOST";
	} else if(moveID == 36) {
		moveCore = 2;
		_root.moveAnim = 58;
		_root.moveDamage = 0;
		_root.statInfo = [3, -0.20];
		_root.moveName = "VEIL";
	} else if(moveID == 37) {
		moveCore = 2;
		_root.moveAnim = 537;
		_root.moveDamage = 0;
		_root.statInfo = [_root.quickGenerate(0, 2, true), 0.30];
		_root.moveName = "OMNIPRESENT";
	} else if(moveID == 38) {
		moveCore = 0;
		_root.moveDamage = 15;
		_root.moveType = 0;
		_root.moveAnim = 10;
		_root.moveName = _root.generateStruggleName(_root.quickGenerate(0, 9, true));
	} else {
		moveCore = 0;
		_root.moveAnim = 10;
		_root.moveDamage = 0;
		_root.moveName = "NEUTRAL";
	}
	if (enemTurn == true) {
		_root.turn = false;
	} else {
		_root.turn = true;
	}
	if(moveID == _root.lastTurnID and _root.turn ) {
		_root.stale += 0.10;
	} else if(moveID != _root.lastTurnID and _root.turn) {
		if(_root.stale - 0.05 >= 0) {
			_root.stale -= 0.05;
		}
	}
	if(_root.moveDamage > 0) {
		_root.returnDamage = calculateFinal(moveID, moveCore);
		if(_root.returnDamage <= 0) {
			_root.returnDamage = 1;
		}
		handleDamage();
	} else {
		_root.returnDamage = 0;
	}
	if(_root.statInfo[0] != undefined) {
		setStatChange(statInfo[0], statInfo[1]);
	}
	if(enemTurn == false) {
		_root.lastTurnID = moveID;
		_root.turnCounter += 1;
	}
	_root.turnOrder += 1;
	gotoAndPlay("BattleAnimations", 1);
}
function generateAIMove(): Number {
	p_o = _root.quickGenerate(1, 99, true);
	p_s = _root.quickGenerate(1, 79, true);
	if(_root.CharCurHP <= (_root.coreHP * 0.4)) {
		p_o += _root.quickGenerate(1, 24, true);
	} else if(_root.CharCurHP >= (_root.coreHP * 0.6)) {
		p_s += _root.quickGenerate(1, 14, true);
	}
	p = _root.compareNumbers(p_o, p_s);
	lock = true;
	while(lock) {
			s = _root.quickGenerate(0, 2, true);
			if(p and _root.enemMoves[s] <= 24) {
				lock = false;
			} else if(!p and _root.enemMoves[s] >= 25) {
				lock = false;
			} else if(_root.EnemID == 23) {
				lock = false;
			}
	}
	return(s);
}
function speedCheck(): Boolean {
	if(_root.CharCurSPD >= _root.EnemCurSPD) {
		return(true);
	} else {
		return(false);
	}
}
function startTurn(playerMove: Number): Void {
	_root.turnOrder = 0;
	_root.enemMove = _root.enemMoves[_root.generateAIMove()];
	if(_root.speedCheck()) {
		_root.moveIndex(playerMove, false);
	} else {
		_root.nextTurn = playerMove;
		_root.moveIndex(_root.enemMove, true);
	}
}
function conTurn(wasChar: Boolean): Void {
	if(_root.deathCheck(wasChar) == 0) {
		if(_root.turnOrder < 2) {
			if(wasChar) {
				moveIndex(_root.enemMove, true);
			} else {
				moveIndex(_root.nextTurn, false);
			}
		} else {
			gotoAndPlay("Battle", 11);
		}
	} else {
		gotoAndPlay("BattleAnimations", 3);
	}
}
function boxText(): String {
	if (_root.turn == true) {
		curName = _root.vc_name;
	} else if (_root.turn == false) {
		curName = "Enemy " + _root.EnemName;
	} else {
		return("ERROR");
	}
	return(curName + " used\n" + _root.moveName + "!");
}
function checkHealth(isEnemy : Boolean): Boolean {
    if (isEnemy) {
        if (_root.EnemCurHP <= 0) {
            return(true);
        } else {
            return(false);
        }
    } else if (!isEnemy) {
        if (_root.CharCurHP <= 0) {
            return(true);
        } else {
            return(false);
        }
    }
}
function defaultBoxText(): Void {
	_root.MoveName.text = "";
	_root.MoveDesc.text = "Hover over a move to see its effects!";
}
function setTurnCounter(): Void {
	if(_root.turnCounter >= 10) {
		_root.TurnCounter.text = "Turn " + _root.turnCounter;
	} else {
		_root.TurnCounter.text = "Turn 0" + _root.turnCounter;
	}
}
function setTurnName(Turn: Boolean): Void {
	if(Turn) {
		_root.TurnName.text = "PLAYER\nTURN!";
	} else {
		_root.TurnName.text = "ENEMY\nTURN!";
	}
}
function setAnim(): Void {
	if(_root.turn) {
		if(_root.moveAnim == 58) {
			_root.BattleAnim._x = 203.20;
		} else {
			_root.BattleAnim._x = 603.20;
		}
	} else {
		if(_root.moveAnim == 58) {
			_root.BattleAnim._x = 603.20;
		} else {
			_root.BattleAnim._x = 203.20;
		}
	}
	_root.BattleAnim.gotoAndPlay(_root.moveAnim);
}
function setAnimDamage(): Void {
	if(_root.turn) {
		if(_root.moveAnim == 58 or _root.returnDamage <= 0) {
			_root.DamageNum._x = -4000;
		} else {
			_root.DamageNum._x = 603.20;
		}
	} else {
		if(_root.moveAnim == 58 or _root.returnDamage <= 0) {
			_root.DamageNum._x = -4000;
		} else {
			_root.DamageNum._x = 203.20; 
		}
	}
	_root.BattleAnim.gotoAndPlay(1);
}
function gotoDamage(): Void {
	gotoAndPlay("BattleAnimations", 2);
}
function showMoveDesc(): Void {
	if(_root.turn) {
		_root.TurnName.text = "Player Turn";
		_root.MoveDesc.text = _root.vc_name + " used\n" + _root.moveName + "!";
	} else {
		_root.TurnName.text = "Enemy Turn";
		_root.MoveDesc.text = "Enemy " + _root.getName(_root.EnemID) + " used\n" + _root.moveName + "!";
	}
}
function showMoveEffect(): Void {
	if(_root.statInfo[0] == 0) {
		userStat = "Attack";
	} else if(_root.statInfo[0] == 1) {
		userStat = "Defense";
	} else if(_root.statInfo[0] == 2) {
		userStat = "Speed";
	} else if(_root.statInfo[0] == 3) {
		userStat = "Magic";
	}
	_root.MoveDesc.text = _root.MoveDesc.text + "\n\n";
	if(_root.advantage == 1) {
		_root.MoveDesc.text = _root.MoveDesc.text + "It's super effective!\n";
	} else if(_root.advantage == 2) {
		_root.MoveDesc.text = _root.MoveDesc.text + "It's ineffective!\n";
	}
	if(_root.statInfo[1] > 0) {
		_root.MoveDesc.text = _root.MoveDesc.text + userStat + " decreased!";
	} else if(_root.statInfo[1] < 0) {
		_root.MoveDesc.text = _root.MoveDesc.text + userStat + " increased!";
	}
}
function showCrit(): Void {
	if(_root.isCrit) {
		_root.CritText.text = "Critical hit!";
	} else {
		_root.CritText.text = "";
	}
}
function showMoveInfo(i: Number): Void {
	a = _root.getMoveInfo(i);
	if(a[1] == "N/A") {
		_root.MoveName.text = a[2];
	} else {
		_root.MoveName.text = a[2] + "/" + a[1];
	}
	if(a[3] > 0) {
		_root.MoveDesc.text = "Deals " + a[3] + " base damage.";
	} else {
		_root.MoveDesc.text = "";
	}
	if(a[4] != "N/A") {
		_root.MoveDesc.text = _root.MoveDesc.text + " " + a[4];
	}
}
function deathCheck(Turn: Boolean): Number {
	//0 - No death, 1 - Enem death, 2 - Player death
	if(Turn and _root.returnDamage >= 1) {
		if(_root.EnemCurHP <= 0) {
			return(1);
		} else {
			return(0);
		}
	} else if(!Turn and _root.returnDamage >= 1) {
		if(_root.CharCurHP <= 0) {
			return(2);
		} else {
			return(0);
		}
	} else {
		return(0);
	}
}
function gotoDeath(): Void {
	gotoAndPlay("BattleAnimations", 4);
}
function finalCheck(): Void {
	if(_root.deathCheck(_root.turn) == 1) {
		if(_root.towerInProg == 14 and _root.voidPhase == 2) {
			gotoAndPlay("VoidIntro3", 1);
		} else if(_root.towerInProg == 14 and _root.voidPhase == 3) { 
			gotoAndPlay("VoidOutro", 1);
		} else {
			_root.battleRound();
		}
	} else {
		_root.battleLost();
	}
}
function generateStruggleName(n: Number): String {
	if(n == 0) {
		return("MERCY");
	} else if(n == 1) {
		return("PLEASE STOP");
	} else if(n == 2) {
		return("IT HURTS");
	} else if(n == 3) {
		return("BEG");
	} else if(n == 4) {
		return("FORGIVE ME");
	} else if(n == 5) {
		return("SAVE ME");
	} else if(n == 6) {
		return("SUFFERING");
	} else if(n == 7) {
		return("IT BURNS");
	} else if(n == 8) {
		return("MAKE IT STOP");
	} else if(n == 9) {
		return("NO MORE");
	} else if(n == 10) {
		return("monster1");
	}
}
function hideQuitButton(): Void {
	if(_root.towerInProg == 14 and _root.voidPhase == 3) {
		_root.quitButton._x = -4000;
	}
}