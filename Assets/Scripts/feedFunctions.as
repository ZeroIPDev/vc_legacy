function checkCraft(): Void {
	if (_root.craft.length == undefined) {
		craftinv.text = "0";
	} else {
		craftinv.text = _root.craft.length;
	}
}
function craftAssemble(invNum : Number):String {
	if (_root.craft[invNum] != undefined) {
	dup = _root.craft[invNum];
	stringValue = String(dup);
	numValue = Number(stringValue);
	frameValue = numValue + 1;
	} else {
		frameValue = 1;
	}
	return(frameValue);
}
function craftSet():Void {
	_root.craft0.gotoAndStop(craftAssemble(0));
	_root.craft1.gotoAndStop(craftAssemble(1));
	_root.craft2.gotoAndStop(craftAssemble(2));
	_root.craft3.gotoAndStop(craftAssemble(3));
	_root.craft4.gotoAndStop(craftAssemble(4));
	_root.craft5.gotoAndStop(craftAssemble(5));
	_root.craft6.gotoAndStop(craftAssemble(6));
	_root.craft7.gotoAndStop(craftAssemble(7));
	_root.craft8.gotoAndStop(craftAssemble(8));
	_root.craft9.gotoAndStop(craftAssemble(9));
	_root.craft10.gotoAndStop(craftAssemble(10));
	_root.craft11.gotoAndStop(craftAssemble(11));
	_root.craft12.gotoAndStop(craftAssemble(12));
	_root.craft13.gotoAndStop(craftAssemble(13));
	_root.craft14.gotoAndStop(craftAssemble(14));
	_root.craft15.gotoAndStop(craftAssemble(15));
	_root.craft16.gotoAndStop(craftAssemble(16));
	_root.craft17.gotoAndStop(craftAssemble(17));
	_root.craft18.gotoAndStop(craftAssemble(18));
	_root.craft19.gotoAndStop(craftAssemble(19));
	_root.craft20.gotoAndStop(craftAssemble(20));
	_root.craft21.gotoAndStop(craftAssemble(21));
	_root.craft22.gotoAndStop(craftAssemble(22));
	_root.craft23.gotoAndStop(craftAssemble(23));
	_root.craft24.gotoAndStop(craftAssemble(24));
	_root.craft25.gotoAndStop(craftAssemble(25));
	_root.craft26.gotoAndStop(craftAssemble(26));
	_root.craft27.gotoAndStop(craftAssemble(27));
	_root.craft28.gotoAndStop(craftAssemble(28));
	_root.craft29.gotoAndStop(craftAssemble(29));
	_root.craft30.gotoAndStop(craftAssemble(30));
	_root.craft31.gotoAndStop(craftAssemble(31));
	_root.desc.text = "";
	_root.checkCraft();
}
function openChest(chesttype : Number): Void {
	if (_root.equipLength < 32 or _root.equipLength == undefined) {
		CHEST = chesttype;
		_root.rightsound.start(0, 1);
		_root.conf();
	} else {
		_root.wrongsound.start(0, 1);
		_root.chestres.text = "Inventory full";
	}
}
function conf(): Void {
	_root.confchest._x = 400;
}
function showPools(commonPool : Number, uncommonPool : Number, unusualPool: Number, rarePool: Number, superrarePool: Number, ultrararePool: Number): Void {
	_root.pools.text = "COMMON " + commonPool + ", UNCOMMON " + uncommonPool + ", UNUSUAL " + unusualPool + ", RARE " + rarePool + ", SUPER RARE " + superrarePool + ", ULTRA RARE " + ultrararePool;
}
function executeChest ():Void {
	_root.removeChest(CHEST);
	gotoAndPlay("Open", 1);
}
function removeChest(chestID : Number): Void {
	done = false;
	for (i=0;i<32;i++) {
		dup = _root.chests[i];
		stringValue = String(dup);
		chestValue = Number(stringValue);
		if (chestValue == chestID) {
			if (done == false) {
			done = true;
			chestsLength = _root.chests.splice(i, 1);
			}
		}
	}
}