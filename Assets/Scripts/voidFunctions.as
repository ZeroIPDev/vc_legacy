function displayEXPFrame(): Void {
	_root.voidEXP.gotoAndStop(Math.round((_root.void_xp / _root.void_next) * 20));
}
function displayVoidLevel(): Void {
	_root.drlevel.text = "Lv." + _root.voidLevel;
}
function displayVoidEXP(): Void {
	_root.drprogress.text = _root.void_xp + "/" + _root.void_next;
}
function displaySector(Type: String, Num: Number, Level: Number, Hr: Number, Min: Number): Void {
	_root.sectName.text = "Sector " + Type + Num + " - Lv." + Level;
	if(Hr == 0) {
		_root.sectTime.text = Min + "min";
	} else {
		_root.sectTime.text = Hr + "hr " + Min + "min";
	}
}
function showCurrentSector(): Void {
	if(_root.voidInProgress != 0 and _root.voidInProgress != undefined) {
		if(_root.voidInProgress < 10) {
			_root.curSector.text = "Drilling:\nSector 0" + _root.voidInProgress;
		} else {
			_root.curSector.text = "Drilling:\nSector " + _root.voidInProgress;
		}
	}
}
function sectorLocked(): Void {
	_root.wrongsound.start(0, 1);
	_root.sectName.text = "Sector Locked!";
	_root.sectTime.text = "";
}
function gotoSector(Type: String, Num: Number, Level: Number, Hr: Number, Min: Number): Void {
	if(_root.voidInProgress == 0) {
		if(Num <= 2 and _root.voidLevel >= 1) { 
			sectorLocked();
		} else if(_root.void_xp == 0 and _root.voidLevel == 0 and Num != 1) {
			sectorLocked();
		} else if(_root.void_xp >= 1 and _root.voidLevel == 0 and Num != 2) {
			sectorLocked();
		} else {
			if(_root.voidLevel >= Level) {
				_root.sectType = Type;
				_root.sectNum = Num;
				_root.sectLevel = Level;
				_root.sectHr = Hr;
				_root.sectMin = Min;
				_root.rightsound.start(0, 1);
				gotoAndPlay(2);
			} else {
				sectorLocked();
			}
		}
	} else if(_root.voidInProgress == Num) {
		_root.sectType = Type;
		_root.sectNum = Num;
		_root.sectLevel = Level;
		_root.sectHr = Hr;
		_root.sectMin = Min;
		_root.rightsound.start(0, 1);
		gotoAndPlay(3);
	} else {
		_root.wrongsound.start(0, 1);
		_root.sectName.text = "Drill In-Progress!";
		_root.sectTime.text = "";
	}
}
function getDrillDrops(i: Number): Void {
	if(i == 1) {
		dropMoney = 100;
		dropChest = 0;
		dropSynth = 0;
	} else if(i == 2) {
		dropMoney = 70;
		dropChest = 20;
		dropSynth = 10;
	} else if(i == 3) {
		dropMoney = 30;
		dropChest = 50;
		dropSynth = 20;
	} else if(i == 4) {
		dropMoney = 20;
		dropChest = 30;
		dropSynth = 50;
	} else if(i == 5) {
		dropMoney = 50;
		dropChest = 20;
		dropSynth = 30;
	} else if(i == 6) {
		dropMoney = 20;
		dropChest = 70;
		dropSynth = 10;
	} else if(i == 7) {
		dropMoney = 10;
		dropChest = 20;
		dropSynth = 70;
	} else if(i == 8) {
		dropMoney = 30;
		dropChest = 60;
		dropSynth = 10;
	} else if(i == 9) {
		dropMoney = 10;
		dropChest = 30;
		dropSynth = 60;
	} else if(i == 10) {
		dropMoney = 40;
		dropChest = 45;
		dropSynth = 15;
	} else if(i == 11) {
		dropMoney = 15;
		dropChest = 40;
		dropSynth = 45;
	} else if(i == 12) {
		dropMoney = 45;
		dropChest = 15;
		dropSynth = 40;
	} else if(i == 13) {
		dropMoney = 35;
		dropChest = 50;
		dropSynth = 15;
	} else if(i == 14) {
		dropMoney = 15;
		dropChest = 35;
		dropSynth = 50;
	} else if(i == 15) {
		dropMoney = 30;
		dropChest = 65;
		dropSynth = 5;
	} else if(i == 16) {
		dropMoney = 30;
		dropChest = 5;
		dropSynth = 65;
	} else if(i == 17) {
		dropMoney = 5;
		dropChest = 90;
		dropSynth = 5;
	} else if(i == 18) {
		dropMoney = 5;
		dropChest = 5;
		dropSynth = 90;
	} else if(i == 19) {
		dropMoney = 10;
		dropChest = 80;
		dropSynth = 10;
	} else if(i == 20) {
		dropMoney = 10;
		dropChest = 10;
		dropSynth = 80;
	} else if(i == 21) {
		dropMoney = 80;
		dropChest = 10;
		dropSynth = 10;
	} else if(i == 22) {
		dropMoney = 25;
		dropChest = 50;
		dropSynth = 25;
	} else if(i == 23) {
		dropMoney = 25;
		dropChest = 25;
		dropSynth = 50;
	} else if(i == 24) {
		dropMoney = 30;
		dropChest = 40;
		dropSynth = 30;
	} else if(i == 25) {
		dropMoney = 30;
		dropChest = 30;
		dropSynth = 40;
	} else if(i == 26) {
		dropMoney = 8;
		dropChest = 90;
		dropSynth = 2;
	} else if(i == 27) {
		dropMoney = 2;
		dropChest = 8;
		dropSynth = 90;
	} else if(i == 28) {
		dropMoney = 15;
		dropChest = 80;
		dropSynth = 5;
	} else if(i == 29) {
		dropMoney = 2;
		dropChest = 40;
		dropSynth = 58;
	} else if(i == 30) {
		dropMoney = 90;
		dropChest = 5;
		dropSynth = 5;
	} else if(i == 31) {
		dropMoney = 50;
		dropChest = 36;
		dropSynth = 14;
	} else if(i == 32) {
		dropMoney = 1;
		dropChest = 98;
		dropSynth = 1;
	} else if(i == 33) {
		dropMoney = 98;
		dropChest = 1;
		dropSynth = 1;
	} else if(i == 34) {
		dropMoney = 1;
		dropChest = 1;
		dropSynth = 98;
	}
}
function chooseDrop(): Array {
	//0 - Money, 1 - Chest, 2 - Synth
	poolTable = [dropMoney, dropChest, dropSynth];
	poolTable.sort(Array.DESCENDING);
	var poolValues: Array = new Array();
	for(i=0;i<3;i++) {
		if(dropMoney == poolTable[i]) {
			poolValues.push(0);
		} else if(dropChest == poolTable[i]) {
			poolValues.push(1);
		} else if(dropSynth == poolTable[i]) {
			poolValues.push(2);
		}
	}
	for(i=0;i<3;i++) {
		pool = _root.quickGenerate(1, 99, true);
		if(pool <= poolTable[i]) {
			dropType = poolValues[i];
			i=2;
		} else {
			if(i == 2) {
				i=0;
			}
		}
	}
	if(dropType == 0 or _root.chests.length >= 31 or _root.synthRed >= 9999 or _root.synthBlue >= 9999 or _root.synthGreen >= 9999 or _root.synthPurple >= 9999) {
		dropType = 0;
		value = _root.quickGenerate((100 * (sectLevel + 1)), (1000 * (sectLevel + 1)), true);
	} else if(dropType == 1) {
		if(sectLevel <= 1) {
			value = 1;
		} else if(sectLevel <= 3) {
			value = _root.quickGenerate(1, 1, true);
		} else if(sectLevel <= 6) {
			value = _root.quickGenerate(1, 2, true);
		} else if(sectLevel <= 9) {
			value = _root.quickGenerate(2, 3, true);
		} else {
			value = _root.quickGenerate(3, 4, true);
		}
	} else if(dropType == 2) {
		if(sectLevel <= 3) {
			value = _root.quickGenerate(5, 8, true);
		} else if(sectLevel <= 6) {
			value = _root.quickGenerate(6, 8, true);
		} else if(sectLevel <= 9) {
			value = _root.quickGenerate(7, 9, true);
		} else {
			value = _root.quickGenerate(8, 10, true);
		}
	}
	return([dropType, value]);
}
function startDrill(): Void {
	_root.startTime = _root.updateTime();
	_root.drillTime = ((_root.sectHr * 60) + _root.sectMin) * 60000;
	_root.drillDrop = _root.chooseDrop();
	_root.voidInProgress = _root.sectNum;
	_root.isDrillBoost = false;
	gotoAndPlay(3);
}
function checkDrill(): Void {
	updateTimeText();
	if(timeValue <= 0) {
		gotoAndPlay(34);
	}
}
function updateTimeText(): Void {
	timeValue = (startTime + drillTime) - updateTime();
	timeValueHours = Math.floor((timeValue / 60000) / 60);
	timeValueMinutes = Math.floor(timeValue / 60000);
	timeValueSeconds = Math.floor(timeValue / 1000);
	if(timeValueHours != 0) {
		_root.timeRemain.text =  timeValueHours + "hr " + (timeValueMinutes - (timeValueHours * 60)) + "min";
	} else {
		if(timeValueMinutes != 0) {
			_root.timeRemain.text = timeValueMinutes + "min " + (timeValueSeconds - (timeValueMinutes * 60)) + "sec";
		} else {
			_root.timeRemain.text = timeValueSeconds + " seconds";
		}
	}
}
function giveDrop(skip: Boolean): Void {
	if(skip != true) {
		_root.voidInProgress = 0;
	}
	if(_root.drillDrop[0] == 0) {
		_root.giftType.gotoAndStop(1);
		_root.gtext.text = _root.drillDrop[1] + " Dollars!";
		_root.giveCashFlat(_root.drillDrop[1]);
	} else if(_root.drillDrop[0] == 1) {
		_root.giftType.gotoAndStop(4);
		_root.giftType.chest. gotoAndStop(_root.drillDrop[1]);
		_root.gtext.text = "Equipment Chest!";
		_root.chests.push(_root.drillDrop[1]);
	} else if(_root.drillDrop[0] == 2) {
		_root.giftType.gotoAndStop(5);
		plusR = 1;
		plusB = 1;
		plusG = 1;
		plusP = 1;
		for(i=0;i < _root.drillDrop[1];i++) {
			n = _root.quickGenerate(1, 3, true);
			if(n == 1) {
				_root.synthRed += 1;
				plusR += 1;
			} else if(n == 2) {
				_root.synthBlue += 1;
				plusB += 1;
			} else if(n == 3) {
				_root.synthGreen += 1;
				plusG += 1;
			} else if(n == 4) {
				_root.synthPurple += 1;
				plusP += 1;
			}
		}
		_root.gtext.text = "Synth Drops!\n+" + plusR + " Red\n+" + plusB + " Blue\n+" + plusG + " Green\n+" + plusP + " Purple";
	}
}
function drillXP(): Void {
	if(_root.void_xp + 1 >= _root.void_next and _root.sectLevel == _root.voidLevel and _root.voidLevel < 13) {
		_root.voidLevel += 1;
		if(_root.voidLevel < 13) {
			_root.void_xp = 0;
			_root.void_next += 1;
		} else {
			_root.void_xp = 0;
			_root.void_next = 0;
		}
	} else {
		if(_root.sectLevel == _root.voidLevel and _root.voidLevel < 13) {
			_root.void_xp += 1;
		}
	}
}
function gotoBoost(): Void {
	if(_root.sectNum <= 2 or _root.isDrillBoost == true) {
		_root.wrongsound.start(0, 1);
		_root.drillText.text = "Boost Locked!";
	} else {
		_root.rightsound.start(0, 1);
		gotoAndStop(35);
	}
}
function boostPrice(): Array {
	//Synth Cost, Money Cost
	return([(1 * _root.sectLevel), (500 * _root.sectLevel)]);
}
function setBoostText(i: Number): Void {
	_root.rCost = i;
	_root.bCost = i;
	_root.gCost = i;
	_root.pCost = i;
}
function setBoostPrice(): Void {
	p = boostPrice();
	setBoostText(p[0]);
	_root.cashText.text = p[1];
	_root.cashMoney.gotoAndStop(2);
}
function boostDrill(): Void {
	p = boostPrice();
	if(synthRed >= p[0] and synthBlue >= p[0] and synthGreen >= p[0] and synthPurple >= p[0] and _root.checkCost(p[1])) {
		_root.synthRed -= p[0];
		_root.synthBlue -= p[0];
		_root.synthGreen -= p[0];
		_root.synthPurple -= p[0];
		_root.money -= p[1];
		_root.drillTime = _root.drillTime - Math.floor(_root.drillTime * 0.30);
		_root.isDrillBoost = true;
		_root.addto.start(0, 1);
		gotoAndPlay(3);
	} else {
		_root.wrongsound.start(0, 1);
	}
}