INCLUDE globals.ink

{trial1Finished == false: ->main | ->Empty}

===main===
{workWithWerewolfActI == true: ->workWithWerewolf}
{workWithVampireActI == true: ->workWithVampire}
{workWithRobotActI == true: ->workWithRobot}
->END

===workWithVampire===
Did anyone find anythin' that may have been used by the killer? #speaker: Fang #portrait: werewolf_neutral #layout: right
Was there even much to find in that room..? #speaker: Cipher #portrait: robot_neutral #layout: left
Of course there was! You just suck at looking. #speaker: Sephiroth #portati: vampire_neutral #layout: right
Okay, okay. Settle down. #speaker: Fang #portrait: werewolf_neutral #layout: left
The last thing we're here to do is argue. #speaker: Fang #portrait: werewolf_neutral #layout: left
And what if that's the exact thing the killer wanted us to do! #speaker: Sephiroth #portrait: vampire_neutral #Layout: right
Well, I don't exactly care to hear it so zip it. #speaker: Fang #portrait: werewolf_neutral #layout: left
Now, did anyone find anything of use? #speaker: Fang #portrait: werewolf_neutral #layout: left

I found a bone behind one of the statues! #speaker: Player #portrait: player_neutral #layout: left
I was there too. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
You made me get it myself so, I'm taking the credit. #speaker: Player #Portrait: player_neutral #layout: left
Whatever, so we found a bone. How is that going to help us? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
I'm not sure...#speaker: Robot #portrait: robot_neutral #layout: left
We should conclude for now and look for more items. #speaker: Player #portrait: player_neutral #layout: left
~trial1Finished = true
-... #speaker: Player #portrait: player_neutral #layout: left
->END

===workWithRobot===
Did anyone find anythin' that may have been used by the killer? #speaker: Fang #portrait: werewolf_neutral #layout: right
Was there even much to find in that room..? #speaker: Cipher #portrait: robot_neutral #layout: left
Of course there was! You just suck at looking. #speaker: Sephiroth #portati: vampire_neutral #layout: right
Okay, okay. Settle down. #speaker: Fang #portrait: werewolf_neutral #layout: left
The last thing we're here to do is argue. #speaker: Fang #portrait: werewolf_neutral #layout: left
And what if that's the exact thing the killer wanted us to do! #speaker: Sephiroth #portrait: vampire_neutral #Layout: right
Well, I don't exactly care to hear it so zip it. #speaker: Fang #portrait: werewolf_neutral #layout: left
Now, did anyone find anything of use? #speaker: Fang #portrait: werewolf_neutral #layout: left

Cipher found a bone! #speaker: Player #portrait: player_neutral #layout: right
And what good is that for? #speaker: Sephiroth #portrait: vampire_neutral #layout: left
It was more that you found! Even if it was just a bone...#speaker: Player #portrait: player_neutral #layout: right
We ain't gettin' no where like this. #speaker: Fang #portrait: werewolf_neutral #layout: left
We should conclude for now and look for more items. #speaker: Player #portrait: player_neutral #layout: right
~trial1Finished = true
-... #speaker: Player #portrait: player_neutral #layout: left
->END

===workWithWerewolf===
Did anyone find anythin' that may have been used by the killer? #speaker: Fang #portrait: werewolf_neutral #layout: right
Was there even much to find in that room..? #speaker: Cipher #portrait: robot_neutral #layout: left
Of course there was! You just suck at looking. #speaker: Sephiroth #portati: vampire_neutral #layout: right
Okay, okay. Settle down. #speaker: Fang #portrait: werewolf_neutral #layout: left
The last thing we're here to do is argue. #speaker: Fang #portrait: werewolf_neutral #layout: left
And what if that's the exact thing the killer wanted us to do! #speaker: Sephiroth #portrait: vampire_neutral #Layout: right
Well, I don't exactly care to hear it so zip it. #speaker: Fang #portrait: werewolf_neutral #layout: left
Now, did anyone find anything of use? #speaker: Fang #portrait: werewolf_neutral #layout: left
So Fang and I found a bone behind one of the cat statues! #speaker: Player #portrait: player_neutral #layout: left
You mean the one Fang heard me talking about? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
...Maybe. #speaker: Player #Portrait: player_neutral #layout: left
Either way, we ended up lookin' into the item and think it may be useful. #speaker: Fang #portrait: werewolf_neutral #layout: right
We can't prove anything yet though...#speaker: Player #portrait: player_neutral #layout: left
So it's useless. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
That's not polite. At least they got something. #speaker: Cipher #portrait: robot_neutral #layout: left
Being polite is the last thing we need to worry about right now. You do remember someone was killed, right? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Hey! No fighting. What's important is finding items like this. #speaker: Player #portrait: player_neutral #layout: left
We should conclude for now and look for more items. #speaker: Player #portrait: player_neutral #layout: left
~trial1Finished = true
-... #speaker: Player #portrait: player_neutral #layout: left
->END

===Empty===
The meeting is complete...there is nothing else to be discussed for now. #speaker: Player #portrait: player_neutral #layout: left
->END