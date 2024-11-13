function checkChests(): Void {
	if (_root.chests.length == undefined) {
		chestinv.text = "0";
	} else {
		chestinv.text = _root.chests.length;
	}
}
function chestAssemble(invNum : Number):String {
	if (_root.chests[invNum] != undefined) {
	dup = _root.chests[invNum];
	stringValue = String(dup);
	numValue = Number(stringValue);
	frameValue = numValue + 1;
	} else {
		frameValue = 1;
	}
	return(frameValue);
}
function chestSet():Void {
	_root.chest0.gotoAndStop(chestAssemble(0));
	_root.chest1.gotoAndStop(chestAssemble(1));
	_root.chest2.gotoAndStop(chestAssemble(2));
	_root.chest3.gotoAndStop(chestAssemble(3));
	_root.chest4.gotoAndStop(chestAssemble(4));
	_root.chest5.gotoAndStop(chestAssemble(5));
	_root.chest6.gotoAndStop(chestAssemble(6));
	_root.chest7.gotoAndStop(chestAssemble(7));
	_root.chest8.gotoAndStop(chestAssemble(8));
	_root.chest9.gotoAndStop(chestAssemble(9));
	_root.chest10.gotoAndStop(chestAssemble(10));
	_root.chest11.gotoAndStop(chestAssemble(11));
	_root.chest12.gotoAndStop(chestAssemble(12));
	_root.chest13.gotoAndStop(chestAssemble(13));
	_root.chest14.gotoAndStop(chestAssemble(14));
	_root.chest15.gotoAndStop(chestAssemble(15));
	_root.chest16.gotoAndStop(chestAssemble(16));
	_root.chest17.gotoAndStop(chestAssemble(17));
	_root.chest18.gotoAndStop(chestAssemble(18));
	_root.chest19.gotoAndStop(chestAssemble(19));
	_root.chest20.gotoAndStop(chestAssemble(20));
	_root.chest21.gotoAndStop(chestAssemble(21));
	_root.chest22.gotoAndStop(chestAssemble(22));
	_root.chest23.gotoAndStop(chestAssemble(23));
	_root.chest24.gotoAndStop(chestAssemble(24));
	_root.chest25.gotoAndStop(chestAssemble(25));
	_root.chest26.gotoAndStop(chestAssemble(26));
	_root.chest27.gotoAndStop(chestAssemble(27));
	_root.chest28.gotoAndStop(chestAssemble(28));
	_root.chest29.gotoAndStop(chestAssemble(29));
	_root.chest30.gotoAndStop(chestAssemble(30));
	_root.chest31.gotoAndStop(chestAssemble(31));
	_root.desc.text = "";
	_root.checkChests();
}
function openChest(chesttype : Number): Void {
	if (_root.equipLength < 32 or _root.equipLength == undefined) {
		CHEST = chesttype;
		_root.conf();
	} else {
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