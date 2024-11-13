TST_temp = ((_root.coreTAW) - (_root.coreTAL));
if (_root.TST_temp > 0) {
	TST.text = "SWEET +" + _root.coreTAW;
	TST.textColor = 0x0000FF;
} else if (_root.TST_temp < 0) {
	TST.text = "SALTY +" + _root.coreTAL;
	TST.textColor = 0x330066;
} else {
	TST.text = "NEUTRAL";
	TST.textColor = 0x808080;
}