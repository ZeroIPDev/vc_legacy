function setGift(): Void {
	_root.curGift = _root.quickGenerate(1, 99, true);
}
function checkGift(): Void {
	if(_root.savedRTC[0] != undefined and _root.character != 0 and _root.isGift == true) {
		p = getRTC();
		if(_root.savedGift[0] == _root.returnRTC(1) and _root.returnRTC(2) - _root.savedGift[1] == 1) {
			_root.gFlag = true;
		} else if(_root.savedGift[0] == _root.returnRTC(1) and _root.returnRTC(2) - _root.savedGift[1] > 1) {
			_root.gFlag = true;
			_root.giftCounter = 1;
		} else if(_root.savedGift[0] != _root.returnRTC(1) and p[0] <= 2) {
			_root.gFlag = true;	
		} else {
			_root.gFlag = false;
		}
	} else if(_root.isGift != true and _root.character != 0) {
		_root.giftCounter = 1;
		_root.gFlag = true;
		_root.setGift();
	} else {
		_root.gFlag = false;
	}
}
function gNotif(): Boolean {
	if(_root.gFlag == true) {
		_root.giftBox.gotoAndStop(2);
		return(true);
	} else {
		_root.giftBox.gotoAndStop(1);
		_root.giftBox.gButton.gotoAndStop(1); 
		return(false);
	}
}
function giftBoxFunc(): Void {
	_root.giftBox.onRollOver = function() {
		_root.giftBox.gotoAndStop(1);
		_root.giftBox.gButton.gotoAndStop(2);
		if(_root.character != 0) {
			_root.desc.text = "Daily Gift";
		} else {
			_root.desc.text = "Not Available";
		}
	}
	_root.giftBox.onRollOut = function() {
		_root.giftBox.gButton.gotoAndStop(1);
		_root.gNotif();
		_root.desc.text = "";
	}
	_root.giftBox.onPress = function() {
		if(_root.character != 0) {
			_root.giftBox.gButton.gotoAndStop(3);
		}
	}
	_root.giftBox.onRelease = function() {
		if(_root.character != 0) {
			_root.giftBox.gButton.gotoAndStop(4);
			if(_root.gFlag == true) {
				gotoAndPlay("Gifts", 1);
			} else {
				gotoAndPlay("Gifts", 3);
			}
		}
	}
}