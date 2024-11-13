function getCurFeedValue(n: Boolean, s: Number): Number {
	if(n) {
		if(s == 1) {
			return(_root.equipSlot1);
		} else if(s == 2) {
			return(_root.equipSlot2);
		} else if(s == 3) {
			return(_root.equipSlot3);
		}
	} else {
		if(s == 1) {
			return(_root.synthSlot1);
		} else if(s == 2) {
			return(_root.synthSlot2);
		} else if(s == 3) {
			return(_root.synthSlot3);
		}
	}
}
function curGearSet(): Void {
	if(_root.feedSelect <= 31) {
		equipValue = _root.equip[_root.feedSelect];
		synthValue = _root.equip2[_root.feedSelect];
		_root.curGear.thisslot.eqlevel.text = synthText(_root.feedSelect);
		_root.curGear.thisslot.gotoAndStop(equipAssemble(_root.feedSelect));
		_root.curGear.thisslot.eqrarity.text = levelSet(_root.feedSelect);
	} else {
		equipValue = getCurFeedValue(true, _root.feedSelect - 31);
		synthValue = getCurFeedValue(false, _root.feedSelect - 31);
		_root.curGear.thisslot.eqlevel.text = synthAssembleCurFeed(_root.feedSelect - 31);
		_root.curGear.thisslot.gotoAndStop(equipAssembleCurFeed(_root.feedSelect - 31));
		_root.curGear.thisslot.eqrarity.text = levelSetCurFeed(_root.feedSelect - 31);
	}
}
function curPriceSet(): Void {
	if(synthValue == 9) {
		_root.cashText.text = upCost;
		_root.cashMoney.gotoAndStop(2);
	} else {
		_root.cashText.text = "";
		_root.cashMoney.gotoAndStop(1);
	}
}
function nextLvlNum(): Number {
	return(synthValue + 1);
}
function nextLvlText(): String {
	if(synthValue < 9) {
		return("TO LEVEL " + _root.nextLvlNum());
	} else {
		return("MAX LEVEL");
	}
}
function getColorBase(sColor: Number): Number {
	if(sColor == _root.colorID) {
		return(1.5);
	} else {
		return(1);
	}
}
function getLevelBase(): Number {
	if(synthValue > 0 and synthValue < 9) {
		return(Math.round(levelBoost / 2) * synthValue);
	} else if(synthValue == 9) { 
		return(Math.round(levelBoost / 2) * 10);
	} else {
		return(Math.round(levelBoost / 2));
	}
}
function getCost(sColor: Number): Number {
	return(Math.round(getLevelBase() * getColorBase(sColor)));
}
function getMoneyCost(): Number {
	return(Math.round(getLevelBase() * 200));
}
function setCost(): Void {
	createName(equipValue);
	if(levelBoost == 30 and synthValue == 9) {
		rCost = 0;
		bCost = 0;
		gCost = 0;
		pCost = 0;
		upCost = 0;
	} else {
		rCost = getCost(1);
		bCost = getCost(2);
		gCost = getCost(3);
		pCost = getCost(4);
		if(synthValue == 9) {
			upCost = getMoneyCost();
		} else {
			upCost = 0;
		}
	}
}
function takeCost(): Void {
	_root.synthRed -= rCost;
	_root.synthBlue -= bCost;
	_root.synthGreen -= gCost;
	_root.synthPurple -= pCost;
	if(synthValue == 9) {
		_root.money -= upCost;
	}
}
function switchSynth(): Void {
	if(_root.feedSelect <= 31) {
		_root.equip2.splice(_root.feedSelect, 1, nextLevel);
	} else {
		if(_root.feedSelect == 32) {
			_root.synthSlot1 = nextLevel;
		} else if(_root.feedSelect == 33) {
			_root.synthSlot2 = nextLevel;
		} else if(_root.feedSelect == 34) {
			_root.synthSlot3 = nextLevel;
		}
	}
}
function switchEquip(): Void {
	if(_root.feedSelect <= 31) {
		if(_root.equip[_root.feedSelect] <= 100) {
			nextValue = 20;
		} else {
			nextValue = 4;
		}
		spliceValue = (_root.equip[_root.feedSelect] + nextValue);
		_root.equip.splice(_root.feedSelect, 1, spliceValue);
	} else {
		if(_root.feedSelect == 32) {
			if(_root.equipSlot1 <= 100) {
				nextValue = 20;
			} else {
				nextValue = 4;
			}
			_root.equipSlot1 = _root.equipSlot1 + nextValue;
		} else if(_root.feedSelect == 33) {
			if(_root.equipSlot2 <= 100) {
				nextValue = 20;
			} else {
				nextValue = 4;
			}
			_root.equipSlot2 = _root.equipSlot2 + nextValue;
		} else if(_root.feedSelect == 34) {
			if(_root.equipSlot3 <= 100) {
				nextValue = 20;
			} else {
				nextValue = 4;
			}
			_root.equipSlot3 = _root.equipSlot3 + nextValue;
		}
	}
	nextLevel = 1;
	_root.switchSynth();
}
function confUpgrade(): Void {
	_root.confOpen = true;
	_root.curGear.gotoAndStop(1);
	_root.lvlText.text = "";
	_root.upgradeConf._x = 400.05;
}
function closeUpConf(): Void {
	_root.confOpen = false;
	_root.upgradeConf._x = -4000;
}
function feedSynth(): Void {
	if(synthValue < 9) {
		if(synthRed >= rCost and synthBlue >= bCost and synthGreen >= gCost and synthPurple >= pCost) {
			nextLevel = _root.nextLvlNum();
			_root.addto.start(0, 1);
			_root.takeCost();
			_root.switchSynth();
			_root.curGearSet();
			_root.setCost();
			_root.curPriceSet();
			_root.lvlNext.text = nextLvlText();
		} else {
			_root.wrongsound.start(0, 1);
		}
	} else {
		if(levelBoost == 30) {
			_root.wrongsound.start(0, 1);
		} else {
			_root.rightsound.start(0, 1);
			_root.confUpgrade();
		}
	}
}
function upgradeSynth(): Void {
	if(synthRed >= rCost and synthBlue >= bCost and synthGreen >= gCost and synthPurple >= pCost and _root.checkCost(upCost)) {
		_root.addto.start(0, 1);
		_root.takeCost();
		_root.switchEquip();
		_root.closeUpConf();
		_root.curGearSet();
		_root.setCost();
		_root.curPriceSet();
		_root.lvlNext.text = nextLvlText();
	} else {
		_root.wrongsound.start(0, 1);
	}
}