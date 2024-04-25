INCLUDE globals.ink

{werewolfActIIIComplete == false && vampireActIIIComplete == false && robotActIIIComplete == false: ->main | ->Empty}


===main===
Fang! #speaker: Player #portrait: player_neutral #layout: left
I've been looking for you. #speaker: Player #portrait: player_neutral #layout: left
I don't suppose ya came over to work together, did ya? #speaker: Fang #portrait: werewolf_neutral #layout: right
Yeah! How'd you figure? #speaker: Player #portrait: player_neutral #layout: left
Well ya seem like the type of las to want to solve things quickly. Figured that would be the quickest way. #speaker: Fang #portrait:  werewolf_neutral #layout: right
So...#speaker: Player #portrait: player_neutral #layout: left
What do you think? #speaker: Player #portrait: player_neutral #layout: left
Alright las. I don't mind workin' with ya. #speaker: Fang #portrait: werewolf_neutral #layout: right
*[Talk about the others]
    So what do you think about this...whole thing? #speaker: Player #portrait: player_neutral #layout: left
    It's crazy. Never been a fan of the guy, but killing him is somethin' else. #speaker: Fang #portrait: werewolf_neutral #layout: right
    I agree. #speaker: Player #portrait: player_neutral #layout: left
    I never expected to see him die honestly. I was begining to think he was immortal. #speaker: Player #portrait: player_neutral #layout: left
    Yeah, he really gave off that sorta vibe, didn't he? #speaker: Fang #portrait: werewolf_neutral #layout: right
    ...Yeah. It's weird thinking about it too much. #speaker: Player #portrait: player_neutral #layout: left
    Anyways, what do you think about the others? #speaker: Player #portrait: player_neutral #layout: left
    Well, Sephiroth is the rudest vampire I've ever met and the robot thing is...boring. #speaker: Fang #portrait: werewolf_neutral #layout: right
    Cipher. #speaker: Player #portrait: player_neutral #layout: left
    Huh? #speaker: Fang #portrait: werewolf_neutral #layout: right
    The robot. #speaker: Player #portrait: player_neutral #layout: left
    Their name is Cipher. #speaker: Player #portrait: player_neutral #layout: left
    Oh, I see. I ain't bother to ask at the time. #speaker: Fang #portrait: werewolf_neutral #layout: right
    Right, but that's not what I meant. #speaker: Player #portrait: player_neutral #layout: left
    I meant if you thought either of them seemed suspicious #speaker: Player #portrait: player_neutral #layout: left
    That's a good question. #speaker: Fang #portrait: werewolf_neutral #layout: right
    I'm not too sure but I always got my eye on Sephiroth. He always seemed a bit too eager to see the wizard. #speaker: Fang #portrait: werewolf_neutral #layout: right
    That <i>is</i> a little suspicious. #speaker: Player #portrait: player_neutral #layout: left
    I'll also keep my eye on him for now then. #speaker: Player #portrait: player_neutral #layout: left
    You do that las. #speaker: Fang #portrait: werewolf_neutral #layout: right
    I think we oughta go check out this place for anything out of place now. #speaker: Fang #portrait: werewolf_neutral #layout: right
    Alright! Let's go then. #speaker: Player #portrait: player_neutral #layout: left
    ~workWithWerewolfActIII = true
*[Go find clues]
Hey las. #speaker: Fang #portrait: werewolf_neutral #layout: right
Ya see those keys in there? #speaker: Fang #portrait: werewolf_neutral #layout: right
Yeah, what about them?#speaker: Player #portrait: player_neutral #layout: left
Ya reckon there's anything we can do with them? #speaker: Fang #portrait: werewolf_neutral #layout: right
Oh, hey! You're right! They might actually be a clue.#speaker: Player #portrait: player_neutral #layout: left 
I'm going to go test that out! #speaker: Player #portrait: player_neutral #layout: left 
~workWithWerewolfActIII = true
-... #speaker: Player #portrait: player_neutral #layout: left 
~werewolfActIIIComplete = true
->END


===Empty===
{~Them keys look odd...|I reckon the killer placed these strategically|What would the killer have used...?} #speaker: Fang #portrait: werewolf_neutral #layout: right
->END