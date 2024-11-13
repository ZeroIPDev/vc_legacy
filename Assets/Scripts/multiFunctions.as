function moneyCheck(newMoney : Number): Boolean {
	if (_root.money + newMoney <= 9999999) {
		return(true);
	} else {
		return(false);
	}
}
function moneyCap(): Void {
	_root.money = 9999999;
}
function checkCost(p: Number): Boolean {
	if(_root.money - p >= 0) {
		return(true);
	} else {
		return(false);
	}
}
function quickGenerate(low : Number, high: Number, isRound: Boolean): Number {
	if(isRound == true) {
		return(Math.round((Math.random()*(1 + high - low) + low)));
	} else {
		return((Math.random()*(1 + high - low) + low));
	}
}
function giveCash(f : Number): Number {
	if(_root.battleType) {
		newCashValue = Math.round(2 * ((quickGenerate(70, 100)) * f));
	} else {
		newCashValue = Math.round((quickGenerate(70, 100)) * f);
	}
	if (moneyCheck(newCashValue)) {
		_root.money += newCashValue;
		return(newCashValue);
	} else {
		moneyCap();
		return(0);
	}
}
function giveCashFlat(n: Number): Void {
	if (moneyCheck(n)) {
		_root.money += n;
	} else {
		moneyCap();
	}
}
function restart(): Void {
	stopAllSounds();
	gotoAndPlay("Title Screen", 1);
}
function giveFood(a : Number): Void {
	_root.hunger = _root.hunger + a;
	if (_root.hunger <= 0 or _root.hunger >= 100) {
		_root.happ -=1;
	}
}
function subFood(a: Number): Void {
	_root.hunger = _root.hunger - a;
	if (_root.hunger <= 0 or _root.hunger >= 100) {
		_root.happ -= 1;
	}
}
function checkOverTaste(): Void {
	if(_root.coreTAW - _root.coreTAL >= 20) {
		_root.happ -=1;
	} else if(_root.coreTAL - _root.coreTAW >= 20) {
		_root.happ -=1;
	}
}
function happIncrease(): Void {
	if(_root.happ < 0) {
		_root.happ += 1;
	}
}
function getCreatureTier(c: Number): Number {
	if(c <= 5 and c > 1) {
		return(1);
	} else if(c <= 13 and c > 5) {
		return(2);
	} else if(c <= 21 and c > 13) {
		return(3);
	} else {
		return(0);
	}
}
function getName(i: Number): String {
	if(i == 2) {
		return("FORME A");
	} else if(i == 3) {
		return("FORME D");
	} else if(i == 4) {
		return("FORME M");
	} else if(i == 5) {
		return("FORME S");
	} else if(i == 6) {
		return("BEARCUB");
	} else if(i == 7) {
		return("BOULDER");
	} else if(i == 8) {
		return("DASYPO");
	} else if(i == 9) {
		return("MAGMUS");
	} else if(i == 10) {
		return("STINGS");
	} else if(i == 11) {
		return("JELLY");
	} else if(i == 12) {
		return("TRICHE");
	} else if(i == 13) {
		return("FLOPS");
	} else if(i == 14) {
		return("CANIS");
	} else if(i == 15) {
		return("ROCSLIDE");
	} else if(i == 16) {
		return("AZTECK");
	} else if(i == 17) {
		return("STEAMER");
	} else if(i == 18) {
		return("MYSTIC");
	} else if(i == 19) {
		return("GENUS");
	} else if(i == 20) {
		return("SPIKES");
	} else if(i == 21) {
		return("DENDRO");
	} else if(i == 22 or i == 23) {
		return(_root.getVoidName(_root.voidPhase));
	} else {
		return("ERROR");
	}
}
function getMoveInfo(i: Number): Array {
	//Name, Type, Core, Damage, Effect, Description
	if(i == 1) {
		return(["CRASH", "Phys", "Physical", 15, "N/A", "The user crashes their own body into their foe."]);
	} else if(i == 2) {
		return(["JOLT", "Sorcery", "Magical", 15, "N/A", "A small ball of energy shoots off from the user’s energy receptors."]);
	} else if(i == 3) {
		return(["CLAW", "Swift", "Physical", 20, "N/A", "A wicked swipe with razor sharp claws."]);
	} else if(i == 4) {
		return(["ROCK BREAK", "Resist", "Physical", 10, "Chance to lower target's speed.", "The user smashes a rock over the target’s head."]);
	} else if(i == 5) {
		return(["BASH", "Resist", "Physical", 15, "N/A", "The user bashes a shield against their foe."]);
	} else if(i == 6) {
		return(["BUBBLES", "Sorcery", "Magical", 10, "Chance to lower target's defense.", "The user fires acidic bubbles at their foe."]);
	} else if(i == 7) {
		return(["PUNCH", "Phys", "Physical", 15, "Chance to lower target's attack.", "The user punches their foe with great strength."]);
	} else if(i == 8) {
		return(["FLAME PUNCH", "Resist", "Physical", 15, "Chance to lower target's defense.", "The user punches their foe with great, fiery strength."]);
	} else if(i == 9) {
		return(["SHOCK PUNCH", "Sorcery", "Physical", 20, "Chance to lower target's speed.", "A punch that sends powerful shockwaves through the target’s body."]);
	} else if(i == 10) {
		return(["QUICK PUNCH", "Swift", "Physical", 20, "N/A", "An extremely fast punch from the user."]);
	} else if(i == 11) {
		return(["HARD TACKLE", "Phys", "Physical", 30, "N/A", "The user crashes their body into their foe with extreme strength."]);
	} else if(i == 12) {
		return(["ICE SHARD", "Sorcery", "Magical", 25, "N/A", "A sharp piece of ice pierces the foe."]);
	} else if(i == 13) {
		return(["LAVA RUSH", "Resist", "Magical", 30, "N/A", "A rush of lava erupts underneath the foe."]);
	} else if(i == 14) {
		return(["GEYSER", "Sorcery", "Magical", 30, "Chance to lower target's defense.", "An eruption of water that blasts the foe."]);
	} else if(i == 15) {
		return(["CHOMP", "Phys", "Physical", 40, "Chance to lower target's speed.", "The user crunches their foe using strong jaws."]);
	} else if(i == 16) {
		return(["AQUA PUNCH", "Swift", "Physical", 35, "N/A", "A punch that envelopes the foe in a powerful whirlpool."]);
	} else if(i == 17) {
		return(["TOXINS", "Sorcery", "Magical", 20, "Strong chance to lower target's attack.", "A poison cloud envelopes the foe."]);
	} else if(i == 18) {
		return(["ICE BLAST", "Sorcery", "Magical", 30, "N/A", "A barrage of icicles strike the foe."]);
	} else if(i == 19) {
		return(["SUPER SPEED", "Swift", "Physical", 35, "N/A", "The user quickly tackles their foe."]);
	} else if(i == 20) {
		return(["TRIPLE RUSH", "Resist", "Magical", 40, "N/A", "Three streams of lava strike the foe."]);
	} else if(i == 21) {
		return(["TRIPLE GUSH", "Sorcery", "Magical", 35, "N/A", "Three geysers strike the foe."]);
	} else if(i == 22) {
		return(["CROSS CLAW", "Swift", "Physical", 40, "N/A", "The user strikes the foe with two claw strikes."]);
	} else if(i == 23) {
		return(["SUPER JOLT", "Sorcery", "Magical", 40, "N/A", "Multiple bolts of energy assault the foe."]);
	} else if(i == 24) {
		return(["ROCK PUNCH", "Resist", "Physical", 35, "Chance to lower target's defense.", "A stone fist strikes the foe."]);
	} else if(i == 25) {
		return(["HOWL", "N/A", "Special", 0, "Lowers target's attack.", "A cry is let out by the user, shaking the target to their core."]);
	} else if(i == 26) {
		return(["DIFFUSE", "N/A", "Special", 0, "Lowers target's defense.", "A pulse is emanated from the user’s body that puts the target at unease."]);
	} else if(i == 27) {
		return(["SHRIEK", "N/A", "Special", 0, "Lowers target's speed.", "The user lets an ear splitting cry out."]);
	} else if(i == 28) {
		return(["OMEN", "N/A", "Special", 0, "Lowers target's magic.", "The user casts a warning to their foe."]);
	} else if(i == 29) {
		return(["HI-FREQ", "N/A", "Special", 0, "Strongly lowers target's attack.", "A high frequency tune is emitted by the user to distract their foe."]);
	} else if(i == 30) {
		return(["LO-FREQ", "N/A", "Special", 0, "Strongly lowers target's defense.", "A low frequency tune is emitted by the user to frighten their foe."]);
	} else if(i == 31) {
		return(["SCREAM", "N/A", "Special", 0, "Strongly lowers target's speed.", "The user envelopes their foe in a terrifying sound, stopping them short."]);
	} else if(i == 32) {
		return(["CURSE", "N/A", "Special", 0, "Strongly lowers target's magic.", "The user envelopes their foe in a terrifying sound, stopping them short."]);
	} else if(i == 33) {
		return(["CRY", "N/A", "Special", 0, "Raises user's attack.", "The user howls with extreme volume."]);
	} else if(i == 34) {
		return(["IRON WILL", "N/A", "Special", 0, "Raises user's defense.", "The user steels themselves for attacks."]);
	} else if(i == 35) {
		return(["BOOST", "N/A", "Special", 0, "Raises user's speed.", "The user runs in place to warm up."]);
	} else if(i == 36) {
		return(["VEIL", "N/A", "Special", 0, "Raises user's magic.", "The user casts a protective layer around themselves."]);
	}
}
function getMoveset(i: Number): Array {
	if(i == 6) {
		return([7, 10, 26, 25]);
	} else if(i == 7) {
		return([4, 5, 34, 27]);
	} else if(i == 8) {
		return([5, 3, 26, 28]);
	} else if(i == 9) {
		return([8, 4, 34, 28]);
	} else if(i == 10) {
		return([2, 9, 26, 36]);
	} else if(i == 11) {
		return([6, 2, 26, 36]);
	} else if(i == 12) {
		return([10, 2, 1, 26]);
	} else if(i == 13) {
		return([6, 10, 2, 27]);
	} else if(i == 14) {
		return([15, 22, 33, 30]);
	} else if(i == 15) {
		return([24, 11, 34, 32]);
	} else if(i == 16) {
		return([11, 20, 32, 34]);
	} else if(i == 17) {
		return([13, 11, 29, 34]);
	} else if(i == 18) {
		return([18, 21, 36, 30]);
	} else if(i == 19) {
		return([12, 14, 17, 32]);
	} else if(i == 20) {
		return([19, 23, 21, 34]);
	} else if(i == 21) {
		return([17, 16, 33, 30]);
	} else if(i == 22) { 
		return([37, 23, 15, 17]);
	} else if(i == 23) {
		return([38, 38, 38, 38]);
	} else {
		return([1, 2, 3, 4]);
	}
}
function compareNumbers(i: Number, i2: Number): Boolean {
	if(i > i2) {
		return(true);
	} else if(i2 > i) {
		return(false);
	} else {
		if(_root.quickGenerate(1, 1, true) == 1) {
			return(true);
		} else {
			return(false);
		}
	}
}
function isDemo(isMenu: Boolean): Void {
	if(_root.demo == true) {
		if(_root.level >= 20) {
			if(!isMenu) {
				_root.recordRTC();
				_root.saveClear();
				_root.saveGame();
				_root.saveArray();
				_root.saveFlush();
			}
			gotoAndPlay("DemoEnd", 1);
		}
	}
}
function demoString(): Void {
	if(_root.demo) {
		_root.DemoString.text = "DEMO VERSION";
	} else if(_root.debug or _root.battle_debug) {
		_root.DemoString.text = "DEBUG VERSION";
	}
}
function gotoCheats(): Void {
	if(_root.cheats == false or _root.cheats == undefined) {
		gotoAndPlay("DebugMenu", 1);
	} else {
		gotoAndPlay("DebugMenu", 2);
	}
}
function happOverCheck(): Void {
	if(_root.happ > 0) {
		_root.happ = 0;
	}
}
function equip2Convert(): Void {
	if(_root.equip2[0] == undefined) {
		for(i=0;i<_root.equip.length;i++) {
			_root.equip2.push(0);
		}
	}
	if(_root.towerClears[0] == undefined) {
		_root.towerClears.push(0);
	}
	if(_root.levelcap == undefined) {
		_root.levelcap = 50;
	}
	if(_root.synthPurple == undefined) {
		_root.synthPurple = 0;
	}
	if(_root.synthBlue == undefined) {
		_root.synthBlue = 0;
	}
	if(_root.synthRed == undefined) {
		_root.synthRed = 0;
	}
	if(_root.synthGreen == undefined) {
		_root.synthGreen = 0;
	}
	if(_root.UChest == undefined) {
		_root.UChest = 0;
	}
	if(_root.voidLevel == undefined) {
		_root.voidLevel = 0;
	}
	if(_root.void_xp == undefined) {
		_root.void_xp = 0;
	}
	if(_root.void_next == undefined) {
		_root.void_next = 2;
	}
	if(_root.voidInProgress == undefined) {
		_root.voidInProgress = 0;
	}
}