function generateGift(n : Number): Array {
	//Return: Type, Value
	//Type: 0 - Money, 1 - Item, 2 - Recipe, 3 - Chest
	if(n <= 40) {
		return([0, _root.quickGenerate(n * 2, 1000 * _root.giftCounter, true)]);
	} else if(n > 40 and n <= 60 and _root.giftCounter > 3) {
		//return([1, _root.quickGenerate(1, 13, true)]);
		return([0, _root.quickGenerate(n * 4, 1500 * _root.giftCounter, true)]);
	} else if(n > 60 and n <= 75) {
		r = _root.quickGenerate(1, 4, true);
		if(_root.getRecipe(r)) {
			//return([1, _root.quickGenerate(1, 13, true)]);
			return([0, _root.quickGenerate(n * 4, 1500 * _root.giftCounter, true)]);
		} else {
			return([2, r]);
		}
	} else if(n > 75 and n <= 100 and _root.giftCounter <= 4 and _root.chests.length < 32) {
		return([3, _root.quickGenerate(1, 2, true)]);
	} else if(n > 75 and n <= 100 and _root.giftCounter > 4 and _root.chests.length < 32) {
		return([3, _root.quickGenerate(3, 4, true)]);
	} else {
		return([0, _root.quickGenerate(n * 2, 700 * _root.giftCounter, true)]);
	}
}
function checkRecipeGift(r: Number): Void {
	rCounter = 0;
	if(_root.recipes.length > 0) {
		for(i=0;i<=(_root.recipes.length - 1);i++) {
			if(_root.recipes[i] != r) {
				rCounter += 1;
			}
		}
	} else {
		for(i=0;i<(_root.recipes.length - 1);i++) {
			if(_root.recipes[i] != r) {
				rCounter += 1;
			}
		}
	}
	if(rCounter >= _root.recipes.length) {
		_root.recipes.push(r);
		_root.desc.text = "New recipe!";
	}
}
function giveGift(n: Number): Void {
	_root.g = generateGift(n);
	if(g[0] == 0) {
		_root.giveCashFlat(g[1]);
	} else if(g[0] == 2) {
		_root.checkRecipeGift(g[1]);
	} else if(g[0] == 3) {
		_root.chests.push(g[1]);
	}
	if(_root.giftCounter < 7) {
		_root.giftCounter += 1;
	} else {
		_root.giftCounter = 1;
	}
	_root.savedGift[0] = _root.returnRTC(1);
	_root.savedGift[1] = _root.returnRTC(2);
	_root.setGift();
	_root.isGift = true;
	_root.gFlag = false;
}
function showGift(): Void {
	if(g[0] == 0) {
		_root.gtext.text = "+" + g[1] + " Dollars!";
		_root.giftType.gotoAndStop(1);
	} else if(g[0] == 1) {
		_root.gtext.text = _root.getItemPH(g[1]) + " " + _root.getItemName(g[1]) + "!";
	} else if(g[0] == 2) {
		_root.gtext.text = _root.getRecipeName(g[1]) + " Recipe!";
		_root.giftType.gotoAndStop(3);
	} else if (g[0] == 3) {
		_root.gtext.text = "Equipment Chest!";
		_root.giftType.gotoAndStop(4);
		_root.giftType.chest.gotoAndStop(g[1]);
	}
}