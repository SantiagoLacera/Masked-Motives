INCLUDE globals.ink

{robotActIIComplete == false && vampireActIIComplete == false && werewolfActIIComplete == false: ->main | ->Empty}

===main===
...#speaker: Player #portrait: player_neutral #layout: left
Oh, hello! #speaker: Cipher #portrait: robot_neutral #layout: right
I almsot didn't see you there. #speaker: Cipher #portrait: robot_neutral #layout: right
You seem a bit...preoccupied. #speaker: Player #portrait: player_neutral #layout: left
Well, it's just that these gems are oddly placed. #speaker: Cipher #portrait: robot_neutral #layout: right
You think so? #speaker: Player #portrait: player_neutral #layout: left
I mean, I guess they do look sort of oddly placed. #speaker: Player #portrait: player_neutral #layout: left
Do you think they're something useful? #speaker: Player #portrait: player_neutral #layout: left
It is hard to tell...#speaker: Cipher #portrait: robot_neutral #layout: right
*[Check them out together]
    Then we should check them out, shouldn't we? #speaker: Player #portrait: player_neutral #layout: left
    I- #speaker: Cipher #portrait: robot_neutral #layout: right 
    ...yes, you are right. #speaker: Cipher #portrait: robot_neutral #layout: right
    Which one do you like? #speaker: Player #portrait: player_neutral #layout: left
    The purple gem is pretty...#speaker: Cipher #portrait: robot_neutral #layout: right
    Maybe you should take it then! #speaker: Player #portrait: player_neutral #layout: left
    Take it-? #speaker: Cipher #portrait: robot_neutral #layout: right
    I could never do that! #speaker: Cipher #portrait: robot_neutral #layout: right
    Did you forget that this is all the wizard's stuff? Even if he's dead, I can't disrespect that! #speaker: Cipher #portrait: robot_neutral #layout: right
    Okay, sorry! I was only suggesting it because we have to inspect them anyways. #speaker: Player #portrait: player_neutral #layout: left
    Maybe we should check elsewhere...#speaker: Player #portrait: player_neutral #layout: left
    ~workWithRobotActII = true
*[Dismiss the idea]
    They're probably just for show anyways...#speaker: Player #portrait: player_neutral #layout: left
    Have you noticed anything else? #speaker: Player #portrait: player_neutral #layout: left
    I noticed a tent over there but knowing my luck, it'll be a trap of some sort. #speaker: Player #Portrait: player_neutral #layout: left
    A trap? #speaker: Cipher #portrait: robot_neutral #layout: right
    The wizard was a cautious man but never that cautious to plant traps. #speaker: Cipher #portrait: robot_neutral #layout: right
    So you think it should be safe then? #speaker: Player #portrait: player_neutral #layout: left
    Yes. #speaker: Cipher #portait: robot_neutral #layout: right
    Alright...I suppose I'll trust your word about traps and go check it out. #speaker: Player #portrait: player_neutral #layout: left
-... #speaker: Player #portrait: player_neutral #layout: left
~robotActIIComplete = true
->END

===Empty===
{~My body is having trouble with this cold air...|Snowflakes...|The werewolf looks really comfortable out here.} #speaker: Cipher #portrait: robot_neutral #layout: right
->END