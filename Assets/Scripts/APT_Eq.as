APT_temp = ((_root.coreFR) - (_root.coreAG));
if (_root.APT_temp > 0) {
	APT.text = "PLAYFUL +" + _root.coreFR;
	APT.textColor = 0x0000FF;
} else if (_root.APT_temp < 0) {
	APT.text = "TRAINER +" + _root.coreAG;
	APT.textColor = 0x330066;
} else {
	APT.text = "NEUTRAL";
	APT.textColor = 0x808080;
}