INCLUDE globals.ink

{werewolfActIIComplete == false && vampireActIIComplete == false && robotActIIComplete == false: ->main | ->Empty}


===main===
Ya like the cold? #speaker: Fang #portrait: werewolf_neutral #layout: right
No, not really. #speaker: Player #portrait: player_neutral #layout: left
But it helps...you know, after what happened earlier. #speaker: Player #portrait: player_neutral #layout: left
I get it las, no need to explain. #speaker; Fang #portrait: werewolf_neutral #layout: right
Did ya want to look around the area together for a bit? #speaker: Fang #portrait: werewolf_neutral #layout: right
We've got a better chance at findin' somethin' together. #speaker: Fang #portrait: werewolf_neutral #layout: right 
*[Look together]
    You're probably right...#speaker: Player #portrait: player_neutral #layout: left
    Was there anything you had wanted to check out? #speaker: Player #portrait: player_Neutral #layout: left
    Yeah, I saw a large sword behind a tree over there. #speaker: Fang #portrait: werewolf_neutral #layout: right
    No idea how to go about gettin' it though. Got any ideas? #speaker: Fang #portrait: werewolf_neutral #layout: right
    Wow, I don't know how I didn't notice that before! #speaker: Player #portrait: player_neutral #layout: left
    Well...it's behind a tree. #speaker: Player #portrait: player_neutral #layout: left
    We could chop the tree down? #speaker: Player #portrait: player_neutral #layout: left
    I knew I liked ya for a reason las! #speaker: Fang #portrait: werewolf_neutral #layout: right
    How about ya go look for something to cut it down while I see if theres anything else to look at over here? #speaker: Fang #portrait: werewolf_neutral #layout: right
    ~workWithWerewolfActII = true

*[Don't look together]
    I think it would be better if I looked around myself for now. #speaker: Player #portrait: player_neutral #layout: left
    Alright las, I ain't gonna force ya. #speaker: Fang #protrait: werewolf_neutral #layout: right 
    So what are ya gonna do when we find the killer? #speaker: Fang #portrait: werewolf_neutral #layout: right
    Take the longest break ever. #speaker: Player #portrait: player_neutral #layout: left
    I've been exploring for awhile and maybe this is my sign to stop for a bit. #speaker: Player #portrait: player_neutral #layout: left
    That it might be. #speaker: Fang #portrait: werewolf_neutral #layout: right
    I think I oughta go explore. Do the opposite of ya. #speaker: Fang #portrait: werewolf_neutral #layout: right
    Maybe it'll be good for you. A change in scenery, that is. #speaker: Player #portrait: player_neutral #layout: left
    That it will. #speaker: Fang #portrait: werewolf_neutral #layout: right
    Anyway, I don't want to take up ya searching time so I'll let ya be now. #speaker: Fang #portrait: werewolf_neutral #layout: right
-... #speaker: Player #portrait: player_neutral #layout: left
->END

===Empty===
{~The cold botherin' ya?|It feels nice out right now, don't ya think?} #speaker: Fang #portrait: werewolf_neutral #layout: right
->END