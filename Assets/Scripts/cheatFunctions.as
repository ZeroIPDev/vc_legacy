function showValues(s: Number): Void {
	if(s == 1) {
		//Set Boxes
		_root.cHP.text = _root.coreHP;
		_root.cATK.text = _root.coreATK;
		_root.cDEF.text = _root.coreDEF;
		_root.cSPD.text = _root.coreSPD;
		_root.cMAG.text = _root.coreMAG;
		_root.cmaxHP.text = _root.maxHP;
		_root.cmaxATK.text = _root.maxATK;
		_root.cmaxDEF.text = _root.maxDEF;
		_root.cmaxSPD.text = _root.maxSPD;
		_root.cmaxMAG.text = _root.maxMAG;
		_root.cequip1.text = _root.equipSlot1;
		_root.cequip2.text = _root.equipSlot2;
		_root.cequip3.text = _root.equipSlot3;
		_root.cSR.text = _root.synthRed;
		_root.cSB.text = _root.synthBlue;
		_root.cSP.text = _root.synthPurple;
		_root.cSG.text = _root.synthGreen;
		_root.cVL.text = _root.voidLevel;
		_root.cVP.text = _root.voidInProgress;
		//Char Limits
		_root.cHP.restrict = "0-9";
		_root.cATK.restrict = "0-9";
		_root.cDEF.restrict = "0-9";
		_root.cSPD.restrict = "0-9";
		_root.cMAG.restrict = "0-9";
		_root.cmaxHP.restrict = "0-9";
		_root.cmaxATK.restrict = "0-9";
		_root.cmaxDEF.restrict = "0-9";
		_root.cmaxSPD.restrict = "0-9";
		_root.cmaxMAG.restrict = "0-9";
		_root.cequip1.restrict = "0-9";
		_root.cequip2.restrict = "0-9";
		_root.cequip3.restrict = "0-9";
		_root.cSR.restrict = "0-9";
		_root.cSB.restrict = "0-9";
		_root.cSP.restrict = "0-9";
		_root.cSG.restrict = "0-9";
		_root.cVL.restrict = "0-9";
		_root.cVP.restrict = "0-9";
	} else if(s == 2) {
		//Set Boxes
		_root.cCHAR.text = _root.character;
		_root.cNAME.text = _root.vc_name;
		_root.cMONEY.text = _root.money;
		_root.cLEVEL.text = _root.level;
		_root.cXP.text = _root.xp;
		_root.cNEXT.text = _root.next_lvl;
		_root.cHAPP.text = _root.happ;
		_root.cFR.text = _root.coreFR;
		_root.cAG.text = _root.coreAG;
		_root.cSWT.text = _root.coreTAW;
		_root.cSALT.text = _root.coreTAL;
		_root.cSTALEC.text = _root.ministale_c;
		_root.cSTALET.text = _root.ministale_t;
		_root.cHUNG.text = _root.hunger;
		_root.ccookBoost.text = _root.cookingBoost;
		_root.ccookBoostAMT.text = _root.cookingBoostAmount;
		_root.cTYPE.text = _root.coreType;
		//Char Limits
		_root.cCHAR.restrict = "0-9";
		_root.cMONEY.restrict = "0-9";
		_root.cLEVEL.restrict = "0-9";
		_root.cXP.restrict = "0-9";
		_root.cNEXT.restrict = "0-9";
		_root.cHAPP.restrict = "-0-9";
		_root.cFR.restrict = "0-9";
		_root.cAG.restrict = "0-9";
		_root.cSWT.restrict = "0-9";
		_root.cSALT.restrict = "0-9";
		_root.cSTALEC.restrict = "0-9";
		_root.cSTALET.restrict = "0-9";
		_root.cHUNG.restrict = "0-9";
		_root.ccookBoost.restrict = "0-9";
		_root.ccookBoostAMT.restrict = "0-9";
		_root.cTYPE.restrict = "0-9";
	} else if(s == 3) {
		_root.cCHESTS.restrict = "0-9";
		_root.cEQUIP.restrict = "0-9";
		_root.cCOOK.restrict = "0-9";
	} else if(s == 4) {
		_root.cSCENE.restrict = "0-9";
		_root.cFRAME.restrict = "0-9";
	} else if(s == 5) {
		//Set Boxes
		_root.cYEAR.text = _root.savedRTC[0];
		_root.cMONTH.text = _root.savedRTC[2];
		_root.cDATE.text = _root.savedRTC[1];
		_root.cHOUR.text = _root.savedRTC[3];
		//Char Limits
		_root.cYEAR.restrict = "0-9";
		_root.cMONTH.restrict = "0-9";
		_root.cDATE.restrict = "0-9";
		_root.cHOUR.restrict = "0-9";
	}
}
function setValues(s: Number): Void {
	if(s == 1) {
		_root.coreHP = Number(_root.cHP.text);
		_root.coreATK = Number(_root.cATK.text);
		_root.coreDEF = Number(_root.cDEF.text);
		_root.coreSPD = Number(_root.cSPD.text);
		_root.coreMAG = Number(_root.cMAG.text);
		_root.maxHP = Number(_root.cmaxHP.text);
		_root.maxATK = Number(_root.cmaxATK.text);
		_root.maxDEF = Number(_root.cmaxDEF.text);
		_root.maxSPD = Number(_root.cmaxSPD.text);
		_root.maxMAG = Number(_root.cmaxMAG.text);
		_root.equipSlot1 = Number(_root.cequip1.text);
		_root.equipSlot2 = Number(_root.cequip2.text);
		_root.equipSlot3 = Number(_root.cequip3.text);
		_root.synthRed = Number(_root.cSR.text);
		_root.synthBlue = Number(_root.cSB.text);
		_root.synthPurple = Number(_root.cSP.text);
		_root.synthGreen = Number(_root.cSG.text);
		_root.voidLevel = Number(_root.cVL.text);
		_root.voidInProgress = Number(_root.cVP.text);
	} else if(s == 2) {
		_root.character = Number(_root.cCHAR.text);
		_root.vc_name = _root.cNAME.text;
		_root.money = Number(_root.cMONEY.text);
		_root.level = Number(_root.cLEVEL.text);
		_root.xp = Number(_root.cXP.text);
		_root.next_lvl = Number(_root.cNEXT.text);
		_root.happ = Number(_root.cHAPP.text);
		_root.coreFR = Number(_root.cFR.text);
		_root.coreAG = Number(_root.cAG.text);
		_root.coreTAW = Number(_root.cSWT.text);
		_root.coreTAL = Number(_root.cSALT.text);
		_root.ministale_c = Number(_root.cSTALEC.text);
		_root.ministale_t = Number(_root.cSTALET.text);
		_root.hunger = Number(_root.cHUNG.text);
		_root.cookingBoost = Number(_root.ccookBoost.text);
		_root.cookingBoostAmount = Number(_root.ccookBoostAMT.text);
		_root.coreType = Number(_root.cTYPE.text);
	} else if(s == 5) {
		_root.savedRTC[0] = Number(_root.cYEAR.text);
		_root.savedRTC[2] = Number(_root.cMONTH.text);
		_root.savedRTC[1] = Number(_root.cDATE.text);
		_root.savedRTC[3] = Number(_root.cHOUR.text);
	}
}
function cheatArray(a: Number): Void {
	if(a == 1 and _root.cCHESTS.text != "") {
		_root.chests.push(Number(_root.cCHESTS.text));
		_root.cCHESTS.text = "";
	} else if(a == 2 and _root.cEQUIP.text != "") {
		_root.equip.push(Number(_root.cEQUIP.text));
		_root.equip2.push(0);
		_root.cEQUIP.text = "";
	} else if(a == 3 and _root.cCOOK.text != "") {
		_root.cooking.push(Number(_root.cCOOK.text));
		_root.cCOOK.text = "";
	}
}
function debugCheck(): Void {
	if(_root.debug == true) {
		_root.debugGoto._x = 596.80;
	}
}
function skipTo(s: Number, f: Number): Void {
	stopAllSounds();
	if(s == 1) {
		gotoAndPlay("INT", f);
	} else if(s == 2) {
		gotoAndPlay("Intro", f);
	} else if(s == 3) {
		gotoAndPlay("Title Screen", f);
	} else if(s == 4) {
		gotoAndPlay("Transition", f);
	} else if(s == 5) {
		gotoAndPlay("New_Game", f);
	} else if(s == 6) {
		gotoAndPlay("Main", f);
	} else if(s == 7) {
		gotoAndPlay("ArenaMenu", f);
	} else if(s == 8) {
		gotoAndPlay("Arena", f);
	} else if(s == 9) {
		gotoAndPlay("ArenaBattle", f);
	} else if(s == 10) {
		gotoAndPlay("ArenaDone", f);
	} else if(s == 11) {
		gotoAndPlay("Shop", f);
	} else if(s == 12) {
		gotoAndPlay("Cooking", f);
	} else if(s == 13) {
		gotoAndPlay("Chests", f);
	} else if(s == 14) {
		gotoAndPlay("ItemFeed", f);
	} else if(s == 15) {
		gotoAndPlay("Equipment", f);
	} else if(s == 16) {
		gotoAndPlay("Open", f);
	} else if(s == 17) {
		gotoAndPlay("Evo", f);
	} else if(s == 18) {
		gotoAndPlay("Hatch", f);
	} else if(s == 19) {
		gotoAndPlay("Evolution", f);
	} else if(s == 20) {
		gotoAndPlay("Mole", f);
	} else if(s == 21) {
		gotoAndPlay("Cross", f);
	} else if(s == 22) {
		gotoAndPlay("Lift", f);
	} else if(s == 23) {
		gotoAndPlay("Race", f);
	} else if(s == 24) {
		gotoAndPlay("Battle", f);
	} else if(s == 25) {
		gotoAndPlay("BattleAnimations", f);
	} else if(s == 26) {
		gotoAndPlay("DeathAnim", f);
	} else if(s == 27) {
		gotoAndPlay("Death", f);
	} else if(s == 28) {
		gotoAndPlay("XPGain", f);
	} else if(s == 29) {
		gotoAndPlay("XPGain_unused", f);
	} else if(s == 30) {
		gotoAndPlay("BattleAnimations_old", f);
	} else if(s == 31) {
		gotoAndPlay("bad", f);
	} else if(s == 32) {
		gotoAndPlay("DemoEnd", f);
	} else if(s == 33) {
		gotoAndPlay("Credits", f);
	} else if(s == 34) {
		gotoAndPlay("DebugMenu", f);
	} else if(s == 35) {
		gotoAndPlay("Stasis", f);
	} else if(s == 36) {
		gotoAndPlay("Gifts", f);
	} else if(s == 37) {
		gotoAndPlay("SynthFeed", f);
	} else if(s == 38) {
		gotoAndPlay("VoidIntro", f);
	} else if(s == 39) {
		gotoAndPlay("TowerMenu", f);
	}
}