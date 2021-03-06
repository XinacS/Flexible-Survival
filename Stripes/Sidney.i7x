Version 1 of Sidney by Stripes begins here.
[ Version 0.8 - TFTG options and base descriptions ]
"Adds a former soldier named Sidney to the Flexible Survival game."

Section 0 - Basic NPC Setup

Sidney is a woman.
The description of Sidney is "[sidneydesc]".
The conversation of Sidney is { "Thanks." }.
the scent of Sidney is "[sidneyscent]".
sidneyformtalk is a truth state that varies.  sidneyformtalk is normally false.


Section 1 - Event

Meeting Sidney is a situation.
The sarea of Meeting Sidney is "Outside".
when play begins:
	add Meeting Sidney to badspots of furry;
	add Meeting Sidney to badspots of girl;

sa_redvixen is a truth state that varies.  sa_redvixen is usually false.
sa_otteress is a truth state that varies.  sa_otteress is usually false.
sa_wusky is a truth state that varies.  sa_wusky is usually false.

Instead of resolving Meeting Sidney:
	if hp of Sidney is 0:
		say "     Travelling through the city, you spot a weaponless soldier staring blankly out of a blown-out window of a ruined building.  The unattractive man looks down at a small device he's holding, rolling it around in his hand.  Given how he's lost in thought, he doesn't notice your cautious approach until you're just a couple of meters away.  When he does spot you, he [if the player is bodily human and the player is facially human and the player is skintone human]jumps up in surprise and puts the thing back into his pocket[otherwise]jumps back in surprise and moves to escape further into the building.  He pauses when you call out to him, but keeps his distance for the moment[end if].  Once he realizes that you only want to talk, he calms down and allows you to come closer.";
		say "     The soldier introduces himself as Sidney.  'My squad's... gone.  We had a rough time of it on this mission.  At first, only a few got picked off one at a time.  One got too curious about some sticky gunk he'd found and went downhill fast after that.  The rest got taken down and transformed during an attack, turning into sex beasts of all genders.  I'd barely managed to get away from that last one.'  He doesn't seem particular broken up about the whole matter, more relating it matter-of-factly and maybe even with a bit of longing.";
		say "     'That was a few days ago and I've been... uh... taking stock of the situation since then.  Mission's over though.  Nothing left but to go back to base and report in, I guess...' he says, trailing off with obvious disappointment at the prospect.   You notice that he's slipped a hand to the pocket into which he stashed the object he had earlier.  'Say.  Have you ever wanted... oh, nevermind,' he says, cutting himself off as he reaches down to pick up his pack.";
		attempttowait;
		let bonus be ( charisma of player - 10 ) / 2;
		if "Female Preferred" is listed in feats of player, increase bonus by 2;
		if "Always a Pussy" is listed in feats of player, increase bonus by 2;
		if "Dominant" is listed in feats of player, increase bonus by 1;
		if "Haggler" is listed in feats of player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus] vs 12:[line break]";
		if bonus + dice is greater than 11:
			say "[sidneyconvinced]";
		otherwise:
			say "     You try to ask the soldier what he's talking about, but he gets defensive.  'Look, I don't even know why I brought it up to a random stranger.  I need to go,' he says, making a quick departure.  You can't help but wonder what that was all about.  Perhaps you'll see him around again.";
			now hp of Sidney is 1;
	otherwise if hp of Sidney is 1:
		say "     You end up spotting Sidney, the solitary soldier you'd met earlier.  He's again musing quietly, clearly undecided about something.  You approach and greet him again, and he seems happy to see a friendly face.  The two of you chat for a little while, discussing what you've seen in the city.  You pick up on that same interest he'd shown earlier.  Once he's relaxed, you try to ask him about what's been on his mind.";
		attempttowait;
		let bonus be ( charisma of player - 10 ) / 2;
		if "Female Preferred" is listed in feats of player, increase bonus by 2;
		if "Always a Pussy" is listed in feats of player, increase bonus by 2;
		if "Dominant" is listed in feats of player, increase bonus by 1;
		if "Haggler" is listed in feats of player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus]: [dice + bonus] vs 10:[line break]";
		if bonus + dice is greater than 9:
			say "[sidneyconvinced]";
		otherwise:
			say "     You try to steer the conversation to what's been on his mind and why he hasn't returned to base yet, but he gets a little upset.  'Never you mind that.  I'm just... scouting the area first.  Can't be too careful these days.  Don't want some crazy beast to get the jump on me,' he says with a fake laugh even as he's grabbing his pack.  'Look, maybe I'll see you around,' he adds, heading on his way.";
	otherwise if hp of Sidney is 2:
		say "     You end up spotting Sidney, the solitary soldier looking for a gender swap.  He smiles to you when you come over, happy to see a friendly face.  'Are you up for trying to help me with my little problem,' he asks, nervously eager.  He presents his remaining options to you.";
		say "[sidneyoptions]";

to say sidneyconvinced:
	say "     With it clear that there's something troubling the soldier, delaying him from returning to base, you ask him about the thing he's got.  At first, he tries to pass it off as being nothing, but you tell him you know it must be important to him if he's obsessing over it like this.  He grows quiet for a bit, slowly pulls it out and plops himself down on a chunk of rubble.";
	say "     'I was gonna ask before if you'd ever wanted something all your life, but you knew you could never get it and you had to accept that.'  You nod, figuring everyone must feel that way about something.  Seeing how he's paused again, you put a hand on his shoulder encouragingly.  He looks up at you, then back down at the thing he's holding.";
	attempttowait;
	say "     It doesn't seem particularly special.  The top half is a tennis-ball-sized device with a small needle tip and a few buttons.  Below that is a clear cannister full of dull grey goo placed like a handle behind the trigger.";
	say "     'We were given this for our mission.  It's some sort of fancy nanite transfer unit - a one-time sample collection device.  An expensive little gizmo, they said.  The nanites here,' he says while tapping the glass capsule, 'collect a complete data sample of the target.  That way they can then be analyzed... or transfered into someone else to make an identical physical copy.'";
	attempttowait;
	say "     Looking at the soldier's bent nose, jutting chin and unibrow, you think you have an idea of where this is going, but are surprised by what he says next.  'I've always wanted to be a woman - soft, beautiful, loving, fertile.  I know I don't look the type, and that's kinda the problem.  No way I'd've ever been able save up enough for an operation and it wouldn't make me pretty.";
	say "     'Now this whole mess, it's a dream come true - but it's full of risks.  I saw the guys I was sent in with get turned into mindless breeding sluts and crazy multi-gender monsters[if cocks of player > 0 and cunts of player > 0] (no offence)[end if], and I don't want that.  I want to still be me, but finally better.  I've been putting it off for a while - trying to psych myself up into doing it, I guess - and even found a few possible candidates to copy around here.  But getting a sample's too risky, especially since I'm long out of ammo and have no backup.  Unless you're willing to maybe help me out?' he asks.  'I've got a few possible donors in mind.'";
	now hp of Sidney is 2;
	say "[sidneyoptions]";
	

to say sidneyoptions:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if guy is banned, now sa_wusky is true;
	if sa_redvixen is false:
		choose a blank row in table of fucking options;
		now title entry is "Red Fox Vixen";
		now sortorder entry is 1;
		now description entry is "sultry vixen-woman";
	if sa_otteress is false:
		choose a blank row in table of fucking options;
		now title entry is "Otteress";
		now sortorder entry is 2;
		now description entry is "female anthro otter";
	if sa_wusky is false:
		choose a blank row in table of fucking options;
		now title entry is "Feral Wusky";
		now sortorder entry is 3;
		now description entry is "feral wolf-husky";
	say "[link]0 - Discuss options[as]0[end link][line break]";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]99 - Maybe later[as]99[end link][line break]";
	say "[link]100 - Don't do it![as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Help him obtain a [description entry] form?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Red Fox Vixen":
					say "[sidney_rfv_cap]";
				otherwise if nam is "Otteress":
					say "[sidney_otteress_cap]";
				otherwise if nam is "Feral Wusky":
					say "[sidney_wusky_cap]";
				if sa_redvixen is true and sa_otteress is true and sa_wusky is true:	[***update as new are added***]
					attempttowait;
					say "     With that last failure, Sidney seems completely dejected.  You try to cheer him up, but he won't listen.  He sighs and turns off, mumbling about how he must be fated to never get what he wants.  You offer other possibilities, but he's given up fully by this point, saying he'll just accept it and go back to base.  In the end, you have to let him go.";
					now hp of Sidney is 101;
				now sextablerun is 1;
		otherwise if calcnumber is 0:
			say "Talking it over with Sidney, you have him describe the various options he's considering.";
			let y be 0;
			if sa_redvixen is false:
				increase y by 1;
				say "[link]Option [y]:[as][y][end link] 'There's a lovely red vixen roaming around here.  She's got such a nice figure and fluff in all the right places.  She's alluring and beautiful.  Fast, too,' he adds.  'I've seen a few randy beasts try to catch her, but she always gets away so easily.  She does some of that crazy [']parcour['] stuff like it's nothing.  We'll have to be quick if we want to catch her.'";
			if sa_otteress is false:
				increase y by 1;
				say "[link]Option [y]:[as][y][end link] 'I've seen this otter woman around her at times.  She's so pretty - sleek and sexy.  And flexible, too.  I mean, I've seen her do some... well, you know,' he says, blushing a bit.  'It'd be nice to have a body like that.  She seems pretty calm too, but I doubt she'd listen to me long enough to let me explain.  You might be able to talk to her, or at least talk our way close enough to grab her.'";
			if sa_wusky is false:
				increase y by 1;
				say "[link]Option [y]:[as][y][end link] 'There's this female husky I've been keeping my eye on.  She's got this deep black coat and such a pretty, happy face.  Now, she's been caught by this feral wolf and he's been turning her into his wolf bitch.  She's part wolf now and stuck on all fours, but she's still got that coat of hers and she's still as strong and determined as ever,' he says with admiration.  'I wouldn't mind even if it means being more of an animal if I can get to be a lovely female like her.'";
		otherwise if calcnumber is 99:
			say "     You make some excuse about how now is not a good time and that he should make sure he's fully prepared before such a change.  He nods, saying he hopes you'll return to assist him soon.";
			now sextablerun is 1;
		otherwise if calcnumber is 100:
			say "     Sidney is disappointed when you refuse to help him, telling him instead to go back to the base.  He looks dejectedly at the device and nods, putting it away.  'You're right.  It's not mine to use and I have a duty to the army.  I'll report back to the perimeter,' he says sadly, walking off.";
			now hp of Sidney is 100;
			now Meeting Sidney is resolved;
			now sextablerun is 1;


Section 2 - Form Captures

Part 1 - Red Fox Vixen

to say sidney_rfv_cap:
	say "     Suggesting that you try going after the red vixen, the two of you make a quick plan and then split up.  You're able to find her easily enough and start moving in on her.  Once you're spotted, she's instantly wary and moves to a nearby building.  And when you continue towards her, the race is on as she jumps to grab a hanging ladder and zips up it.";
	let playernum be dexterity of player + ( level of player / 2 );
	if "Black Belt" is listed in feats of player, increase playernum by 2;
	let monsternum be 18;
	if hardmode is true:
		increase monsternum by level of player / 3;
	let playernum be a random number between 1 and playernum;
	let monsternum be a random number between 1 and monsternum;
	say "Dexterity - [special-style-1][playernum][roman type] vs [special-style-2][monsternum][roman type]:[line break]";
	if playernum >= monsternum:
		say "     You give chase, quickly getting up the ladder and racing along the rooftop.  You go from rooftop to rooftop, going up or down as needed as the two of you go on a zigzagging chase[if level of player > 10].  The familiarity you've gained with the city and its design by travelling through it helps considerably, letting you know what to expect next[end if].  You are able to keep up with her and eventually are even able to make a few moves to cut her off, forcing her to take a new path.  And soon that new path leads her right to the waiting Sidney.";
		say "     The soldier grabs the surprised vixen by the arm and pins her against the large rooftop air conditioner he was hiding behind.  While she's still stunned, he pulls out the nanite copying device and jabs the short needle into her side.  With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done.  The vixen breaks free, tosses a snarling insult and runs off again.  By this point, you're too winded to continue pursuit and there's little point in doing so.  Quickly confirming with Sidney, he's gotten the sample.";
		attempttowait;
		say "     He looks at the silvery jar and pauses only for a moment before jabbing himself with the needle and pulling the trigger again.  He groans as the metallic fluid is injected into him.  The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues.  He quickly starts pulling off his clothes to watch.  Red fur spreads out from the point of injection.  His figure changes to that of the agile vixen, losing bulk for a few added inches of height.  And for breasts, the globes of mammaries swelling up under the fluff on his chest.  As his head changes, gaining a muzzle and pointed ears first, he releases a long, feminine moan and pulls down the front of his pants to reveal a wet and juicy vixen muff between now her legs.  The changes continue with her long, bushy tail growing out as the whole of her shifts until you're left looking at an identical copy of the luscious vixen whose ass you've been chasing all around the neighbourhood.";
		say "     With Sidney now transformed into a sultry vixen, there is no chance of her returning to the military base, so you offer to let her stay the library for safety until rescued.  She agrees happily even and follows you, unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least.  You doubt she'd dreamt of being a walking, talking fox femme back before this all started, but she certainly seems pleased with the results.";
		now hp of Sidney is 3;
		now level of Sidney is 21;
		move Sidney to Grey Abbey 2F;
		move player to Grey Abbey 2F;
		now battleground is "void";
		now Meeting Sidney is resolved;
	otherwise:
		say "     You give chase, doing your best to follow her up the ladder and race along the rooftops.  You go from rooftop to rooftop, going up or down as needed as the two of you go on a zigzagging chase.  You're able to keep her in sight for a while, but she's too agile and you fall further and further behind as she takes surprising turns or crosses obstacles you must circumvent.  Eventually, she loses you entirely and you have to head back to Sidney with the bad news.  The two of you doubt you'll get another chance at her, as she'll be on the lookout for you now and won't let you get close again.";
		now sa_redvixen is true;


Part 2 - Otteress

to say sidney_otteress_cap:
	say "     Suggesting you approach the female otter, the two of you go off in search of her.  Sidney leads you to one of the spots he's seen her frequent occasionally and she's thankfully there.  You approach the otteress in a friendly manner, allowing you to get closer.  Shall you [link]explain the situation (Y)[as]y[end link] or just try to [link]grab her (N)[as]n[end link]?";
	if the player consents:
		let bonus be ( charisma of player - 10 ) / 2;
		if bodyname of player is "sea otter":
			increase bonus by 1;
		if facename of player is "sea otter":
			increase bonus by 2;
		let targetnum be 15;
		let dice be a random number between 1 and 20;
		say "Charisma - You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]: ";
		if bonus + dice >= targetnum:
			say "     As you draw nearer, you start to explain what you want, the otteress listening.  You know it sounds kind of crazy, so you try your best to reassure her that you aren't trying to hurt her or fuck her.  At first, she seems sceptical, but you do manage to keep her listening long enough that Sidney can have his say.  As he told you, he explains how he's always wanted to be a woman and goes on to say how pretty she is and that he'd like to be just like her.  It won't hurt or change her, you add, just that it'll make Sidney identical to her.";
			attempttowait;
			say "     'So you'd be like my twin or something?' she asks.  'I... I always wanted a sister.  You promise this won't hurt?' she asks nervously.  'I don't like needles.'";
			say "     'Just a little pinch and it'll be over.  Then we'll be sisters,' Sidney says tenderly, smiling as he holds the device out.  The otteress nods and closes her eyes tightly as the soldier pushes the short needle into her side and hold it there for a few moments.  She gives a little eep and shivers, but holds herself steady.  With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done.";
			attempttowait;
			say "     Confirming he's got the copy, the otteress eagerly encourages him to complete the process.  Nodding to her now, he jabs himself with the needle and pulls the trigger again.  He groans as the metallic fluid inside is injected into him.  The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues.  He quickly starts pulling off his clothes to watch.  Brown fur spreads out from the point of injection.  His figure changes to that of the flexible otter, losing bulk as he becomes streamlined for swimming.  And for breasts, the petite globes of mammaries swell up under the waterproof coat of fur.  As his head changes, gaining a muzzle and rounded ears first, he releases a long, feminine moan and pulls down the front of his pants to reveal a wet and juicy otter muff between now her legs.  Long, flowing hair grows from the top of her head, rich brown like her counterpart's.  The changes continue with her long, muscular tail growing out as the whole of her shifts until you're left looking at an identical copy of the sexy otteress beside her.";
			say "     They both look the transformed Sidney over, paws running over her body as they compare her to the original.  Finding the copy perfect, they hug and kiss happily.  'Oh, we really are twins.  And you got your dream.  I'm so happy for you,' the original says.  The pair snuggle and chat for a while, getting to know each other better.  Eventually though, the otter femme says it's time for her to return to her raft as they'll be missing her.  You can suggest that Sidney [link]stay with you (Y)[as]y[end link] or [link]join his new sister (N)[as]n[end link] with the other otters.";
			if the player consents:
				say "     You offer to let Sidney stay with you at the library.  He's tempted to go along with his new twin, but recognizes the risk in that and bids her farewell for now.  She tells her repeatedly to go with the soldiers to the rescue facility and that she'll find her there.  She makes sure the otteress knows her full name, rank and unit as well as how to get in contact with her once the rescue happens.  After more hugs and kisses, some of which get pretty heated, the two part.  The original otteress climbs onto a hidden scooter and zips off back towards the shore, most likely to return to her raft of otters.";
				say "     Sidney is quiet but happy as she follows you to the library.  She's unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least.  You doubt she'd dreamt of being a walking, talking otter femme back before this all started, but she certainly seems pleased with the results.";
				now hp of Sidney is 3;
				now level of Sidney is 21;
				move Sidney to Grey Abbey 2F;
				move player to Grey Abbey 2F;
				now battleground is "void";
				now Meeting Sidney is resolved;
			otherwise:
				say "     Suggesting that Sidney go with her, she smiles happily and gives her a big hug.  'Oh, that's right!  You're family now.  Come, you need to meet everyone else.  They'll [bold type]love[roman type] you,' she gushes as they share more hugs and kisses, some of which get pretty heated.  Bidding you a fond farewell, the two of them climb onto a small scooter the otteress had hidden and zip off towards the shore.";
				now hp of Sidney is 99;
				now level of Sidney is 22;
				now Meeting Sidney is resolved;
		otherwise:
			say "     As you draw nearer, you start to explain what you want, the otteress listening.  'Get away you're crazy wierdos!' she exclaims suddenly, turning and running off.  You try to pursue her, but it's too late.  She's got a small scooter stashed nearby that she uses to make her escape.  You'll not get another chance to approach her now.";
			now sa_otteress is true;
	otherwise:
		let bonus be ( strength of player - 10 ) / 2;
		increase bonus by ( level of player / 2 );
		if "Martial Artist" is listed in feats of player:
			increase bonus by 1;
		if "Black Belt" is listed in feats of player:
			increase bonus by 1;
		let targetnum be 13;
		if hardmode is true:
			increase targetnum by level of player / 3;
		let dice be a random number between 1 and 20;
		say "Strength - You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]: ";
		if bonus + dice >= targetnum:
			say "     Continuing to talk reassuringly, you draw closer to your target.  'Grab her!' you yell to Sidney and the two of you tackle her.  It is hard to get a grip on her; the female otter is super-flexible, bending and squirming like a fur-covered slinky.  She almost manages to slip away a few times, but your strength [if level of player > 10]and experience [end if]wins out and you pin the otter girl down long enough for Sidney to use his device.";
			say "     Thankfully the nanite copying device is quick.  All he has to do is jab the short needle into her side and hold it there for a few moments.  With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done.  Once he's confirmed he's got the copy, Sidney nods to you and you release the otter.  She gives the two of you a hard slap across the face.  'Mashers!'  She then climbs onto a hidden scooter and zips away.";
			attempttowait;
			say "     He looks at the silvery jar and pauses only for a moment before jabbing himself with the needle and pulling the trigger again.  He groans as the metallic fluid is injected into him.  The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues.  He quickly starts pulling off his clothes to watch.  Brown fur spreads out from the point of injection.  His figure changes to that of the flexible otter, losing bulk as he becomes streamlined for swimming.  And for breasts, the petite globes of mammaries swell up under the waterproof coat of fur.  As his head changes, gaining a muzzle and rounded ears first, he releases a long, feminine moan and pulls down the front of his pants to reveal a wet and juicy otter muff between now her legs.  Long, flowing hair grows from the top of her head, rich brown like her counterpart's.  The changes continue with her long, muscular tail growing out as the whole of her shifts until you're left looking at an identical copy of the sexy otteress who was here just moments ago.";
			say "     With Sidney now transformed into a sexy otteress, there is no chance of her returning to the military base, so you offer to let her stay at the library for safety until rescued.  She agrees happily even and follows you, unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least.  You doubt she'd dreamt of being a walking, talking otter femme back before this all started, but she certainly seems pleased with the results.";
			now hp of Sidney is 3;
			now level of Sidney is 23;
			move Sidney to Grey Abbey 2F;
			move player to Grey Abbey 2F;
			now battleground is "void";
			now Meeting Sidney is resolved;
		otherwise:
			say "     Continuing to talk reassuringly, you draw closer to your target.  'Grab her!' you yell to Sidney and the two of you tackle her.  You try your best to get a grip, but the female otter is super-flexible, bending and squirming like a fur-covered slinky.  Slipping free of your grip, the two of you stumble over each other as she rushes away.  You try to pursue her, but it's too late.  She's got a small scooter stashed nearby that she uses to make her escape.  You'll not get another chance to approach her now.";
			now sa_otteress is true;


Part 3 - Feral Wusky

to say sidney_wusky_cap:
	say "     Suggesting you try freeing the wusky, you have him lead you to the lair of the wolf holding her captive.  Looking over the ruined shop, take a moment to ready yourself before entering.  Inside you find the female wolf-dog chained to some a water pipe and the large wolf creature between you and her.  He snarls at you and approaches with teeth bared.";
	now showlocale is false;
	challenge "Feral Wolf";
	now showlocale is true;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Defeating and driving off the large wolf, you're free to approach the wusky.  Sidney takes out the nanite copying device and jabs the short needle into her side.  With a pull of the trigger, a whirring sound and a flutter of indicator lights, it is done.  Confirming with Sidney that he's gotten the sample, the two of you then free the wolf-husky hybrid.  With a barking thanks and a few licks, she dashes out the door and off into the city.";
		attempttowait;
		say "     He looks at the silvery jar and pauses for a few moments before jabbing himself with the needle and pulling the trigger again.  He groans as the metallic fluid is injected into him.  The effects are sudden, causing him to stumble to his knees as rapid and full-bodied transformation ensues.  He quickly starts pulling off his clothes to watch.  Black fur spreads out from the point of injection.  His figure changes to that of the hardy wusky, shifting steadily towards a four-footed stance.  Mostly hidden by the fluffy white fur spreading across his chest, you can see the soft swell of breasts forming.  As his head changes, gaining an elongated muzzle and canine ears first, he releases a long, feminine moan.  He scrambles to pull down the front of his pants with his increasingly paw-like hands, eventually revealing a wet and juicy canine muff between now her legs.  The changes continue with her big, fluffy tail growing out as the whole of her shifts until you're left looking at an identical copy of the feral wusky who you'd both freed just a minute or two ago.";
		say "     With Sidney now transformed into an animalistic wolf-husky, there is no chance of her returning to the military base, so you offer to let her stay at the library for safety until rescued.  She agrees happily even and follows you, unable to keep from touching and looking herself over in joyful awe at her dream come true - well, after a fashion, at least.  You doubt she'd dreamt of being reduced to an animal just to become female, but she seems satisfied with the price paid.";
		now hp of Sidney is 3;
		now level of Sidney is 71;
		move Sidney to Grey Abbey 2F;
		move player to Grey Abbey 2F;
		now battleground is "void";
		now Meeting Sidney is resolved;
	otherwise if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After your humiliating defeat and the subsequent abuse, you crawl your way out of the shop as the wolf turns his attention back to his original prize.  As Sidney helps you leave, you can hear the snarls of the victorious wolf celebrating by screwing the trapped female.  From the sounds of it, there won't be much left of the old wusky by the time he's done.";
		now sa_wusky is true;
	otherwise:
		say "     You are driven back by the wild wolf creature.  As Sidney helps you leave, you can hear the snarls of the victorious wolf celebrating by screwing his trapped prize.  From the sounds of it, there won't be much left of the old wusky by the time he's done.";
		now sa_wusky is true;


Section 3 - Sidney Post-TFTG

to say sidneyscent:
	say "***Scents to come later.";


to say sidneydesc:
	if hp of Sidney < 3:
		say "ERROR-Sidney-[hp of Sidney]L: You should not be able to find me!";
	otherwise if level of Sidney is 21:
		say "     The soldier-turned-vixen is quite the sexy female.  She's got a sleek, feminine body with foxy curves and an alluring sway in her step.  She's got lovely blue eyes that stand out against her rich, crimson fur.  Her vulpine muzzle ends in luscious lips that are an even brighter shade of red.  She's got large, shapely breasts with dark areolae half-hidden under the white fluff of her chest.  Sidney has acquired a silvery gown that fits the new her very nicely and has even added a hole at the back for her big, fluffy tail.";
	otherwise if level of Sidney is 22 or level of Sidney is 23:
		say "     The soldier-turned-otteress is quite the sexy female.  She's got a sleek, feminine body with streamlined curves and smallish breasts with perky nipples.  Her brown fur has a glossy sheen to it that is quite pretty.  She's got lovely brown eyes that match her fur.  Her otter-like head has a mane of flowing brown hair that she's left draping over she shoulders rather than in the tight ponytail that her [if level of Sidney is 22]donor twin[otherwise]body doppelganger[end if] had.  She combs it repeatedly, clearly loving having such long, beautiful hair.  Sidney's acquired a sunshine yellow swimsuit that fits the new her very nicely and has even added a hole at the back for her thick, rudder-like tail.";
	otherwise if level of Sidney is 71:
		say "     The soldier-turned-wusky is quite the pretty dog.  She's got a strong physique from her husky heritage and increased overall size from the feral wolf side of her.  Her fur's a deep black with a white underbelly.  There's a few traces of dark grey on the head and wherever the black changes to white, slightly blending the transition.  Her canine head has some lupine touches, such as pointier ears and a stronger jaw, but still has the bright blue eyes common in huskies.  Being four-footed now and having only limited use of her paws, she's forgone wearing clothing beyond a pink shawl and instead simply does her best to keep herself well-groomed.";


Instead of conversing the Sidney:
	if hp of Sidney < 3:
		say "ERROR-Sidney-[hp of Sidney]T: You should not be able to talk to me!";
	otherwise:
		say "     'This is wonderful, but it'll take some getting used to.'";
		say "[bracket]***More content to come soon. - The Mgmt[close bracket][line break]";


Section 5 - Sexy Times Sidney

Part 1 - Basic System

the fuckscene of Sidney is "[sexwithSidney]".

to say sexwithSidney:
	if hp of Sidney < 3:
		say "ERROR-Sidney-[hp of Sidney]F: You should not be able to find me yet.  Resetting.";
		now hp of Sidney is 0;
		remove Sidney from play;
		if girl is not banned and furry is not banned, now Meeting Sidney is unresolved;
	otherwise if lastfuck of Sidney - turns < 6:
		say "     I'm still getting used to all this.  It's been wonderful, but I think I could use a bit of a break.";
	otherwise:
		say "     'I appreciate the offer.  I [italic type]really[roman type] do, but I'm still getting used to all this.  Just give me a little time and then...', she says with a wink and a sway of her hips.";
		say "[bracket]***More content to come soon. - The Mgmt[close bracket][line break]";

	
Section 7 - Endings

[
when play ends:
	if humanity of player >= 10 and ( if hp of Sidney >= 3 and hp of Sidney < 99 ):
		say "***";
]


[        hp of Sidney        ]
[ 0 - not encountered	     ]
[ 1 - met, unconvinced       ]
[ 2 - convinced              ]
[ 3 - transformed            ]
[ 4 - spoke to post-tf       ]
[ 5 - had sex post-tf        ]
[ 99 - happy tf end          ]
[ 100 - sent back to base    ]
[ 101 - failed all attempts  ]

[      level of Sidney       ]
[ 21-50 furries              ]
[ 21 = red fox vixen         ]
[ 22 = otteress (f)          ]
[ 23 = otteress (u)          ]
[ 71-80 = feral forms        ]
[ 71 = wusky                 ]


Sidney ends here.
