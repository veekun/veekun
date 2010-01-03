var suggestions_flat = new Array("Abra", "Absol", "Absorb", "Ace", "Acid", "Acid Armor", "Aerial Ace", "Aeroblast", "Aerodactyl", "Agenomu", "Aggron", "Agility", "Aipom", "Air Cutter", "Air Slash", "Alakazam", "Altaria", "Ambush", "Amnesia", "Ampharos", "Ancientpower", "Anorith", "Anticipate", "Aqua Jet", "Aqua Ring", "Aqua Tail", "Arbok", "Arcanine", "Ariados", "Arm Hammer", "Arm Thrust", "Armaldo", "Aromatherapy", "Aron", "Articuno", "Aruseusu", "Assist", "Astonish", "Attack Command", "Attract", "Aurora Beam", "Awaken Slap", "Azumarill", "Azurill", "Bagon", "Baltoy", "Banette", "Barboach", "Barrage", "Barrier", "Baton Pass", "Bayleef", "Beak Peck", "Beat Up", "Beautifly", "Beedrill", "Beequeen", "Beldum", "Bellossom", "Bellsprout", "Belly Drum", "Beroberudo", "Bide", "Biidaru", "Bind", "Bippa", "Bite", "Blabber", "Blade Test", "Blast Burn", "Blastoise", "Blaze Kick", "Blaziken", "Blissey", "Blizzard", "Block", "Body Slam", "Bone Club", "Bone Rush", "Bonemerang", "Bonsly", "Booburn", "Bounce", "Brave Bird", "Breloom", "Brick Break", "Bubble", "Bubblebeam", "Bug Devour", "Bug Upheavel", "Bulbasaur", "Bulk Up", "Bullet Seed", "Bunyatto", "Buoysel", "Butterfree", "Cacnea", "Cacturne", "Calm Mind", "Camerupt", "Camouflage", "Carvanha", "Cascoon", "Castform", "Caterpie", "Celebi", "Chansey", "Charge", "Charge Beam", "Charizard", "Charm", "Charmander", "Charmeleon", "Cherrym", "Cherrynbo", "Chikorita", "Chimecho", "Chinchou", "Clamp", "Clamperl", "Claydol", "Clefable", "Clefairy", "Cleffa", "Cloyster", "Combusken", "Comet Punch", "Confuse Ray", "Confusion", "Constrict", "Conversion", "Conversion2", "Corphish", "Corsola", "Cosmic Power", "Cotton Spore", "Counter", "Covet", "Crabhammer", "Cradily", "Crawdaunt", "Crobat", "Croconaw", "Cross Chop", "Cross Poison", "Crunch", "Crush Claw", "Cubone", "Curse", "Cut", "Cyndaquil", "Daakurai", "Dark Hall", "Dark Pulse", "dark-type", "Defense Command", "Defense Curl", "Delcatty", "Delibird", "Deoxys", "Deoxys [E]", "Deoxys [FR]", "Deoxys [LG]", "Destiny Bond", "Detect", "Dewgong", "Dialga", "Dianose", "Dig", "Digestive Juice", "Diglett", "Disable", "Discharge", "Ditto", "Dive", "Dizzy Punch", "Dodaitoise", "Dodrio", "Doduo", "Dokuroggu", "Donkarasu", "Donphan", "Doom Desire", "Doomirror", "Dootakun", "Dosaidon", "Double Attack", "Double Headbutt", "Double Kick", "Double Team", "Double-Edge", "Doubleslap", "Dragon Claw", "Dragon Dance", "Dragon Dive", "Dragon Pulse", "Dragon Rage", "dragon-type", "Dragonair", "Dragonbreath", "Dragonite", "Drain Punch", "Drapion", "Dratini", "Dream Eater", "Drill Peck", "Drowzee", "Dugtrio", "Dunsparce", "Dusclops", "Duskull", "Dust Shoot", "Dustox", "Dynamicpunch", "Earthquake", "Eerie Wind", "Eevee", "Egg Bomb", "Ekans", "Electabuzz", "electric-type", "Electrike", "Electrode", "Electrolevitate", "Elekibble", "Elekid", "Ember", "Empelt", "Emuritto", "Encore", "Endeavor", "Endure", "Energy Ball", "Entei", "Entice", "Eruption", "Erureido", "Espeon", "Eteboss", "Exeggcute", "Exeggutor", "Explosion", "Exploud", "Extrasensory", "Extremespeed", "Facade", "Faint Attack", "Fake Out", "Fake Tears", "False Swipe", "Farfetch'd", "Fearow", "Feather Rest", "Featherdance", "Feebas", "Feint", "Feraligatr", "fighting-type", "Fione", "Fire Blast", "Fire Fang", "Fire Punch", "Fire Spin", "fire-type", "Fissure", "Flaaffy", "Flail", "Flame Wheel", "Flamethrower", "Flare Drive", "Flareon", "Flash", "Flatter", "Floasel", "Fly", "Flygon", "flying-type", "Focus Bomb", "Focus Energy", "Focus Punch", "Fog Clear", "Follow Me", "Force Exert", "Foresight", "Forretress", "Freeze", "Frenzy Plant", "Frustration", "Fukamaru", "Furret", "Fury Attack", "Fury Cutter", "Fury Swipes", "Future Sight", "Fuwante", "Fuwaraido", "Gabaito", "Gaburiasu", "Gardevoir", "Garmeil", "Gastly", "Gengar", "Geodude", "ghost-type", "Giga Attack", "Giga Drain", "Girafarig", "Glaceon", "Glalie", "Glare", "Gligar", "Glion", "Gloom", "Golbat", "Goldeen", "Golduck", "Golem", "Gorebyss", "Goukazaru", "Granbull", "Grass Rope", "grass-type", "Grasswhistle", "Graveler", "Gravity", "Grimer", "Groudon", "ground-type", "Grovyle", "Growl", "Growlithe", "Growth", "Grudge", "Grumpig", "Guard Swap", "Guillotina", "Guillotine", "Gulpin", "Guregguru", "Gust", "Gyarados", "Gyro Ball", "Hail", "Harden", "Hariyama", "Haunter", "Hayashigame", "Haze", "Headbutt", "Heal Bell", "Heal Wish", "Heart Swap", "Heat Wave", "Helping Hand", "Heracross", "Hi Jump Kick", "Hidden Power", "Hiidoran", "Hikozaru", "Hippopotasu", "Hitmonchan", "Hitmonlee", "Hitmontop", "Ho-oh", "Hoothoot", "Hoppip", "Horn Attack", "Horn Drill", "Horsea", "Houndoom", "Houndour", "Howl", "Huntail", "Hurl", "Hydro Cannon", "Hydro Pump", "Hyper Beam", "Hyper Fang", "Hyper Voice", "Hypno", "Hypnosis", "Ice Ball", "Ice Beam", "Ice Fang", "Ice Pebble", "Ice Punch", "ice-type", "Icicle Spear", "Icy Wind", "Igglybuff", "Illumise", "Imitate", "Imprison", "In Fight", "Ingrain", "Iron Defense", "Iron Head", "Iron Tail", "Ivysaur", "Jibakoiru", "Jigglypuff", "Jirachi", "Jolteon", "Judgement Pebble", "Jump Kick", "Jumpluff", "Jynx", "Kabarudon", "Kabuto", "Kabutops", "Kadabra", "Kakuna", "Kangaskhan", "Karanakushi", "Karate Chop", "Kecleon", "Keikouo", "Kinesis", "Kingdra", "Kingler", "Kirlia", "Knock Off", "Koffing", "Korinku", "Korobooshi", "Korotokku", "Krabby", "Kureseria", "Kyogre", "Lairon", "Land Power", "Lanturn", "Lapras", "Larvitar", "Latias", "Latios", "Leaf Blade", "Leaf Storm", "Leafeon", "Ledian", "Ledyba", "Leech Life", "Leech Seed", "Leer", "Lick", "Lickitung", "Light Screen", "Lileep", "Linoone", "Lock-On", "Lombre", "Lotad", "Loudred", "Lovely Kiss", "Low Kick", "Lucario", "Ludicolo", "Lugia", "Lunatone", "Luster Cannon", "Luster Purge", "Luvdisc", "Mach Punch", "Machamp", "Machoke", "Machop", "Magby", "Magcargo", "Magic Coat", "Magical Leaf", "Magikarp", "Magma Storm", "Magmar", "Magnemite", "Magnet Bomb", "Magneton", "Magnitude", "Makuhita", "Manaphy", "Manectric", "Mankey", "Manmoo", "Mantine", "Mareep", "Marill", "Marowak", "Marshtomp", "Masquerain", "Masukippa", "Mawile", "Mean Look", "Medicham", "Meditate", "Meditite", "Mega Drain", "Mega Kick", "Mega Punch", "Megahorn", "Meganium", "Megayanma", "Memento", "Meowth", "Metagross", "Metal Burst", "Metal Claw", "Metal Sound", "Metang", "Metapod", "Meteor Mash", "Meteoric Swarm", "Metronome", "Mew", "Mewtwo", "Mighty Guard", "Mightyena", "Mikaruge", "Milk Drink", "Milotic", "Miltank", "Mime Jr", "Mimic", "Mimilolu", "Mimilop", "Mind Reader", "Minimize", "Minomadam", "Minomadamu [ground]", "Minomadamu [steel]", "Minomucchi", "Minun", "Miracle Eye", "Mirror Coat", "Mirror Move", "Mirror Shot", "Misdreavus", "Mist", "Mist Ball", "Mitsuhoney", "Mojando", "Moltres", "Moonlight", "Morning Sun", "Moukazaru", "Mr. Mime", "Mud Bomb", "Mud Shot", "Mud Sport", "Mud-Slap", "Muddy Water", "Mudkip", "Muk", "Mukkuru", "Mukubird", "Mukuhawk", "Munchlax", "Murkrow", "Murmage", "Naetle", "Natu", "Nature Blessing", "Nature Power", "Needle Arm", "Neoranto", "Nidoking", "Nidoqueen", "Nidoran F", "Nidoran M", "Nidorina", "Nidorino", "Night Shade", "Nightmare", "Nincada", "Ninetales", "Ninjask", "Noctowl", "normal-type", "Nosepass", "Numel", "Nuzleaf", "Nyarumar", "Octazooka", "Octillery", "Oddish", "Odor Sleuth", "Omanyte", "Omastar", "Onix", "Outrage", "Overheat", "Pachirisu", "Pain Split", "Palette Punch", "Palkia", "Paras", "Parasect", "Pay Day", "Peck", "Pelap", "Pelipper", "Perish Song", "Persian", "Petal Dance", "Phanpy", "Pichu", "Pidgeot", "Pidgeotto", "Pidgey", "Pikachu", "Piloswine", "Pin Missile", "Pineco", "Pinpuku", "Pinsir", "Plusle", "Pocchama", "Point Strike", "Poison Fang", "Poison Gas", "Poison Spikes", "Poison Stab", "Poison Sting", "Poison Tail", "poison-type", "Poisonpowder", "Politoed", "Poliwag", "Poliwhirl", "Poliwrath", "Ponyta", "Poochyena", "Porygon", "Porygon Z", "Porygon2", "Pottaishi", "Pound", "Powder Snow", "Power Gem", "Power Swap", "Power Trick", "Power Whip", "Prayer", "Present", "Primeape", "Protect", "Psybeam", "Psych Up", "Psychic", "psychic-type", "Psycho Boost", "Psycho Cutter", "Psycho Shift", "Psyduck", "Psywave", "Pulse Bomb", "Punish", "Pupitar", "Pursuit", "Quagsire", "Quick Attack", "Quick Revenge", "Quilava", "Qwilfish", "Rage", "Raichu", "Raikou", "Rain Dance", "Ralts", "Rampard", "Rapid Spin", "Rapidash", "Raticate", "Rattata", "Rayquaza", "Razor Leaf", "Razor Wind", "Recover", "Recycle", "Reflect", "Refresh", "Regice", "Regigigasu", "Regirock", "Registeel", "Relicanth", "Reminiscent Headbutt", "Remoraid", "Rentorar", "Repeat", "Rest", "Restore Command", "Restore Imprison", "Return", "Revenge", "Reversal", "Rhydon", "Rhyhorn", "Riishan", "Riolu", "Roar", "Rock Blast", "Rock Cannon", "Rock Cart", "Rock Climb", "Rock Slide", "Rock Smash", "Rock Throw", "Rock Tomb", "rock-type", "Role Play", "Rolling Kick", "Rollout", "Roselia", "Rotomu", "Rozureido", "Rukushio", "Sableye", "Sacred Fire", "Safeguard", "Salamence", "Sand Tomb", "Sand-Attack", "Sandshrew", "Sandslash", "Sandstorm", "Scary Face", "Sceptile", "Scheme", "Scissor Cross", "Scizor", "Scorpi", "Scratch", "Screech", "Scyther", "Seadra", "Seaking", "Sealeo", "Secret Power", "Seed Bomb", "Seed Flare", "Seedot", "Seel", "Seismic Toss", "Selfdestruct", "Sentret", "Seviper", "Shadow Ball", "Shadow Claw", "Shadow Drive", "Shadow Punch", "Shadow Strike", "Sharpedo", "Sharpen", "Shedinja", "Sheer Cold", "Sheimii", "Shelgon", "Shellder", "Shiftry", "Shock Wave", "Shroomish", "Shuckle", "Shuppet", "Signal Beam", "Silcoon", "Silver Wind", "Sing", "Skarmory", "Sketch", "Skill Swap", "Skiploom", "Skitty", "Skull Bash", "Skunpuu", "Skutank", "Sky Attack", "Sky Uppercut", "Slack Off", "Slaking", "Slakoth", "Slam", "Slash", "Sleep Powder", "Sleep Talk", "Slowbro", "Slowking", "Slowpoke", "Sludge", "Sludge Bomb", "Slugma", "Smeargle", "Smellingsalt", "Smog", "Smoke Erupt", "Smokescreen", "Smoochum", "Snatch", "Sneak", "Sneasel", "Snore", "Snorlax", "Snorunt", "Snow Slide", "Snubbull", "Softboiled", "Solarbeam", "Solrock", "Sonicboom", "Space Break", "Spark", "Spearow", "Spheal", "Spider Web", "Spike Cannon", "Spikes", "Spinarak", "Spinda", "Spit Up", "Spite", "Splash", "Spoink", "Spore", "Squash", "Squeeze", "Squirtle", "Stantler", "Starmie", "Staryu", "Stealth Rock", "Steel Wing", "steel-type", "Steelix", "Stockpile", "Stomp", "Stone Edge", "Strength", "String Shot", "Struggle", "Stun Spore", "Submission", "Subomii", "Substitute", "Sudowoodo", "Suicune", "Summersault", "Sunflora", "Sunkern", "Sunny Day", "Super Fang", "Superpower", "Supersonic", "Surf", "Surskit", "Swablu", "Swagger", "Swallow", "Swalot", "Swampert", "Sweet Kiss", "Sweet Scent", "Swellow", "Swift", "Swinub", "Swords Dance", "Synthesis", "Tackle", "Tail Glow", "Tail Whip", "Tail Wind", "Taillow", "Take Down", "Tamanta", "Tangela", "Tatetops", "Taunt", "Tauros", "Teddiursa", "Teeter Dance", "Teleport", "Tentacool", "Tentacruel", "Thief", "Thrash", "Thunder", "Thunder Fang", "Thunder Wave", "Thunderbolt", "Thunderpunch", "Thundershock", "Tickle", "Tide", "Time Roar", "Togekiss", "Togepi", "Togetic", "Torchic", "Torkoal", "Torment", "Totodile", "Toxic", "Transform", "Trapinch", "Treasure", "Treecko", "Tri Attack", "Trick", "Trick Room", "Trideps", "Triple Kick", "Tritodon", "Tropius", "Trouble Seed", "Twineedle", "Twister", "Typhlosion", "Tyranitar", "Tyrogue", "Umbreon", "Unown", "Uproar", "Ursaring", "Vacuum Blade", "Vaporeon", "Venomoth", "Venonat", "Venusaur", "Vibrava", "Vicegrip", "Victreebel", "Vigoroth", "Vileplume", "Vine Whip", "Vital Throw", "Volbeat", "Volt Tackle", "Voltorb", "Vulpix", "Wailmer", "Wailord", "Walrein", "Wartortle", "Water Gun", "Water Pulse", "Water Sport", "Water Spout", "water-type", "Waterfall", "Weather Ball", "Weavile", "Weedle", "Weepinbell", "Weezing", "Whirlpool", "Whirlwind", "Whiscash", "Whismur", "Wigglytuff", "Will-O-Wisp", "Wing Attack", "Wingull", "Wish", "Withdraw", "Wobbuffet", "Wood Hammer", "Wooper", "Wrap", "Wurmple", "Wynaut", "Xatu", "Yanma", "Yawn", "Yonowahru", "Yukikaburi", "Yukimenoko", "Yukinoo", "Yukushii", "Zangoose", "Zap Cannon", "Zapdos", "Zigzagoon", "Zubat", "Zugaidos");
//var suggestions = {};
//while (suggestions_flat.length) {
//    var s = suggestions_flat.pop();
//    suggestions[ s[0] ][ s[1] ] = s;
//}

// 38: up
// 40: down
var old_suggestvalue = "";
function dexsuggest_change(evt) {
    if (evt.keyCode == 13) return;
    
    var suggestbox = document.getElementById("dexsuggest");

    var el = evt.target;
    var suggestvalue = el.value;
    
    if (suggestvalue == old_suggestvalue) return;
    old_suggestvalue = suggestvalue;
    
    if (!suggestvalue && suggestbox) {
        suggestbox.style.visibility == "hidden";
        return;
    }

    while (suggestbox.firstChild)
        suggestbox.removeChild(suggestbox.firstChild);
    
    var opt;
    suggestvalue = suggestvalue.toLowerCase();
    var len = suggestvalue.length;
    var total = 0;
    for (var i = 0; i < suggestions_flat.length; i++) {
        if (suggestions_flat[i].substr(0, len).toLowerCase() != suggestvalue) continue;
        total++;
        opt = document.createElement('option');
        opt.appendChild(document.createTextNode(suggestions_flat[i]));
        suggestbox.appendChild(opt);
    }
    
    if (total) {
        suggestbox.selectedIndex = -1;
        suggestbox.style.visibility = "visible";
        suggestbox.setAttribute("size", total >= 8 ? 8 : (total == 1 ? 2 : total));  // cheap hack detected
    } else {
        suggestbox.style.visibility = "hidden";
    }
    
    dexsuggest_resize();

/*    
    $.ajax({
        type: "GET",
        url: "/dex/suggest?search=" + suggestvalue,
        dataType: "json",
        success: function(xml) {
            var res = eval(xml.responseText);
            if (res[0] != el.value) return;

            var suggestbox;
            suggestbox = document.getElementById("dexsuggest");
            if (suggestbox) {
                while (suggestbox.firstChild)
                    suggestbox.removeChild(suggestbox.firstChild);
            } else {
                suggestbox = document.createElement('select');
                suggestbox.setAttribute("size", "8");
                suggestbox.id = "dexsuggest";
                suggestbox.style.position = "absolute";
            }
            
            var opt;
            for (var i = 0; i < res[1].length; i++) {
                opt = document.createElement('option');
                opt.appendChild(document.createTextNode(res[1][i]));
                suggestbox.appendChild(opt);
            }
            
            $(el).after(suggestbox);
            
            dexsuggest_resize();
        }
    });
*/
}

function dexsuggest_press(evt) {
    var suggestbox = document.getElementById("dexsuggest");
    if (!suggestbox) return;

    var el = evt.target;
    var suggestvalue = el.value;
    
    if (!evt.charCode) {  // no character generated
        if (evt.keyCode == 38) {  // up
            if (suggestbox.selectedIndex > 0) suggestbox.selectedIndex--;
        } else if (evt.keyCode == 40) {  // down
            if (suggestbox.style.visibility == "hidden") {
                suggestbox.style.visibility = "visible";
                return;
            }
            if (suggestbox.selectedIndex < suggestbox.length - 1) suggestbox.selectedIndex++;
        }
    }
}

function dexsuggest_resize() {
    var el = document.getElementById("dexsuggest");
    if (!el) return;
    var off = el.previousSibling;
    
    el.style.top = off.offsetTop + off.offsetHeight + "px";
    el.style.left = off.offsetLeft + "px";
    el.style.width = off.offsetWidth + "px";
}

$(document).ready(function() {
    var suggestbox = document.createElement('select');
    suggestbox.id = "dexsuggest";
    suggestbox.style.position = "absolute";
    suggestbox.style.visibility = "hidden";
    suggestbox.setAttribute("size", 2);
    
    $(suggestbox).click(function(evt) {
        var suggestbox = document.getElementById('dexsuggest');
        $("#dexlookup input[@type='text']").val(suggestbox.options[ suggestbox.selectedIndex ].value);
    });

    $(suggestbox).dblclick(function(evt) {
        // hacky since I can't fire the above click event; make it a function nub
        var suggestbox = document.getElementById('dexsuggest');
        $("#dexlookup input[@type='text']").val(suggestbox.options[ suggestbox.selectedIndex ].value);
        document.getElementById('dexlookup').submit();
    });

    $("#dexlookup")
        .submit(function() {
            var suggestbox = document.getElementById('dexsuggest');
            if (suggestbox.style.visibility == "hidden") {
                // this is liable to fuck things up if the submit is cancelled
//                suggestbox.parentNode.removeChild(suggestbox);
                suggestbox.selectedIndex = -1;
                return true;
            }
            if (suggestbox.options[ suggestbox.selectedIndex ].value == $("#dexlookup input[@type='text']").val())
                return true;
            if (suggestbox.selectedIndex >= 0)
                $("#dexlookup input[@type='text']").val(suggestbox.options[ suggestbox.selectedIndex ].value);
            suggestbox.style.visibility = "hidden";
            return false;
        })
        .blur(function() { document.getElementById('dexsuggest').style.visibility = "hidden"; });  // buggy but better than nothing

    $("#dexlookup input[@type='text']")
        .attr("autocomplete", "off")
        .after(suggestbox)
        .keyup(dexsuggest_change)
        .keypress(dexsuggest_press);
    $(document).resize(dexsuggest_resize);

    dexsuggest_resize();
});