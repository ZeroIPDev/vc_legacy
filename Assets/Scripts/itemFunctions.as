function checkCooking(): Void {
	if (craftLength == undefined) {
		cookinv.text = "0";
	} else {
		cookinv.text = craftLength;
	}
}
function cookingAssemble(invNum : Number):String {
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
function cookingSet():Void {
	_root.cook0.gotoAndStop(cookingAssemble(0));
	_root.cook1.gotoAndStop(cookingAssemble(1));
	_root.cook2.gotoAndStop(cookingAssemble(2));
	_root.cook3.gotoAndStop(cookingAssemble(3));
	_root.cook4.gotoAndStop(cookingAssemble(4));
	_root.cook5.gotoAndStop(cookingAssemble(5));
	_root.cook6.gotoAndStop(cookingAssemble(6));
	_root.cook7.gotoAndStop(cookingAssemble(7));
	_root.cook8.gotoAndStop(cookingAssemble(8));
	_root.cook9.gotoAndStop(cookingAssemble(9));
	_root.cook10.gotoAndStop(cookingAssemble(10));
	_root.cook11.gotoAndStop(cookingAssemble(11));
	_root.cook12.gotoAndStop(cookingAssemble(12));
	_root.cook13.gotoAndStop(cookingAssemble(13));
	_root.cook14.gotoAndStop(cookingAssemble(14));
	_root.cook15.gotoAndStop(cookingAssemble(15));
	_root.cook16.gotoAndStop(cookingAssemble(16));
	_root.cook17.gotoAndStop(cookingAssemble(17));
	_root.cook18.gotoAndStop(cookingAssemble(18));
	_root.cook19.gotoAndStop(cookingAssemble(19));
	_root.cook20.gotoAndStop(cookingAssemble(20));
	_root.cook21.gotoAndStop(cookingAssemble(21));
	_root.cook22.gotoAndStop(cookingAssemble(22));
	_root.cook23.gotoAndStop(cookingAssemble(23));
	_root.cook24.gotoAndStop(cookingAssemble(24));
	_root.cook25.gotoAndStop(cookingAssemble(25));
	_root.cook26.gotoAndStop(cookingAssemble(26));
	_root.cook27.gotoAndStop(cookingAssemble(27));
	_root.cook28.gotoAndStop(cookingAssemble(28));
	_root.cook29.gotoAndStop(cookingAssemble(29));
	_root.cook30.gotoAndStop(cookingAssemble(30));
	_root.cook31.gotoAndStop(cookingAssemble(31));
	_root.desc.text = "";
	_root.cookres.text = "";
	_root.checkCooking();
	_root.checkCraft();
}
function addCooking(invNum : Number):Void {
	dup = _root.craft[invNum];
	stringValue = String(dup);
	numValue = Number(stringValue);
	frameValue = numValue + 1;
	if (_root.numValue < 4) {
		if (_root.slotValue1 == 0) {
		_root.slotValue1 = numValue;
		_root.slot1.gotoAndStop(frameValue);
		_root.cooking.splice(invNum, 1);
		_root.cookingLength = cooking.length;
		rightsound.start(0, 1);
		_root.cookingSet();
		} else {
			wrongsound.start(0, 1);
		}
	  } else if(_root.numValue < 7) {
		 if (_root.slotValue2 == 0) {
	    _root.slotValue2 = numValue;
		_root.slot2.gotoAndStop(frameValue);
		_root.cooking.splice(invNum, 1);
		_root.cookingLength = cooking.length;
		rightsound.start(0, 1);
		_root.cookingSet();
		 } else {
			 wrongsound.start(0, 1);
		 }
	  } else if(_root.numValue >= 7) {
		if (_root.slotValue3 == 0) {
	    _root.slotValue3 = numValue;
		_root.slot3.gotoAndStop(frameValue);
		_root.cooking.splice(invNum, 1);
		_root.cookingLength = cooking.length;
		rightsound.start(0, 1);
		_root.cookingSet();  
	  } else {
		  wrongsound.start(0, 1);
	  }
	  }
}
function checkID(thisItem : Number, plug: Boolean, addID : Number):Void {
	if (plug == false or plug == undefined) {
		value1 = thisItem;
	} else {
		value1 = undefined;
	}
	for (i=0;i<32;i++) {
		if (plug == false or plug == undefined) {
		dup = _root.cooking[i];
		stringValue = String(dup);
		cookValue = Number(stringValue);
		} else {
			cookValue = value1;
		}
		if (cookValue == value1 and _root.inProgress == false) {
			_root.inProgress = true;
			if (plug == false or plug == undefined) {
			_root.addCooking(i);
			} else {
				adder = addID;
				_root.removeCooking(i, adder);
			}
		}
	}
	_root.inProgress = false;
}
function removeSlot(item : Number):Void {
	if (item < 4) {
		_root.slotValue1 = 0;
		_root.slot1.gotoAndStop(1);
	} else if (item < 7) {
		_root.slotValue2 = 0;
		_root.slot2.gotoAndStop(1);
	} else if (item >= 7) {
		_root.slotValue3 = 0;
		_root.slot3.gotoAndStop(1);
	}
	rightsound.start(0, 1);
	_root.checkID(0, true, item);
}
function removeCooking(invNum: Number, item : Number):Void {
	_root.cooking.push(item);
	_root.cookingLength = cooking.length;
	_root.cookingSet();
}
function deleteCooking():Void {
	_root.slotValue1 = 0;
	_root.slot1.gotoAndStop(1);
	_root.slotValue2 = 0;
	_root.slot2.gotoAndStop(1);
	_root.slotValue3 = 0;
	_root.slot3.gotoAndStop(1);
}
function craftID(i1:Number, i2:Number, i3:Number):Number {
	if (i1 == 1 and i2 == 5) {
		if (i3 == 9) {
			return(1);
		} else if (i3 == 10) {
			return(2);
		}
	} else if (i1 ==  3 and i2 == 4) {
		if (i3 == 8) {
			return(3);
		} else if (i3 == 12) {
			return(4);
		}
	} else if (i1 == 3 and i2 == 6) {
		if (i3 == 7) {
			return(5);
		} else if (i3 == 12) {
			return(6);
		}
	} else if (i1 == 1 and i2 == 5) {
		if (i3 == 8) {
			return(7);
		} else if (i3 == 11) {
			return(8);
		}
	} else if (i1 == 2 and i2 == 6) {
		if (i3 == 7) {
			return(9);
		} else if (i3 == 12) {
			return(10);
		}
	} else if (i1 == 2 and i2 == 6) {
		if (i3 == 9) {
			return(11);
		} else if (i3 == 10) {
			return(12);
		}
	} else if (i1 == 2 and i2 == 6) {
		if (i3 == 8) {
			return(13);
		} else if (i3 == 11) {
			return(14);
		}
	}
	else {
		return(0);
	}
}
function checkCraft():Void {
	if (_root.slotValue1 != 0 and _root.slotValue2 != 0 and _root.slotValue3 != 0) {
		craftnum = _root.craftID(_root.slotValue1, _root.slotValue2, _root.slotValue3);
		craftframe = craftnum + 1;
		_root.crafted.gotoAndStop(craftframe);
	} else {
		_root.crafted.gotoAndStop(1);
	}
}
function addCraft(item : Number):Void {
_root.craftLength = _root.craft.push([item]);
	if (_root.craftLength <= 32) {
	_root.deleteCooking();
	_root.cookres.text = "Added to inventory!";
	_root.addto.start(0, 1);
	} else {
		_root.craft.pop();
		_root.craftLength = _root.craft.length;
		_root.cookres.text = "Inventory full";
		_root.wrongsound.start(0, 1);
	}
	_root.checkCraft();
}