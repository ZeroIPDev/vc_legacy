_root.coreAG += (quickGenerate(1, 1, true));
if (_root.ministale_t < 5) {
	happIncrease();
	subFood(quickGenerate(3, 7, true));
	_root.ministale_t += 1;
} else {
	subFood(quickGenerate(5, 9, true));
	_root.happ -= 1;
}
if (_root.ministale_c > 0) {
		_root.ministale_c -= 1;
}