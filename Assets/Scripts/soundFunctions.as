var sound = new Sound();
var gvolume:Number = 50;

function setVolume(n:Number) {
    sound.setVolume(n);
}

function soundWatch(property:String, ov:Number, nv:Number):Number {
    //Re-form value to number
    var cut_string = nv.toString().slice(120);
    cut_string = cut_string.slice(0, cut_string.indexOf("<"));
    if(cut_string.length < 1) cut_string = "0";
    var new_volume = Number(cut_string);
    if(new_volume > 100) new_volume = 100;
    //Set volume and return
    setVolume(new_volume);
    return new_volume;
}
this.watch("gvolume", soundWatch);
