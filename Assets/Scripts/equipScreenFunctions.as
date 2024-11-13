function checkEquip():Void {
	if (_root.equip.length == undefined) {
		equipinv.text = "0";
	} else {
		equipinv.text = _root.equip.length;
	}
}
function createColor(ID:Number):Void {
	if (ID == 1 or ID == 21 or ID == 41 or ID == 61 or ID == 81 or ID == 5 or ID == 25 or ID == 45 or ID == 65 or ID == 85 or ID == 9 or ID == 29 or ID == 49 or ID == 69 or ID == 89 or ID == 13 or ID == 33 or ID == 53 or ID == 73 or ID == 93 or ID == 17 or ID == 37 or ID == 57 or ID == 77 or ID == 97 or ID == 101 or ID == 105 or ID == 109 or ID == 113 or ID == 117) {
		frameValue1 = 1;
		colorValue = 0xA200FF;
		equipColor = "PURPLE";
	} else if (ID == 2 or ID == 22 or ID == 42 or ID == 62 or ID == 82 or ID == 6 or ID == 26 or ID == 46 or ID == 66 or ID == 86 or ID == 10 or ID == 30 or ID == 50 or ID == 70 or ID == 90 or ID == 14 or ID == 34 or ID == 54 or ID == 74 or ID == 94 or ID == 18 or ID == 38 or ID == 58 or ID == 78 or ID == 98 or ID == 102 or ID == 106 or ID == 110 or ID == 114 or ID == 118) {
		frameValue1 = 2;
		colorValue = 0x001BFF;
		equipColor = "BLUE";
	} else if (ID == 3 or ID == 23 or ID == 43 or ID == 63 or ID == 83 or ID == 7 or ID == 27 or ID == 47 or ID == 67 or ID == 87 or ID == 11 or ID == 31 or ID == 51 or ID == 71 or ID == 91 or ID == 15 or ID == 35 or ID == 55 or ID == 75 or ID == 95 or ID == 19 or ID == 39 or ID == 59 or ID == 79 or ID == 99 or ID == 103 or ID == 107 or ID == 111 or ID == 115 or ID == 119) {
		frameValue1 = 3;
		colorValue = 0x00FF0F;
		equipColor = "GREEN";
	} else if (ID == 4 or ID == 24 or ID == 44 or ID == 64 or ID == 84 or ID == 8 or ID == 28 or ID == 48 or ID == 68 or ID == 88 or ID == 12 or ID == 32 or ID == 52 or ID == 72 or ID == 92 or ID == 16 or ID == 36 or ID == 56 or ID == 76 or ID == 96 or ID == 20 or ID == 40 or ID == 60 or ID == 80 or ID == 100 or ID == 104 or ID == 108 or ID == 112 or ID == 116 or ID == 120) {
		frameValue1 = 4;
		colorValue = 0xFF0000;
		equipColor = "RED";
	}
}
function createType(ID:Number):Void {
	if (ID == 1 or ID == 2 or ID == 3 or ID == 4 or ID == 21 or ID == 22 or ID == 23 or ID == 24 or ID == 41 or ID == 42 or ID == 43 or ID == 44 or ID == 61 or ID == 62 or ID == 63 or ID == 64 or ID == 81 or ID == 82 or ID == 83 or ID == 84) {
		frameValue2 = 1;
		equipType = "POTION";
	} else if (ID == 5 or ID == 6 or ID == 7 or ID == 8 or ID == 25 or ID == 26 or ID == 27 or ID == 28 or ID == 45 or ID == 46 or ID == 47 or ID == 48 or ID == 65 or ID == 66 or ID == 67 or ID == 68 or ID == 85 or ID == 86 or ID == 87 or ID == 88) {
		frameValue2 = 5;
		equipType = "SWORD";
	} else if (ID == 9 or ID == 10 or ID == 11 or ID == 12 or ID == 29 or ID == 30 or ID == 31 or ID == 32 or ID == 49 or ID == 50 or ID == 51 or ID == 52 or ID == 69 or ID == 70 or ID == 71 or ID == 72 or ID == 89 or ID == 90 or ID == 91 or ID == 92) {
		frameValue2 = 9;
		equipType = "SHIELD";
	} else if (ID == 13 or ID == 14 or ID == 15 or ID == 16 or ID == 33 or ID == 34 or ID == 35 or ID == 36 or ID == 53 or ID == 54 or ID == 55 or ID == 56 or ID == 73 or ID == 74 or ID == 75 or ID == 76 or ID == 93 or ID == 94 or ID == 95 or ID == 96) {
		frameValue2 = 13;
		equipType = "SHOE";
	} else if (ID == 17 or ID == 18 or ID == 19 or ID == 20 or ID == 37 or ID == 38 or ID == 39 or ID == 40 or ID == 57 or ID == 58 or ID == 59 or ID == 60 or ID == 77 or ID == 78 or ID == 79 or ID == 80 or ID == 97 or ID == 98 or ID == 99 or ID == 100) {
		frameValue2 = 17;
		equipType = "CROSS";
	} else if (ID == 101 or ID == 102 or ID == 103 or ID == 104 or ID == 105 or ID == 106 or ID == 107 or ID == 108 or ID == 109 or ID == 110 or ID == 111 or ID == 112 or ID == 113 or ID == 114 or ID == 115 or ID == 116 or ID == 117 or ID == 118 or ID == 119 or ID == 120) {
		frameValue2 = 21;
		equipType = "HOLY STAFF";
	}
}
function createLevel(ID:Number):Void {
	if (ID<=20) {
		equipLevel = "+1";
	} else if (ID>=21 and ID<=40) {
		equipLevel = "+2";
	} else if (ID>=31 and ID<=60) {
		equipLevel = "+3";
	} else if (ID>=61 and ID<=80) {
		equipLevel = "+4";
	} else if (ID>=81 and ID<=100) {
		equipLevel = "+5";
	} else if (ID>=101 and ID<=104) {
		equipLevel = "+1";
	} else if (ID>=105 and ID<=108) {
		equipLevel = "+2";
	} else if (ID>=109 and ID<=112) {
		equipLevel = "+3";
	} else if (ID>=113 and ID<=116) {
		equipLevel = "+4";
	} else {
		equipLevel = "+5";
	}
}
function createName(equipID:Number):Void {
	createColor(equipID);
	createType(equipID);
	createLevel(equipID);
}
function createFrame():Number {
	frameValue = frameValue1+frameValue2;
	return (frameValue);
}
function synthText(ID: Number): String {
	if(ID != undefined and ID != 0) {
		return("L" + ID);
	} else {
		return("");
	}
}
function levelSet(ID: Number): String {
	if(ID != undefined and ID != 0) {
		return(equipLevel);
	} else {
		return("");
	}
}
function equipSlotSet():Void {
	if (_root.equipSlot1 != 0 and _root.equipSlot1 != undefined) {
		createName(_root.equipSlot1);
		_root.eSlot1.thisslot.gotoAndStop(createFrame());
		_root.eSlot1.thisslot.eqlevel.text = synthText(_root.synthSlot1);
		_root.eSlot1.thisslot.eqrarity.text = levelSet(_root.equipSlot1);
	}
	if (_root.equipSlot2 != 0 and _root.equipSlot2 != undefined) {
		createName(_root.equipSlot2);
		_root.eSlot2.thisslot.gotoAndStop(createFrame());
		_root.eSlot2.thisslot.eqlevel.text = synthText(_root.synthSlot2);
		_root.eSlot2.thisslot.eqrarity.text = levelSet(_root.equipSlot2);
	}
	if (_root.equipSlot3 != 0 and _root.equipSlot3 != undefined) {
		createName(_root.equipSlot3);
		_root.eSlot3.thisslot.gotoAndStop(createFrame());
		_root.eSlot3.thisslot.eqlevel.text = synthText(_root.synthSlot3);
		_root.eSlot3.thisslot.eqrarity.text = levelSet(_root.equipSlot3);
	}
	_root.checkEquip();
}
function gotoEquip():Void {
	gotoAndPlay("Equipment", 2);
}
function descPrev(Slot:Number):Void {
	if (Slot == 1) {
		if (_root.equipSlot1 != 0 and _root.equipSlot1 != undefined) {
			createName(_root.equipSlot1);
			_root.desc.textColor = colorValue;
			_root.desc.text = equipColor+" "+equipType+" "+equipLevel;
		} else {
			_root.desc.textColor = 0x000000;
			_root.desc.text = "EMPTY SLOT";
		}
	} else if (Slot == 2) {
		if (_root.equipSlot2 != 0 and _root.equipSlot2 != undefined) {
			createName(_root.equipSlot2);
			_root.desc.textColor = colorValue;
			_root.desc.text = equipColor+" "+equipType+" "+equipLevel;
		} else {
			_root.desc.textColor = 0x000000;
			_root.desc.text = "EMPTY SLOT";
		}
	} else if (Slot == 3) {
		if (_root.equipSlot3 != 0 and _root.equipSlot3 != undefined) {
			createName(_root.equipSlot3);
			_root.desc.textColor = colorValue;
			_root.desc.text = equipColor+" "+equipType+" "+equipLevel;
		} else {
			_root.desc.textColor = 0x000000;
			_root.desc.text = "EMPTY SLOT";
		}
	} 
}