function displayHunger(): Void {
if (_root.hunger < 0) {
	HUNG.text = "-0";
} else if (_root.hunger > 100) {
	HUNG.text = "+100";
} else {
	HUNG.text = _root.hunger;
}
}