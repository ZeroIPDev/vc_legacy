function checkFileStatus(i: Number): Void {
	if(i == 1) {
		if(_root.savefile.data.saveExist == undefined) {
			_root.save1.text = "- EMPTY";
		} else {
			_root.save1.text = "- " + _root.savefile.data.vc_name;
		}
	} else if(i == 2) {
		if(_root.savefile2.data.saveExist == undefined) {
			_root.save2.text = "- EMPTY";
		} else {
			_root.save2.text = "- " + _root.savefile2.data.vc_name;
		}
	} else if(i == 3) {
		if(_root.savefile3.data.saveExist == undefined) {
			_root.save3.text = "- EMPTY";
		} else {
			_root.save3.text = "- " + _root.savefile3.data.vc_name;
		}
	}
}
function setSave(i: Number): Void {
	if(i == 1) {
		_root.saveInUse = 1;
	} else if(i == 2) {
		_root.saveInUse = 2;
	} else if(i == 3) {
		_root.saveInUse = 3;
	}
}