function setChest():Void {
	_root.chest.gotoAndStop(CHEST);
}
function choosePool (chestNum : Number):Number {
	poolnum = Math.floor(Math.random()*(1 + 100 - 1) + 1);
	if (chestNum == 1) {
		if (poolnum <= 60) {
			return(quickGenerate(1, 19, true));
		}
		else if (poolnum > 60 and poolnum <= 90) {
			return(quickGenerate(21, 39, true));
		}
		else if (poolnum > 90 and poolnum <= 100) {
			return(quickGenerate(21, 39, true));
		}
	} else if (chestNum == 2) {
		if (poolnum <= 30) {
			return(quickGenerate(1, 19, true));
		}
		else if (poolnum > 30 and poolnum <= 85) {
			return(quickGenerate(21, 39, true));
		}
		else if (poolnum > 85 and poolnum <= 100) {
			return(quickGenerate(41, 59, true));
		}
	} else if (chsetNum == 3) {
		if (poolnum <= 40) {
			return(quickGenerate(21, 39, true));
		}
		else if (poolnum > 40 and poolnum <= 90) {
			return(quickGenerate(41, 59, true));
		}
		else if (poolnum > 90 and poolnum <= 100) {
			return(quickGenerate(61, 79, true));
		}
	} else if (chestNum == 4) {
		if (poolnum <= 60) {
			return(quickGenerate(61, 79, true));
		}
		else if (poolnum > 60 and poolnum <= 85) {
			return(quickGenerate(81, 99, true));
		}
		else {
			return(quickGenerate(101, 119, true));
		}
	} else if (chestNum == 5) {
		if (poolnum <= 15) {
			return(quickGenerate(61, 79, true));
		}
		else if (poolnum > 15 and poolnum <= 85) {
			return(quickGenerate(81, 99, true));
		}
		else {
			return(quickGenerate(101, 119, true));
		}
	}
}
function createColor(ID : Number): Void {
	if (ID == 1  or ID == 21 or ID == 41 or ID == 61 or ID == 81 or ID == 5 or ID == 25 or ID == 45 or ID == 65 or ID == 85 or ID == 9 or ID == 29 or ID == 49 or ID == 69 or ID == 89 or ID == 13 or ID == 33 or ID == 53 or ID == 73 or ID == 93 or ID == 17 or ID == 37 or ID == 57 or ID == 77 or ID == 97 or ID == 101 or ID == 105 or ID == 109 or ID == 113 or ID == 117) {
		frameValue1 = 1;
		colorValue = 0xA200FF;
		equipColor = "PURPLE";
	}
	else if (ID == 2  or ID == 22 or ID == 42 or ID == 62 or ID == 82 or ID == 6 or ID == 26 or ID == 46 or ID == 66 or ID == 86 or ID == 10 or ID == 30 or ID == 50 or ID == 70 or ID == 90 or ID == 14 or ID == 34 or ID == 54 or ID == 74 or ID == 94 or ID == 18 or ID == 38 or ID == 58 or ID == 78 or ID == 98 or ID == 102 or ID == 106 or ID == 110 or ID == 114 or ID == 118) {
		frameValue1 = 2;
		colorValue = 0x001BFF;
		equipColor = "BLUE";
	}
	else if (ID == 3  or ID == 23 or ID == 43 or ID == 63 or ID == 83 or ID == 7 or ID == 27 or ID == 47 or ID == 67 or ID == 87 or ID == 11 or ID == 31 or ID == 51 or ID == 71 or ID == 91 or ID == 15 or ID == 35 or ID == 55 or ID == 75 or ID == 95 or ID == 19 or ID == 39 or ID == 59 or ID == 79 or ID == 99 or ID == 103 or ID == 107 or ID == 111 or ID == 115 or ID == 119) {
		frameValue1 = 3;
		colorValue = 0x00FF0F;
		equipColor = "GREEN";
	}
	else if (ID == 4  or ID == 24 or ID == 44 or ID == 64 or ID == 84 or ID == 8 or ID == 28 or ID == 48 or ID == 68 or ID == 88 or ID == 12 or ID == 32 or ID == 52 or ID == 72 or ID == 92 or ID == 16 or ID == 36 or ID == 56 or ID == 76 or ID == 96 or ID == 20 or ID == 40 or ID == 60 or ID == 80 or ID == 100 or ID == 104 or ID == 108 or ID == 112 or ID == 116 or ID == 120) {
		frameValue1 = 4;
		colorValue = 0xFF0000;
		equipColor = "RED";
	}
}
function createType(ID : Number): Void {
	if (ID == 1 or ID == 2 or ID == 3 or ID == 4 or ID == 21 or ID == 22 or ID == 23 or ID == 24 or ID == 41 or ID == 42 or ID == 43 or ID == 44 or ID == 61 or ID == 62 or ID == 63 or ID == 64 or ID == 81 or ID == 82 or ID == 83 or ID == 84) {
		frameValue2 = 0;
		equipType = "POTION";
	}
	else if (ID == 5 or ID == 6 or ID == 7 or ID == 8 or ID == 25 or ID == 26 or ID == 27 or ID == 28 or ID == 45 or ID == 46 or ID == 47 or ID == 48 or ID == 65 or ID == 66 or ID == 67 or ID == 68 or ID == 85 or ID == 86 or ID == 87 or ID == 88) {
		frameValue2 = 4;
		equipType = "SWORD";
	}
	else if (ID == 9 or ID == 10 or ID == 11 or ID == 12 or ID == 29 or ID == 30 or ID == 31 or ID == 32 or ID == 49 or ID == 50 or ID == 51 or ID == 52 or ID == 69 or ID == 70 or ID == 71 or ID == 72 or ID == 89 or ID == 90 or ID == 91 or ID == 92) {
		frameValue2 = 8;
		equipType = "SHIELD";
	}
	else if (ID == 13 or ID == 14 or ID == 15 or ID == 16 or ID == 33 or ID == 34 or ID == 35 or ID == 36 or ID == 53 or ID == 54 or ID == 55 or ID == 56 or ID == 73 or ID == 74 or ID == 75 or ID == 76 or ID == 93 or ID == 94 or ID == 95 or ID == 96) {
		frameValue2 = 12;
		equipType = "SHOE";
	}
	else if (ID == 17 or ID == 18 or ID == 19 or ID == 20 or ID == 37 or ID == 38 or ID == 39 or ID == 40 or ID == 57 or ID == 58 or ID == 59 or ID == 60 or ID == 77 or ID == 78 or ID == 79 or ID == 80 or ID == 97 or ID == 98 or ID == 99 or ID == 100) {
		frameValue2 = 16;
		equipType = "CROSS";
	}
	else if (ID == 101 or ID == 102 or ID == 103 or ID == 104 or ID == 105 or ID == 106 or ID == 107 or ID == 108 or ID == 109 or ID == 110 or ID == 111 or ID == 112 or ID == 113 or ID == 114 or ID == 115 or ID == 116 or ID == 117 or ID == 118 or ID == 119 or ID == 120) {
		frameValue2 = 20;
		equipType = "HOLY STAFF";
	}
	
}
function createLevel(ID : Number): Void {
	if (ID <= 20) {
		equipLevel = "+1";
	}
	else if (ID > 20 and ID <= 40) {
		equipLevel = "+2";
	}
	else if (ID > 30 and ID <= 60) {
		equipLevel = "+3";
	}
	else if (ID > 60 and ID <= 80) {
		equipLevel = "+4";
	}
	else if (ID > 80 and ID <= 100) {
		equipLevel = "+5";
	}
	else if (ID > 100 and ID <= 104) {
		equipLevel = "+1";
	}
	else if (ID > 104 and ID <= 108) {
		equipLevel = "+2";
	}
	else if (ID > 108 and ID <= 112) {
		equipLevel = "+3";
	}
	else if (ID > 112 and ID <= 116) {
		equipLevel = "+4";
	}
	else {
		equipLevel = "+5";
	}
}
function createName(equipID : Number):Void {
	createColor(equipID);
	createType(equipID);
	createLevel(equipID);
}
function createFrame(): Number {
	frameValue = frameValue1 + frameValue2;
	return(frameValue);
}
function correctToMin(n: Number): Number {
	if(n == undefined or n == 0) {
		return(1);
	} else {
		return(n);
	}
}
function chooseEquip(): Void {
	equipNum = _root.correctToMin(_root.choosePool(CHEST));
	createName(equipNum);
	_root.newEquip.gotoAndStop(createFrame());
	equipLength = _root.equip.push(equipNum);
	_root.equip2.push(0);
}
function display():Void {
	_root.displayName.textColor = colorValue;
	_root.displayName.text = equipColor + " " + equipType + " " + equipLevel + "!";
}