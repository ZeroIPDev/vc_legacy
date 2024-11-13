function invCheck(invType : Number, invBox : String, invValue : Number):Void {
	if (invType == 1) {
		if (cooking[invValue] != undefined) {
		_root.invBox.gotoAndPlay([cooking[invValue] + 1]);
		} else {
			_root.invBox.gotoAndPlay(1);
		}
	}
}