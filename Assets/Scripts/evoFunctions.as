function checkNextEvo(): Number {
	if(_root.character == 1 and _root.level >= 5) {
		if(_root.coreTAL > _root.coreTAW and _root.coreAG > _root.coreFR) {
			//AtkBlob
			return(2);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreFR > _root.coreAG) {
			//DefBlob
			return(3);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreFR > _root.coreAG) {
			//MagBlob
			return(4);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreAG > _root.coreFR) {
			//SpdBlob
			return(5);
		} else {
			return(0);
		}
	} else if(_root.character >= 2 and _root.character <= 5 and _root.level >= 15) {
		if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 3 and _root.coreAG > _root.coreFR and _root.coreAG >= 5 and _root.happ >= -2) {
			//Bearcub
			return(6);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 3 and _root.coreAG > _root.coreFR and _root.coreAG >= 5 and _root.happ <= -3) {
			//Boulder
			return(7);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 3 and _root.coreFR > _root.coreAG and _root.coreFR >= 5 and _root.happ >= -2) {
			//Dasypo
			return(8);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 3 and _root.coreFR > _root.coreAG and _root.coreFR >= 5 and _root.happ <= -3) {
			//Magmus
			return(9);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 3 and _root.coreFR > _root.coreAG and _root.coreFR >= 5 and _root.happ >= -2) {
			//Stings
			return(10);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 3 and _root.coreFR > _root.coreAG and _root.coreFR >= 5 and _root.happ <= -3) {
			//Jelly
			return(11);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 3 and _root.coreAG > _root.coreFR and _root.coreAG >= 5 and _root.happ >= -2) {
			//Triche
			return(12);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 3 and _root.coreAG > _root.coreFR and _root.coreAG >= 5 and _root.happ <= -3) {
			//Flops
			return(13);
		} else {
			return(0);
		}
	} else if(_root.character >= 6 and _root.character <= 13 and _root.level >= 35) {
		if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 10 and _root.coreAG > _root.coreFR and _root.coreAG >= 15 and _root.happ >= -1) {
			//Canis
			return(14);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 10 and _root.coreAG > _root.coreFR and _root.coreAG >= 15 and _root.happ <= -3) {
			//Rocslide
			return(15);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 10 and _root.coreFR > _root.coreAG and _root.coreFR >= 15 and _root.happ >= -1) {
			//Azteck
			return(16);
		} else if(_root.coreTAL > _root.coreTAW and _root.coreTAL >= 10 and _root.coreFR > _root.coreAG and _root.coreFR >= 15 and _root.happ <= -3) {
			//Steamer
			return(17);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 10 and _root.coreFR > _root.coreAG and _root.coreFR >= 15 and _root.happ >= -1) {
			//Mystic
			return(18);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 10 and _root.coreFR > _root.coreAG and _root.coreFR >= 15 and _root.happ <= -3) {
			//Genus
			return(19);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 10 and _root.coreAG > _root.coreFR and _root.coreAG >= 15 and _root.happ >= -1) {
			//Spikes
			return(20);
		} else if(_root.coreTAW > _root.coreTAL and _root.coreTAW >= 10 and _root.coreAG > _root.coreFR and _root.coreAG >= 15 and _root.happ <= -3) {
			//Dendro
			return(21);
		} else {
			return(0);
		}
	} else if(_root.getCreatureTier(_root.character) == 3 and _root.level == _root.levelcap and _root.levelcap < 99) { 
		return(1);
	} else {
		return(0);
	}
}
function getEvo(): Void {
	if(checkNextEvo() != 0) {
		_root.canevo = 1;
	} else {
		_root.canevo = 0;
	}
}
function nextEvoText(): Void {
	n_plural = "s";
	if(_root.getCreatureTier(_root.character) == 0) {
			n_level = 5;
			n_games = 1;
			n_items = 1;
			n_plural = "";
	} else if(_root.getCreatureTier(_root.character) == 1) {
		n_level = 15;
		n_games = 5;
		n_items = 3;
	} else if(_root.getCreatureTier(_root.character) == 2) {
		n_level = 35;
		n_games = 15;
		n_items = 10;
	}
	if(_root.getCreatureTier(_root.character) != 3) {
		_root.nextevo.text = "Reach Level " + n_level + "\nGet " + n_games + " discipline point" + n_plural + " of one type\nGet " + n_items + " taste point" + n_plural + " of one type";
	} else {
		if(_root.level < _root.levelcap) {
			_root.nextevo.text = "Reach level " + _root.levelcap + " for REBIRTH!";
		} else {
			_root.nextevo.text = "";
		}
	}
}
function hideRebirth(): Void {
	if(_root.getCreatureTier(_root.character) < 3 or _root.level < _root.levelcap) {
		_root.RButton._x = -4000;
	}
}
function doRebirth(): Void {
	if(_root.levelcap < 99) {
		if(_root.levelcap == 90) {
			_root.levelcap += 9;
		} else {
			_root.levelcap += 10;
		}
		_root.maxHP += (_root.maxHP * 0.20);
		_root.maxATK += (_root.maxATK * 0.20);
		_root.maxDEF += (_root.maxDEF * 0.20);
		_root.maxSPD += (_root.maxSPD * 0.20);
		_root.maxMAG += (_root.maxMAG * 0.20);
	}
	_root.character = 0;
	_root.canevo = 1;
	_root.next_lvl = 100;
	_root.next_xp = 100;
	_root.level = 1;
	_root.hunger = 0;
	_root.happ = 0;
	_root.cookingBoost = 0;
	_root.cookingBoostAmount = 0;
	_root.coreType = 0;
	_root.coreAG = 0;
	_root.coreFR = 0;
	_root.coreTAL = 0;
	_root.coreTAW = 0;
	_root.ministale_c = 0;
	_root.ministale_t = 0;
	_root.rebirth = true;
}