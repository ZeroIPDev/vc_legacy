function recordRTC(): Void {
	if(_root.character != 0) {
		var RTC : Date = new Date();
		_root.savedRTC[0] = _root.returnRTC(0);
		_root.savedRTC[1] = _root.returnRTC(2);
		_root.savedRTC[2] = _root.returnRTC(1);
		_root.savedRTC[3] = _root.returnRTC(3);
		_root.savedRTC[4] = _root.returnRTC(5);
	}
}
function returnRTC(t: Number): Number {
	//Type: 0 - Year, 1 - Month, 2 - Day, 3 - Hours, 4 - Minutes, 5 - Universal (Milli), 6 - Day of week
	if (t == 0) {
		return(_root.RTC.getFullYear());
	} else if(t == 2) {
		return(_root.RTC.getDate());
	} else if(t == 1) {
		return(_root.RTC.getMonth() + 1);
	} else if(t == 3) {
		return(_root.RTC.getHours());
	} else if(t == 4) {
		return(_root.RTC.getMinutes());
	} else if(t == 5) {
		return(_root.RTC.getTime());
	} else if(t == 6) {
		return(_root.RTC.getDay());
	}
}
function getLastDay(m: Number): Number {
	if(m == 1 or m == 3 or m == 5 or m == 7 or m == 8 or m == 10 or m == 12) {
		return(31);
	} else if(m == 2) {
		return(28);
	} else {
		return(30);
	}
}
function getRTC(): Array {
	//Return format: Type, Amount
	//Type: 0 - Year, 1 - Month, 2 - Day, 3 - Hours
	var RTC : Date = new Date();
	if(_root.returnRTC(0) - _root.savedRTC[0] >= 2) {
		return([0, 2]);
	} else if(_root.returnRTC(0) - _root.savedRTC[0] == 1 and _root.returnRTC(1) == 1 and _root.savedRTC[2] == 12) { 
		return([2, (31 - _root.savedRTC[1]) + _root.returnRTC(2)]);
	} else if(_root.returnRTC(0) - _root.savedRTC[0] == 1) {
		return([1, (_root.returnRTC(1) + (12 * (_root.returnRTC(0) - _root.savedRTC[0])))]);
	} else {
		if(_root.returnRTC(1) - _root.savedRTC[2] > 1 and _root.returnRTC(0) == _root.savedRTC[0]) {
			return([1, _root.returnRTC(1) - _root.savedRTC[2]]);
		} else if(_root.RTC.returnRTC(1) - _root.savedRTC[2] == 1) {
			return([2, (getLastDay(_root.savedRTC[2]) - _root.savedRTC[1]) + _root.returnRTC(2)]);
		} else {
			if(_root.returnRTC(2) - _root.savedRTC[1] >= 1) {
				return([2, _root.returnRTC(2) - _root.savedRTC[1]]);
			} else if(_root.returnRTC(2) - _root.savedRTC[1] == 1) { 
				return([3, (24 - _root.savedRTC[3]) + _root.returnRTC(3)]);
			} else {
				if(_root.returnRTC(3) - _root.savedRTC[3] >= 1) {
					return([3, _root.returnRTC(3) - _root.savedRTC[3]]);
				} else {
					return([3, 0]);
				}
			}
		}
	}
}
function compareRTC(): Void {
	if(_root.savedRTC[0] != undefined and _root.character != 0) {
		p = _root.getRTC(); //passed time
		if(p[0] == 0 and p[1] >= 2) {
			subHunger(1000);
		} else if(p[0] == 1) {
			subHunger(Math.round(p[1] * 100));
		} else if(p[0] == 2) {
			subHunger(Math.round(p[1] * 7));
		} else if(p[0] == 3) {
			subHunger(Math.round(p[1] * 0.3));
		} else {
			subHunger(0);
		}
	}
}
//function compareRTC(): Void {
//if (_root.savedRTC[0] != undefined) {
	//This sytem is straight fucked, new years will destroy this thing
	//if (_root.savedRTC[0] == _root.RTC.getFullYear()) {
	//	if (_root.savedRTC[2] == _root.RTC.getMonth()) {
	//		if (_root.savedRTC[1] == _root.RTC.getDate()) {
	//			if (_root.savedRTC[3] == _root.RTC.getHours()) {
	//				subHunger(0);
	//			} else {
	//				subHunger(Math.round((_root.RTC.getHours() - _root.savedRTC[3]) * 0.3));
	//			}
	//		} else {
	//			if(_root.savedRTC[1] != 30 and _root.savedRTC[1] != 31) {
	//				subHunger((_root.RTC.getDate() - _root.savedRTC[1]) * 10);
	//			} else {
	//				subHunger(Math.round((_root.RTC.getDate() - _root.savedRTC[1]) * 0.5));
	//			}
	//		}
		//} else {
		//	subHunger(Math.round((_root.RTC.getMonth() - _root.savedRTC[2]) * 100));
		//}
	//} else {
	//	subHunger(1000);
//	}
//}
function subHunger(n : Number): Void {
	_root.subFood(n);
	if (_root.hunger <= -200 or _root.hunger >= 200 or _root.happ <= -10) {
		_root.deathCondition = true;
		stopAllSounds();
		gotoAndPlay("Death", 1);
	}
}
function checkDeath(): Void {
	if (_root.deathCondition) {
		_root.saveClear();
		_root.saveFlush();
		_root.restart();
	} else {
		gotoAndPlay("Main", 1);
	}
}
function updateTime(): Number {
	var currentTime: Date = new Date();
	return(currentTime.getTime());
}
function lockoutCheck(): Void {
	if(_root.savedRTC[4] != undefined and _root.updateTime() < _root.savedRTC[4]) {
		gotoAndPlay("Lockout", 1);
	}
}