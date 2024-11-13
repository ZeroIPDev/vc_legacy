//CHANGE VALUES AT RELEASE
debug = false;
battle_debug = false;
demo = false;

//Basic Variables
dummy = 0;
version = "LEGACY";
saveExist = false;
tutorial = 0;
start_money = 1000;
start_hunger = 50;
nickname = 0;
gameQuality = 3;
fs = 1;
cheats = false;
stasis = false;
giftCounter = 1;
isGift = false;
clearVoid = false;

//Creature Variables
vc_name = "EGG";
level = 0;
xp = 0;
next_xp = 0;
next_lvl = 0;
money = 0;
hunger = 0;
happ = 0;
canevo = 0;
character = 0;
equipSlot1 = 0;
equipSlot2 = 0;
equipSlot3 = 0;
synthSlot1 = 0;
synthSlot2 = 0;
synthSlot3 = 0;
UChest = 0;
synthPurple = 0;
synthBlue = 0;
synthGreen = 0;
synthRed = 0;
cookingBoost = 0;
cookingBoostAmount = 0;
coreType = 0;
coreAG = 0;
coreFR = 0;
coreTAL = 0;
coreTAW = 0;
coreHP = 0;
coreATK = 0;
coreDEF = 0;
coreSPD = 0;
coreMAG = 0;
coreHAP = 0;
maxHP = 0;
maxATK = 0;
maxDEF = 0;
maxSPD = 0;
maxMAG = 0;
voidLevel = 0;
void_xp = 0;
void_next = 0;
voidInProgress = 0;
startTime = 0;
drillTime = 0;
isDrillBoost = false;
rebirth = false;
levelcap = 50;

//Minigame Variables
ministale_c = 0;
ministale_t = 0;
mole_score = 0;
lift_score = 0;
race_score = 0;

//Arrays
var cooking : Array = new Array();
var equip : Array = new Array();
var equip2 : Array = new Array();
var chests : Array = new Array();
var craft : Array = new Array();
var savedRTC : Array = new Array();
var recipes : Array = new Array();
var RTC : Date = new Date();
var savedGift : Array = new Array();
var voidTime : Array = new Array();
var drillDrop: Array = new Array();
var towerClears: Array = new Array();
var cookingLength : Number;
var equipLength: Number;
var chestsLength : Number;
var craftLength : Number;

//Move Arrays
var coreMoves : Array = new Array();
var movePool : Array = new Array();

//Save Files
var savefile = SharedObject.getLocal("VirtuaCreature_Block_1.sav", "/");
var savefile2 = SharedObject.getLocal("VirtuaCreature_Block_2.sav", "/");
var savefile3 = SharedObject.getLocal("VirtuaCreature_Block_3.sav", "/");
var options = SharedObject.getLocal("VC_Options", "/");