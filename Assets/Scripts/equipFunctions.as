function createColor(ID : Number): Void {
	if (ID == 1  or ID == 21 or ID == 41 or ID == 61 or ID == 81 or ID == 5 or ID == 25 or ID == 45 or ID == 65 or ID == 85 or ID == 9 or ID == 29 or ID == 49 or ID == 69 or ID == 89 or ID == 13 or ID == 33 or ID == 53 or ID == 73 or ID == 93 or ID == 17 or ID == 37 or ID == 57 or ID == 77 or ID == 97 or ID == 101 or ID == 105 or ID == 109 or ID == 113 or ID == 117) {
		frameValue1 = 1;
		colorValue = 0xA200FF;
		equipColor = "PURPLE";
		colorBoost = "Sorcery";
		colorID = 4;
	}
	else if (ID == 2  or ID == 22 or ID == 42 or ID == 62 or ID == 82 or ID == 6 or ID == 26 or ID == 46 or ID == 66 or ID == 86 or ID == 10 or ID == 30 or ID == 50 or ID == 70 or ID == 90 or ID == 14 or ID == 34 or ID == 54 or ID == 74 or ID == 94 or ID == 18 or ID == 38 or ID == 58 or ID == 78 or ID == 98 or ID == 102 or ID == 106 or ID == 110 or ID == 114 or ID == 118) {
		frameValue1 = 2;
		colorValue = 0x001BFF;
		equipColor = "BLUE";
		colorBoost = "Resistance";
		colorID = 2;
	}
	else if (ID == 3  or ID == 23 or ID == 43 or ID == 63 or ID == 83 or ID == 7 or ID == 27 or ID == 47 or ID == 67 or ID == 87 or ID == 11 or ID == 31 or ID == 51 or ID == 71 or ID == 91 or ID == 15 or ID == 35 or ID == 55 or ID == 75 or ID == 95 or ID == 19 or ID == 39 or ID == 59 or ID == 79 or ID == 99 or ID == 103 or ID == 107 or ID == 111 or ID == 115 or ID == 119) {
		frameValue1 = 3;
		colorValue = 0x00FF0F;
		equipColor = "GREEN";
		colorBoost = "Swiftness";
		colorID = 3;
	}
	else if (ID == 4  or ID == 24 or ID == 44 or ID == 64 or ID == 84 or ID == 8 or ID == 28 or ID == 48 or ID == 68 or ID == 88 or ID == 12 or ID == 32 or ID == 52 or ID == 72 or ID == 92 or ID == 16 or ID == 36 or ID == 56 or ID == 76 or ID == 96 or ID == 20 or ID == 40 or ID == 60 or ID == 80 or ID == 100 or ID == 104 or ID == 108 or ID == 112 or ID == 116 or ID == 120) {
		frameValue1 = 4;
		colorValue = 0xFF0000;
		equipColor = "RED";
		colorBoost = "Physicality";
		colorID = 1;
	}
}
function createType(ID : Number): Void {
	if (ID == 1 or ID == 2 or ID == 3 or ID == 4 or ID == 21 or ID == 22 or ID == 23 or ID == 24 or ID == 41 or ID == 42 or ID == 43 or ID == 44 or ID == 61 or ID == 62 or ID == 63 or ID == 64 or ID == 81 or ID == 82 or ID == 83 or ID == 84) {
		frameValue2 = 1;
		equipType = "POTION";
		typeBoost = "MAGIC";
	}
	else if (ID == 5 or ID == 6 or ID == 7 or ID == 8 or ID == 25 or ID == 26 or ID == 27 or ID == 28 or ID == 45 or ID == 46 or ID == 47 or ID == 48 or ID == 65 or ID == 66 or ID == 67 or ID == 68 or ID == 85 or ID == 86 or ID == 87 or ID == 88) {
		frameValue2 = 5;
		equipType = "SWORD";
		typeBoost = "ATTACK";
	}
	else if (ID == 9 or ID == 10 or ID == 11 or ID == 12 or ID == 29 or ID == 30 or ID == 31 or ID == 32 or ID == 49 or ID == 50 or ID == 51 or ID == 52 or ID == 69 or ID == 70 or ID == 71 or ID == 72 or ID == 89 or ID == 90 or ID == 91 or ID == 92) {
		frameValue2 = 9;
		equipType = "SHIELD";
		typeBoost = "DEFENSE";
	}
	else if (ID == 13 or ID == 14 or ID == 15 or ID == 16 or ID == 33 or ID == 34 or ID == 35 or ID == 36 or ID == 53 or ID == 54 or ID == 55 or ID == 56 or ID == 73 or ID == 74 or ID == 75 or ID == 76 or ID == 93 or ID == 94 or ID == 95 or ID == 96) {
		frameValue2 = 13;
		equipType = "SHOE";
		typeBoost = "SPEED";
	}
	else if (ID == 17 or ID == 18 or ID == 19 or ID == 20 or ID == 37 or ID == 38 or ID == 39 or ID == 40 or ID == 57 or ID == 58 or ID == 59 or ID == 60 or ID == 77 or ID == 78 or ID == 79 or ID == 80 or ID == 97 or ID == 98 or ID == 99 or ID == 100) {
		frameValue2 = 17;
		equipType = "CROSS";
		typeBoost = "HEALTH";
	}
	else if (ID == 101 or ID == 102 or ID == 103 or ID == 104 or ID == 105 or ID == 106 or ID == 107 or ID == 108 or ID == 109 or ID == 110 or ID == 111 or ID == 112 or ID == 113 or ID == 114 or ID == 115 or ID == 116 or ID == 117 or ID == 118 or ID == 119 or ID == 120) {
		frameValue2 = 21;
		equipType = "HOLY STAFF";
		typeBoost = "CRITICAL";
	}
	
}
function createLevel(ID : Number): Void {
	if (ID <= 20) {
		_root.under_Level = 0.1;
		equipLevel = "+1";
		levelBoost = 5;
	}
	else if (ID >= 21 and ID <= 40) {
		_root.under_Level = 0.2;
		equipLevel = "+2";
		levelBoost = 10;
	}
	else if (ID >= 31 and ID <= 60) {
		_root.under_Level = 0.3;
		equipLevel = "+3";
		levelBoost = 15;
	}
	else if (ID >= 61 and ID <= 80) {
		_root.under_Level = 0.4;
		equipLevel = "+4";
		levelBoost = 20;
	}
	else if (ID >= 81 and ID <= 100) {
		_root.under_Level = 0.5;
		equipLevel = "+5";
		levelBoost = 30;
	}
	else if (ID >= 101 and ID <= 104) {
		_root.under_Level = 1;
		equipLevel = "+1";
		levelBoost = 5;
	}
	else if (ID >= 105 and ID <= 108) {
		_root.under_Level = 2;
		equipLevel = "+2";
		levelBoost = 10;
	}
	else if (ID >= 109 and ID <= 112) {
		_root.under_Level = 3;
		equipLevel = "+3";
		levelBoost = 15;
	}
	else if (ID >= 113 and ID <= 116) {
		_root.under_Level = 4;
		equipLevel = "+4";
		levelBoost = 20;
	}
	else {
		_root.under_Level = 5;
		equipLevel = "+5";
		levelBoost = 30;
	}
}
function synthLevel(L: Number): Void {
	if(L > 0) {
		levelBoost += (L * 2);
		_root.under_Level += Math.round(L / 2);
	}
}
function createName(equipID : Number):Void {
	createColor(equipID);
	createType(equipID);
	createLevel(equipID);
}
function createFrame(equipID : Number): Void {
	createName(equipID);
	frameValue = frameValue1 + frameValue2;
}
function equipAssemble(invNum : Number):Number {
	if (_root.equip[invNum] != undefined and _root.equip[invNum] != 0) {
	dup = _root.equip[invNum];
	stringValue = String(dup);
	numValue = Number(stringValue);
	createFrame(numValue);
	} else {
		frameValue = 1;
	}
	return(frameValue);
}
function equipAssembleCur():Number {
	if(_root.slotSelect == 1) {
		if (_root.equipSlot1 != undefined and _root.equipSlot1 != 0) {
		createFrame(_root.equipSlot1);
		} else {
			frameValue = 1;
		}
	} else if (_root.slotSelect == 2) {
		if (_root.equipSlot2 != undefined and _root.equipSlot2 != 0) {
		createFrame(_root.equipSlot2);
		} else {
			frameValue = 1;
		}
	} else if (_root.slotSelect == 3) {
		if (_root.equipSlot3 != undefined and _root.equipSlot3 != 0) {
		createFrame(_root.equipSlot3);
		} else {
			frameValue = 1;
		}
	}
	return(frameValue);
}
function equipAssembleCurFeed(s: Number):Number {
	if(s == 1) {
		if (_root.equipSlot1 != undefined and _root.equipSlot1 != 0) {
		createFrame(_root.equipSlot1);
		} else {
			frameValue = 1;
		}
	} else if (s == 2) {
		if (_root.equipSlot2 != undefined and _root.equipSlot2 != 0) {
		createFrame(_root.equipSlot2);
		} else {
			frameValue = 1;
		}
	} else if (s == 3) {
		if (_root.equipSlot3 != undefined and _root.equipSlot3 != 0) {
		createFrame(_root.equipSlot3);
		} else {
			frameValue = 1;
		}
	}
	return(frameValue);
}
function synthAssembleCur():String {
	if(_root.slotSelect == 1) {
		if (_root.synthSlot1 != undefined and _root.synthSlot1 != 0) {
			return("L" + _root.synthSlot1);
		} else {
			return("");
		}
	} else if (_root.slotSelect == 2) {
		if (_root.synthSlot2 != undefined and _root.synthSlot2 != 0) {
			return("L" + _root.synthSlot2);
		} else {
			return("");
		}
	} else if (_root.slotSelect == 3) {
		if (_root.synthSlot3 != undefined and _root.synthSlot3 != 0) {
			return("L" + _root.synthSlot3);
		} else {
			return("");
		}
	}
}
function synthAssembleCurFeed(s: Number):String {
	if(s == 1) {
		if (_root.synthSlot1 != undefined and _root.synthSlot1 != 0) {
			return("L" + _root.synthSlot1);
		} else {
			return("");
		}
	} else if (s == 2) {
		if (_root.synthSlot2 != undefined and _root.synthSlot2 != 0) {
			return("L" + _root.synthSlot2);
		} else {
			return("");
		}
	} else if (s == 3) {
		if (_root.synthSlot3 != undefined and _root.synthSlot3 != 0) {
			return("L" + _root.synthSlot3);
		} else {
			return("");
		}
	}
}
function equipGetSlotValue():Number {
	if (_root.slotSelect == 1) {
		return(_root.equipSlot1);
	} else if (_root.slotSelect == 2) {
		return(_root.equipSlot2);
	} else if (_root.slotSelect == 3) {
		return(_root.equipSlot3);
	}
}
function equipGetSynthValue():Number {
	if (_root.slotSelect == 1) {
		return(_root.synthSlot1);
	} else if (_root.slotSelect == 2) {
		return(_root.synthSlot2);
	} else if (_root.slotSelect == 3) {
		return(_root.synthSlot3);
	}
}
function checkEquip(): Void {
	if (_root.equip.length == undefined) {
		equipinv.text = "ERROR";
	} else {
		equipinv.text = _root.equip.length;
	}
}
function equipCleanup(): Void {
	for(i=0;i<_root.equip.length;i++) {
		if (_root.equip[i] == undefined) {
		delete(_root.equip[i]);
		trace("REMOVED UNDEFINED EQUIPMENT FROM POS " + i);
		}
	}
}
function synthText(ID: Number): String {
	if(_root.equip2[ID] != undefined and _root.equip2[ID] != 0) {
		return("L" + _root.equip2[ID]);
	} else {
		return("");
	}
}
function synthSet(): Void {
	_root.equip0.thisslot.eqlevel.text = synthText(0);
	_root.equip1.thisslot.eqlevel.text = synthText(1);
	_root.equip2fixed.thisslot.eqlevel.text = synthText(2);
	_root.equip3.thisslot.eqlevel.text = synthText(3);
	_root.equip4.thisslot.eqlevel.text = synthText(4);
	_root.equip5.thisslot.eqlevel.text = synthText(5);
	_root.equip6.thisslot.eqlevel.text = synthText(6);
	_root.equip7.thisslot.eqlevel.text = synthText(7);
	_root.equip8.thisslot.eqlevel.text = synthText(8);
	_root.equip9.thisslot.eqlevel.text = synthText(9);
	_root.equip10.thisslot.eqlevel.text = synthText(10);
	_root.equip11.thisslot.eqlevel.text = synthText(11);
	_root.equip12.thisslot.eqlevel.text = synthText(12);
	_root.equip13.thisslot.eqlevel.text = synthText(13);
	_root.equip14.thisslot.eqlevel.text = synthText(14);
	_root.equip15.thisslot.eqlevel.text = synthText(15);
	_root.equip16.thisslot.eqlevel.text = synthText(16);
	_root.equip17.thisslot.eqlevel.text = synthText(17);
	_root.equip18.thisslot.eqlevel.text = synthText(18);
	_root.equip19.thisslot.eqlevel.text = synthText(19);
	_root.equip20.thisslot.eqlevel.text = synthText(20);
	_root.equip21.thisslot.eqlevel.text = synthText(21);
	_root.equip22.thisslot.eqlevel.text = synthText(22);
	_root.equip23.thisslot.eqlevel.text = synthText(23);
	_root.equip24.thisslot.eqlevel.text = synthText(24);
	_root.equip25.thisslot.eqlevel.text = synthText(25);
	_root.equip26.thisslot.eqlevel.text = synthText(26);
	_root.equip27.thisslot.eqlevel.text = synthText(27);
	_root.equip28.thisslot.eqlevel.text = synthText(28);
	_root.equip29.thisslot.eqlevel.text = synthText(29);
	_root.equip30.thisslot.eqlevel.text = synthText(30);
	_root.equip31.thisslot.eqlevel.text = synthText(31);
	_root.equipCur.thisslot.eqlevel.text = synthAssembleCur();
}
function synthSetFeed(): Void {
	_root.equipCur1.thisslot.eqlevel.text = synthAssembleCurFeed(1);
	_root.equipCur2.thisslot.eqlevel.text = synthAssembleCurFeed(2);
	_root.equipCur3.thisslot.eqlevel.text = synthAssembleCurFeed(3);
}
function levelSet(ID: Number): String {
	if(_root.equip[ID] != undefined and _root.equip[ID] != 0) {
		return(equipLevel);
	} else {
		return("");
	}
}
function levelSetCur():String {
	if(_root.slotSelect == 1) {
		if (_root.equipSlot1 != undefined and _root.equipSlot1 != 0) {
			return(equipLevel);
		} else {
			return("");
		}
	} else if (_root.slotSelect == 2) {
		if (_root.equipSlot2 != undefined and _root.equipSlot2 != 0) {
			return(equipLevel);
		} else {
			return("");
		}
	} else if (_root.slotSelect == 3) {
		if (_root.equipSlot3 != undefined and _root.equipSlot3 != 0) {
			return(equipLevel);
		} else {
			return("");
		}
	}
}
function levelSetCurFeed(s: Number):String {
	if(s == 1) {
		if (_root.equipSlot1 != undefined and _root.equipSlot1 != 0) {
			return(equipLevel);
		} else {
			return("");
		}
	} else if (s == 2) {
		if (_root.equipSlot2 != undefined and _root.equipSlot2 != 0) {
			return(equipLevel);
		} else {
			return("");
		}
	} else if (s == 3) {
		if (_root.equipSlot3 != undefined and _root.equipSlot3 != 0) {
			return(equipLevel);
		} else {
			return("");
		}
	}
}
function equipSet():Void {
	//_root.equipCleanup();
	_root.equip0.thisslot.gotoAndStop(equipAssemble(0));
	_root.equip0.thisslot.eqrarity.text = levelSet(0);
	_root.equip1.thisslot.gotoAndStop(equipAssemble(1));
	_root.equip1.thisslot.eqrarity.text = levelSet(1);
	_root.equip2fixed.thisslot.gotoAndStop(equipAssemble(2));
	_root.equip2fixed.thisslot.eqrarity.text = levelSet(2);
	_root.equip3.thisslot.gotoAndStop(equipAssemble(3));
	_root.equip3.thisslot.eqrarity.text = levelSet(3);
	_root.equip4.thisslot.gotoAndStop(equipAssemble(4));
	_root.equip4.thisslot.eqrarity.text = levelSet(4);
	_root.equip5.thisslot.gotoAndStop(equipAssemble(5));
	_root.equip5.thisslot.eqrarity.text = levelSet(5);
	_root.equip6.thisslot.gotoAndStop(equipAssemble(6));
	_root.equip6.thisslot.eqrarity.text = levelSet(6);
	_root.equip7.thisslot.gotoAndStop(equipAssemble(7));
	_root.equip7.thisslot.eqrarity.text = levelSet(7);
	_root.equip8.thisslot.gotoAndStop(equipAssemble(8));
	_root.equip8.thisslot.eqrarity.text = levelSet(8);
	_root.equip9.thisslot.gotoAndStop(equipAssemble(9));
	_root.equip9.thisslot.eqrarity.text = levelSet(9);
	_root.equip10.thisslot.gotoAndStop(equipAssemble(10));
	_root.equip10.thisslot.eqrarity.text = levelSet(10);
	_root.equip11.thisslot.gotoAndStop(equipAssemble(11));
	_root.equip11.thisslot.eqrarity.text = levelSet(11);
	_root.equip12.thisslot.gotoAndStop(equipAssemble(12));
	_root.equip12.thisslot.eqrarity.text = levelSet(12);
	_root.equip13.thisslot.gotoAndStop(equipAssemble(13));
	_root.equip13.thisslot.eqrarity.text = levelSet(13);
	_root.equip14.thisslot.gotoAndStop(equipAssemble(14));
	_root.equip14.thisslot.eqrarity.text = levelSet(14);
	_root.equip15.thisslot.gotoAndStop(equipAssemble(15));
	_root.equip15.thisslot.eqrarity.text = levelSet(15);
	_root.equip16.thisslot.gotoAndStop(equipAssemble(16));
	_root.equip16.thisslot.eqrarity.text = levelSet(16);
	_root.equip17.thisslot.gotoAndStop(equipAssemble(17));
	_root.equip17.thisslot.eqrarity.text = levelSet(17);
	_root.equip18.thisslot.gotoAndStop(equipAssemble(18));
	_root.equip18.thisslot.eqrarity.text = levelSet(18);
	_root.equip19.thisslot.gotoAndStop(equipAssemble(19));
	_root.equip19.thisslot.eqrarity.text = levelSet(19);
	_root.equip20.thisslot.gotoAndStop(equipAssemble(20));
	_root.equip20.thisslot.eqrarity.text = levelSet(20);
	_root.equip21.thisslot.gotoAndStop(equipAssemble(21));
	_root.equip21.thisslot.eqrarity.text = levelSet(21);
	_root.equip22.thisslot.gotoAndStop(equipAssemble(22));
	_root.equip22.thisslot.eqrarity.text = levelSet(22);
	_root.equip23.thisslot.gotoAndStop(equipAssemble(23));
	_root.equip23.thisslot.eqrarity.text = levelSet(23);
	_root.equip24.thisslot.gotoAndStop(equipAssemble(24));
	_root.equip24.thisslot.eqrarity.text = levelSet(24);
	_root.equip25.thisslot.gotoAndStop(equipAssemble(25));
	_root.equip25.thisslot.eqrarity.text = levelSet(25);
	_root.equip26.thisslot.gotoAndStop(equipAssemble(26));
	_root.equip26.thisslot.eqrarity.text = levelSet(26);
	_root.equip27.thisslot.gotoAndStop(equipAssemble(27));
	_root.equip27.thisslot.eqrarity.text = levelSet(27);
	_root.equip28.thisslot.gotoAndStop(equipAssemble(28));
	_root.equip28.thisslot.eqrarity.text = levelSet(28);
	_root.equip29.thisslot.gotoAndStop(equipAssemble(29));
	_root.equip29.thisslot.eqrarity.text = levelSet(29);
	_root.equip30.thisslot.gotoAndStop(equipAssemble(30));
	_root.equip30.thisslot.eqrarity.text = levelSet(30);
	_root.equip31.thisslot.gotoAndStop(equipAssemble(31));
	_root.equip31.thisslot.eqrarity.text = levelSet(31);
	_root.equipCur.thisslot.gotoAndStop(equipAssembleCur());
	_root.equipCur.thisslot.eqrarity.text = levelSetCur();
	_root.desc.text = "";
	_root.checkEquip();
}
function equipSetFeed(): Void {
	_root.equipCur1.thisslot.gotoAndStop(equipAssembleCurFeed(1));
	_root.equipCur1.thisslot.eqrarity.text = levelSetCurFeed(1);
	_root.equipCur2.thisslot.gotoAndStop(equipAssembleCurFeed(2));
	_root.equipCur2.thisslot.eqrarity.text = levelSetCurFeed(2);
	_root.equipCur3.thisslot.gotoAndStop(equipAssembleCurFeed(3));
	_root.equipCur3.thisslot.eqrarity.text = levelSetCurFeed(3);
}
function displayDesc(equipID : Number):Void {
	if (equipID != 0 and equipID != undefined) {
	createName(equipID);
	_root.desc.textColor = colorValue;
	_root.desc.text = equipColor + " " + equipType + " " + equipLevel;
	} else {
		_root.desc.textColor = 0x000000;
		_root.desc.text = "EMPTY SLOT";
	}
}
function displayPrev():Void {
	if(_root.remove_prompt) {
		_root.confE.equiptext.text = "WOULD YOU LIKE TO UNEQUIP THIS ITEM?";
	} else {
		_root.confE.equiptext.text = "WOULD YOU LIKE TO EQUIP THIS ITEM?";
	}
	_root.confE.equipname.textColor = colorValue;
	_root.confE.equipname.text = equipColor + " " + equipType + " " + equipLevel;
	_root.confE.effect.text = "Adds a " + levelBoost + " Percent boost\nto the " + typeBoost + " stat.\nEffective with creatures\nthat rely on " + colorBoost + ".";
	_root.confEquip();
}

function createFramePrev(): Number {
	frameValue = frameValue1 + frameValue2;
	return(frameValue);
}
function showEquip(f: Boolean): Void {
	if (_root.thisSelect != 0 and _root.thisSelect != undefined and _root.equipOpen == false) {
		if(f) {
			_root.remove_prompt = true;
		} else {
			_root.remove_prompt = undefined;
		}
		_root.rightsound.start(0, 1);
		_root.equipOpen = true;
		dup = _root.thisSelect;
		stringValue = String(dup);
		numValue = Number(stringValue);
		createName(numValue);
		synthLevel(_root.synthSelect);
		_root.confE.thisEquip.gotoAndStop(createFramePrev());
		_root.displayPrev();
	} else {
		if (_root.equipOpen == false) {
			_root.thisSelect = 0;
			_root.synthSelect = undefined;
			equipGear();
		}
	}
}
function confEquip(): Void {
	_root.confE._x = 385.1;
}
function confUnequip(): Void {
	if (_root.equipGetSlotValue() != undefined and _root.equipGetSlotValue() != 0) {
	_root.equipOpen = true;
	_root.rightsound.start(0, 1);
	_root.confremove._x = 400;
	} else {
		_root.wrongsound.start(0, 1);
	}
}
function equipGear(f: Boolean): Void {
	if(f) {
		_root.unequip(_root.equipGetSlotValue());
		_root.unequipSynth(_root.equipGetSynthValue());
	} else {
		if (_root.slotSelect == 1) {
			if (_root.equipSlot1 != 0 and _root.equipSlot1 != undefined) {
				_root.equip.push(_root.equipSlot1);
				_root.equip2.push(_root.synthSlot1);
			}
			_root.equipSlot1 = _root.thisSelect;
			_root.synthSlot1 = _root.synthSelect;
		} else if (_root.slotSelect == 2) {
			if (_root.equipSlot2 != 0 and _root.equipSlot2 != undefined) {
				_root.equip.push(_root.equipSlot2);
				_root.equip2.push(_root.synthSlot2);
			}
			_root.equipSlot2 = _root.thisSelect;
			_root.synthSlot2 = _root.synthSelect;
		} else if (_root.slotSelect == 3) {
			if (_root.equipSlot3 != 0 and _root.equipSlot3 != undefined) {
				_root.equip.push(_root.equipSlot3);
				_root.equip2.push(_root.synthSlot3);
			}
			_root.equipSlot3 = _root.thisSelect;
			_root.synthSlot3 = _root.synthSelect;
		}
		_root.removeEquip(_root.thisSelect, _root.synthSelect);
		_root.justCraft = true;
		gotoAndStop(1);
	}
}
function removeEquip(equipID : Number, synthID : Number): Void {
	done = false;
	for (i=0;i<32;i++) {
		dup = _root.equip[i];
		stringValue = String(dup);
		equipValue = Number(stringValue);
		if (equipValue == equipID and _root.equip2[i] == synthID) {
			if (done == false) {
			done = true;
			_root.equip.splice(i, 1);
			_root.equip2.splice(i, 1);
			}
		}
	}
}
function closeConf(): Void {
	_root.equipOpen = false;
	_root.confE._x = -4000;
}
function closeConf2(): Void {
	_root.equipOpen = false;
	_root.confremove._x = -4000;
}
function closeConfSell(): Void {
	_root.equipOpen = false;
	_root.confsell._x = -4000;
}
function unequipSynth(equipID : Number): Void {
	_root.equip2.push(equipID);
	if (_root.slotSelect == 1) {
		_root.synthSlot1 = undefined;
	} else if (_root.slotSelect == 2) {
		_root.synthSlot2 = undefined;
	} else if (_root.slotSelect == 3) {
		_root.synthSlot3 = undefined;
	}
	_root.synthSet();
}
function unequip(equipID : Number): Void {
	_root.equip.push(equipID);
	if (_root.slotSelect == 1) {
		_root.equipSlot1 = 0;
	} else if (_root.slotSelect == 2) {
		_root.equipSlot2 = 0;
	} else if (_root.slotSelect == 3) {
		_root.equipSlot3 = 0;
	}
	_root.equipOpen = false;
	_root.confremove._x = 4000;
	_root.equipSet();
}
function createPrice(equipID : Number, synthID: Number): Number {
	_root.createLevel(equipID);
	_root.synthLevel(synthID);
	return(1200 * _root.under_Level);
}
function displayPrice(equipID : Number, synthID: Number): Void {
	if (equipID != undefined and equipID != 0 and _root.equipOpen == false) {
	_root.pricedesc.text = "+" + _root.createPrice(equipID, synthID);
	}
}
function confSell(): Void {
	if (_root.equipOpen == false) {
		if (_root.thisSelect != undefined and _root.thisSelect != 0) {
			_root.equipOpen = true;
			_root.confsell._x = 400;
			_root.rightsound.start(0, 1);
		} else {
			_root.wrongsound.start(0, 1);
		}
	}
}
function sellEquip(equipID : Number, synthID: Number): Void {
	if (_root.moneyCheck(_root.createPrice(equipID, synthID)) == true) {
		_root.money = _root.money + _root.createPrice(equipID, synthID);
	} else {
		_root.moneyCap();
	}
	_root.removeEquip(equipID, synthID);
	_root.closeConfSell();
	_root.equipSet();
	_root.synthSet();
}
function sellSelect(equipID : Number): Void {
	if (_root.equipOpen == false) {
		_root.thisSelect = equipID;
	}
}
function sellSelectSynth(equipID : Number): Void {
	if (_root.equipOpen == false) {
		_root.synthSelect = equipID;
	}
}
function gotoFeed(): Void {
	if(_root.feedSelect <= 31) {
		if(_root.equip2[_root.feedSelect] != undefined) {
			_root.rightsound.start(0, 1);
			gotoAndPlay("SynthFeed", 1);
		} else {
			_root.descSynth.text = "NO SYNTH LEVEL";
			_root.wrongsound.start(0, 1);
		}
	} else {
		if(_root.feedSelect == 32) {
			e = _root.equipSlot1;
		} else if(_root.feedSelect == 33) {
			e = _root.equipSlot2;
		} else if(_root.feedSelect == 34) {
			e = _root.equipSlot3;
		}
		if(e != undefined and e != 0) {
			_root.rightsound.start(0, 1);
			gotoAndPlay("SynthFeed", 1);
		} else {
			_root.descSynth.text = "NO SYNTH LEVEL";
			_root.wrongsound.start(0, 1);
		}
	}
}