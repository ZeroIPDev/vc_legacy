if (_root.vc_name != "BLOB") {
	_root.nickname = 1;
}
_root.level = 1;
if(_root.rebirth == undefined or !_root.rebirth) {
_root.maxHP = 100;
_root.maxATK = 30;
_root.maxDEF = 30;
_root.maxSPD = 30;
_root.maxMAG = 30;
}
_root.coreHP = _root.quickGenerate(100, 125, true);
_root.coreATK = _root.quickGenerate(5, 6, true);
_root.coreDEF = _root.quickGenerate(5, 6, true);
_root.coreSPD = _root.quickGenerate(5, 6, true);
_root.coreMAG = _root.quickGenerate(5, 6, true);
_root.hunger = _root.start_hunger;
_root.character = 1;
_root.canevo = 0;