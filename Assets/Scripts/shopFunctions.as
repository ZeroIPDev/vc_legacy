function addnewCooking(item : Number, itemPrice: Number):Void {
cookingLength = _root.cooking.push([item]);
	if (_root.money >= itemPrice and _root.cookingLength <= 32) {
	_root.money -= itemPrice;
	purchres.text = "Purchase successful!";
	addto.start(0, 1);
	} else {
		_root.cooking.pop();
		cookingLength = cooking.length;
		purchres.text = "Purhcase failed.";
		wrongsound.start(0, 1);
	}
	checkCooking();
}
function checkCooking(): Void {
	if (_root.cooking.length == undefined) {
		cookinv.text = "0";
	} else {
		cookinv.text = _root.cooking.length;
	}
}
function addnewEquip(minGear:Number, maxGear:Number, itemPrice:Number):Void {
	amount = Math.floor(Math.random()*(1+4-3)+3);
	for (i=0; i<amount; i++) {
		item = Math.floor(Math.random()*(1+maxGear-minGear)+minGear);
		_root.equip.push(item);
		_root.equip2.push(0);
	}
	if (_root.money>=itemPrice and _root.equipLength <= 32) {
		_root.money -= itemPrice;
		purchres.text = "You got "+amount+" items!";
		addto.start(0, 1);
	} else {
		for (i=0; i<amount; i++) {
			_root.equip.pop();
			_root.equip2.pop();
		}
		equipLength = equip.length;
		purchres.text = "Purchase failed.";
		wrongsound.start(0, 1);
	}
	checkEquip();
}
function checkEquip():Void {
	if (_root.equip.length == undefined) {
		equipinv.text = "0";
	} else {
		equipinv.text = _root.equip.length;
	}
}
function addnewChest(item : Number, itemPrice: Number):Void {
chestsLength = _root.chests.push([item]);
	if (_root.money >= itemPrice and _root.chestsLength <= 32) {
	_root.money -= itemPrice;
	addto.start(0, 1);
	} else {
		_root.chests.pop();
		chestsLength = chests.length;
		wrongsound.start(0, 1);
	}
	checkChests();
}
function checkChests(): Void {
	if (_root.chests.length == undefined) {
		chestsinv.text = "0";
	} else {
		chestsinv.text = _root.chests.length;
	}
}