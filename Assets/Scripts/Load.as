function loadGame():Void {
if(_root.saveInUse == 1) {
if (_root.savefile.data.saveExist == undefined) {
	_root.saveExist = 1;
	gotoAndPlay("New_Game", 1);
} 
else if (_root.savefile.data.saveExist != undefined)  {
	_root.vc_name = _root.savefile.data.vc_name;
	_root.nickname = _root.savefile.data.nickname;
	_root.character = _root.savefile.data.character;
	_root.level = _root.savefile.data.level;
	_root.hunger = _root.savefile.data.hunger;
	_root.money = _root.savefile.data.money;
	_root.tutorial = _root.savefile.data.tutorial;
	_root.coreAG = _root.savefile.data.coreAG;
	_root.coreFR = _root.savefile.data.coreFR;
	_root.coreTAW = _root.savefile.data.coreTAW;
	_root.coreTAL = _root.savefile.data.coreTAL;
	_root.coreHP = _root.savefile.data.coreHP;
	_root.coreATK = _root.savefile.data.coreATK;
	_root.coreDEF = _root.savefile.data.coreDEF;
	_root.coreSPD = _root.savefile.data.coreSPD;
	_root.coreMAG = _root.savefile.data.coreMAG;
	_root.coreType = _root.savefile.data.coreType;
	_root.maxHP = _root.savefile.data.maxHP;
	_root.maxATK = _root.savefile.data.maxATK;
	_root.maxDEF = _root.savefile.data.maxDEF;
	_root.maxSPD = _root.savefile.data.maxSPD;
	_root.maxMAG = _root.savefile.data.maxMAG;
	_root.mole_score = _root.savefile.data.mole_score;
	_root.lift_score = _root.savefile.data.lift_score;
	_root.race_score = _root.savefile.data.race_score;
	_root.ministale_c = _root.savefile.data.ministale_c;
	_root.ministale_t = _root.savefile.data.ministale_t;
	_root.happ = _root.savefile.data.happ;
	_root.canevo = _root.savefile.data.canevo;
	_root.equipSlot1 = _root.savefile.data.equipSlot1;
	_root.equipSlot2 = _root.savefile.data.equipSlot2;
	_root.equipSlot3 = _root.savefile.data.equipSlot3;
	_root.xp = _root.savefile.data.xp;
	_root.next_xp = _root.savefile.data.next_xp;
	_root.next_lvl = _root.savefile.data.next_lvl;
	_root.cookingBoost = _root.savefile.data.cookingBoost;
	_root.cookingBoostAmount = _root.savefile.data.cookingBoostAmount;
	_root.cheats = _root.savefile.data.cheats;
	_root.stasis = _root.savefile.data.stasis;
	_root.giftCounter = _root.savefile.data.giftCounter;
	_root.curGift = _root.savefile.data.curGift;
	_root.isGift = _root.savefile.data.isGift;
	_root.synthSlot1 = _root.savefile.data.synthSlot1;
	_root.synthSlot2 = _root.savefile.data.synthSlot2;
	_root.synthSlot3 = _root.savefile.data.synthSlot3;
	_root.UChest = _root.savefile.data.UChest;
	_root.synthPurple = _root.savefile.data.synthPurple;
	_root.synthBlue = _root.savefile.data.synthBlue;
	_root.synthGreen = _root.savefile.data.synthGreen;
	_root.synthRed = _root.savefile.data.synthRed;
	_root.voidLevel = _root.savefile.data.voidLevel;
	_root.void_xp = _root.savefile.data.void_xp;
	_root.void_next = _root.savefile.data.void_next;
	_root.voidInProgress = _root.savefile.data.voidInProgress;
	_root.startTime = _root.savefile.data.startTime;
	_root.drillTime = _root.savefile.data.drillTime;
	_root.isDrillBoost = _root.savefile.data.isDrillBoost;
	_root.rebirth = _root.savefile.data.rebirth;
	_root.levelcap = _root.savefile.data.levelcap;
	_root.cookTime = _root.savefile.data.cookTime;
	_root.clearVoid = _root.savefile.data.clearVoid;
	gotoAndPlay("Main", 1);
} else {
	trace("SaveExist error");
}
} else if(_root.saveInUse == 2) {
if (_root.savefile2.data.saveExist == undefined) {
	_root.saveExist = 1;
	gotoAndPlay("New_Game", 1);
} 
else if (_root.savefile2.data.saveExist != undefined)  {
	_root.vc_name = _root.savefile2.data.vc_name;
	_root.nickname = _root.savefile2.data.nickname;
	_root.character = _root.savefile2.data.character;
	_root.level = _root.savefile2.data.level;
	_root.hunger = _root.savefile2.data.hunger;
	_root.money = _root.savefile2.data.money;
	_root.tutorial = _root.savefile2.data.tutorial;
	_root.coreAG = _root.savefile2.data.coreAG;
	_root.coreFR = _root.savefile2.data.coreFR;
	_root.coreTAW = _root.savefile2.data.coreTAW;
	_root.coreTAL = _root.savefile2.data.coreTAL;
	_root.coreHP = _root.savefile2.data.coreHP;
	_root.coreATK = _root.savefile2.data.coreATK;
	_root.coreDEF = _root.savefile2.data.coreDEF;
	_root.coreSPD = _root.savefile2.data.coreSPD;
	_root.coreMAG = _root.savefile2.data.coreMAG;
	_root.coreType = _root.savefile2.data.coreType;
	_root.maxHP = _root.savefile2.data.maxHP;
	_root.maxATK = _root.savefile2.data.maxATK;
	_root.maxDEF = _root.savefile2.data.maxDEF;
	_root.maxSPD = _root.savefile2.data.maxSPD;
	_root.maxMAG = _root.savefile2.data.maxMAG;
	_root.mole_score = _root.savefile2.data.mole_score;
	_root.lift_score = _root.savefile2.data.lift_score;
	_root.race_score = _root.savefile2.data.race_score;
	_root.ministale_c = _root.savefile2.data.ministale_c;
	_root.ministale_t = _root.savefile2.data.ministale_t;
	_root.happ = _root.savefile2.data.happ;
	_root.canevo = _root.savefile2.data.canevo;
	_root.equipSlot1 = _root.savefile2.data.equipSlot1;
	_root.equipSlot2 = _root.savefile2.data.equipSlot2;
	_root.equipSlot3 = _root.savefile2.data.equipSlot3;
	_root.xp = _root.savefile2.data.xp;
	_root.next_xp = _root.savefile2.data.next_xp;
	_root.next_lvl = _root.savefile2.data.next_lvl;
	_root.cookingBoost = _root.savefile2.data.cookingBoost;
	_root.cookingBoostAmount = _root.savefile2.data.cookingBoostAmount;
	_root.cheats = _root.savefile2.data.cheats;
	_root.stasis = _root.savefile2.data.stasis;
	_root.giftCounter = _root.savefile2.data.giftCounter;
	_root.curGift = _root.savefile2.data.curGift;
	_root.isGift = _root.savefile2.data.isGift;
	_root.synthSlot1 = _root.savefile2.data.synthSlot1;
	_root.synthSlot2 = _root.savefile2.data.synthSlot2;
	_root.synthSlot3 = _root.savefile2.data.synthSlot3;
	_root.UChest = _root.savefile2.data.UChest;
	_root.synthPurple = _root.savefile2.data.synthPurple;
	_root.synthBlue = _root.savefile2.data.synthBlue;
	_root.synthGreen = _root.savefile2.data.synthGreen;
	_root.synthRed = _root.savefile2.data.synthRed;
	_root.voidLevel = _root.savefile2.data.voidLevel;
	_root.void_xp = _root.savefile2.data.void_xp;
	_root.void_next = _root.savefile2.data.void_next;
	_root.voidInProgress = _root.savefile2.data.voidInProgress;
	_root.startTime = _root.savefile2.data.startTime;
	_root.drillTime = _root.savefile2.data.drillTime;
	_root.isDrillBoost = _root.savefile2.data.isDrillBoost;
	_root.rebirth = _root.savefile2.data.rebirth;
	_root.levelcap = _root.savefile2.data.levelcap;
	_root.cookTime = _root.savefile2.data.cookTime;
	_root.clearVoid = _root.savefile2.data.clearVoid;
	gotoAndPlay("Main", 1);
} else {
	trace("SaveExist error");
}
} else if(_root.saveInUse == 3) {
if (_root.savefile3.data.saveExist == undefined) {
	_root.saveExist = 1;
	gotoAndPlay("New_Game", 1);
} 
else if (_root.savefile3.data.saveExist != undefined)  {
	_root.vc_name = _root.savefile3.data.vc_name;
	_root.nickname = _root.savefile3.data.nickname;
	_root.character = _root.savefile3.data.character;
	_root.level = _root.savefile3.data.level;
	_root.hunger = _root.savefile3.data.hunger;
	_root.money = _root.savefile3.data.money;
	_root.tutorial = _root.savefile3.data.tutorial;
	_root.coreAG = _root.savefile3.data.coreAG;
	_root.coreFR = _root.savefile3.data.coreFR;
	_root.coreTAW = _root.savefile3.data.coreTAW;
	_root.coreTAL = _root.savefile3.data.coreTAL;
	_root.coreHP = _root.savefile3.data.coreHP;
	_root.coreATK = _root.savefile3.data.coreATK;
	_root.coreDEF = _root.savefile3.data.coreDEF;
	_root.coreSPD = _root.savefile3.data.coreSPD;
	_root.coreMAG = _root.savefile3.data.coreMAG;
	_root.coreType = _root.savefile3.data.coreType;
	_root.maxHP = _root.savefile3.data.maxHP;
	_root.maxATK = _root.savefile3.data.maxATK;
	_root.maxDEF = _root.savefile3.data.maxDEF;
	_root.maxSPD = _root.savefile3.data.maxSPD;
	_root.maxMAG = _root.savefile3.data.maxMAG;
	_root.mole_score = _root.savefile3.data.mole_score;
	_root.lift_score = _root.savefile3.data.lift_score;
	_root.race_score = _root.savefile3.data.race_score;
	_root.ministale_c = _root.savefile3.data.ministale_c;
	_root.ministale_t = _root.savefile3.data.ministale_t;
	_root.happ = _root.savefile3.data.happ;
	_root.canevo = _root.savefile3.data.canevo;
	_root.equipSlot1 = _root.savefile3.data.equipSlot1;
	_root.equipSlot2 = _root.savefile3.data.equipSlot2;
	_root.equipSlot3 = _root.savefile3.data.equipSlot3;
	_root.xp = _root.savefile3.data.xp;
	_root.next_xp = _root.savefile3.data.next_xp;
	_root.next_lvl = _root.savefile3.data.next_lvl;
	_root.cookingBoost = _root.savefile3.data.cookingBoost;
	_root.cookingBoostAmount = _root.savefile3.data.cookingBoostAmount;
	_root.cheats = _root.savefile3.data.cheats;
	_root.stasis = _root.savefile3.data.stasis;
	_root.giftCounter = _root.savefile3.data.giftCounter;
	_root.curGift = _root.savefile3.data.curGift;
	_root.isGift = _root.savefile3.data.isGift;
	_root.synthSlot1 = _root.savefile3.data.synthSlot1;
	_root.synthSlot2 = _root.savefile3.data.synthSlot2;
	_root.synthSlot3 = _root.savefile3.data.synthSlot3;
	_root.UChest = _root.savefile3.data.UChest;
	_root.synthPurple = _root.savefile3.data.synthPurple;
	_root.synthBlue = _root.savefile3.data.synthBlue;
	_root.synthGreen = _root.savefile3.data.synthGreen;
	_root.synthRed = _root.savefile3.data.synthRed;
	_root.voidLevel = _root.savefile3.data.voidLevel;
	_root.void_xp = _root.savefile3.data.void_xp;
	_root.void_next = _root.savefile3.data.void_next;
	_root.voidInProgress = _root.savefile3.data.voidInProgress;
	_root.startTime = _root.savefile3.data.startTime;
	_root.drillTime = _root.savefile3.data.drillTime;
	_root.isDrillBoost = _root.savefile3.data.isDrillBoost;
	_root.rebirth = _root.savefile3.data.rebirth;
	_root.levelcap = _root.savefile3.data.levelcap;
	_root.cookTime = _root.savefile3.data.cookTime;
	_root.clearVoid = _root.savefile3.data.clearVoid;
	gotoAndPlay("Main", 1);
} else {
	trace("SaveExist error");
}
}
}
function loadArray(): Void {
	#include "ArrayLoad.as"
}