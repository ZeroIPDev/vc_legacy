function getRecipe(r: Number): Boolean {
	for(i=0;i < _root.recipes.length;i++) {
		if(_root.recipes[i] == r) {
			return(true);
		}
	}
}
function getRecipeName(i: Number): String {
	if(i == 1) {
		return("REJUV");
	} else if(i == 2) {
		return("ACCELERATOR");
	} else if(i == 3) {
		return("IRON WALL");
	} else if(i == 4) {
		return("AGGRESSOR");
	} else if(i == 5) {
		return("ELIXER");
	} else {
		return("UNKNOWN");
	}
}
function showRecipe(i: Number): Void {
	_root.recipeName.text = getRecipeName(i);
	if(i == 1) {
		_root.Recipe.text = "A-GREEN\nB-YELLOW\nANY SPICE";
		_root.recipeInfo.text = "Gives a boost to HP. Specific spices for this item work better on higher level creatures.";
	} else if(i == 2) {
		_root.Recipe.text = "A-PURPLE\nB-YELLOW\nS-BLUE/S-YELLOW";
		_root.recipeInfo.text = "Gives a boost to SPEED.";
	} else if(i == 3) {
		_root.Recipe.text = "A-PURPLE\nB-ORANGE\nS-GREEN/S-YELLOW";
		_root.recipeInfo.text = "Gives a boost to DEFENSE.";
	} else if(i == 4) {
		_root.Recipe.text = "A-BLUE\nB-RED\nS-PURPLE/S-RED";
		_root.recipeInfo.text = "Gives a boost to ATTACK.";
	} else if(i == 5) {
		_root.Recipe.text = "A-GREEN\nB-ORANGE\nS-GREEN/S-ORANGE";
		_root.recipeInfo.text = "Gives a boost to MAGIC.";
	} else {
		_root.Recipe.text = "???";
		_root.recipeInfo.text = "Recipe not discovered.";
	}
}