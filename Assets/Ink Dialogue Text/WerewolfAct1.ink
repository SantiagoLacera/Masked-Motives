INCLUDE globals.ink

{werewolfActIComplete == false && vampireActIComplete == false && robotActIComplete == false: -> main | -> Empty}

===main===
Ya' alright kid? #speaker: Fang #portrait: werewolf_neutral #layout: right
Me? Oh yeah, I'm okay... #speaker: Player #portrait: player_neutral #layout: left
It's been a little bit of a nerve wracking night to say the least. #speaker: Player #portrait: player_neutral #layout: left
...That I understand. #speaker: Fang #portrait: werewolf_neutral #layout: right
If ya ain't plannin' on workin' with anyone else, why don't ya come look for clues with me? #speaker: Fang #portrait: werewolf_neutral #layout: right
*[Brush him off]
    I'd rather...not. #speaker: Player #portrait: player_neutral #layout: left
    There a reason or are ya just wantin' to do some detective work on ya own? #speaker: Fang #portrait: werewolf_neutral #layout: right
    **[There's a reason...]
        There <i>is</i> a reason actually... #speaker: Player #portrait: player_neutral #layout: left
        I just, don't want to be...suspicious of you but your relationship with the wizard was too odd for me to ignore! #speaker: Player #portrait: player_neutral #layout: left
        My relationship with the... #speaker: Fang #portrait: werewolf_neutral #layout: right
        ...Ya don't seriously think I killed the guy, do ya? #speaker: Fang #portrait: werewolf_neutral #layout: right
        I mean... #speaker: Player #portrait: player_neutral #layout: left
        Not exactly? #speaker: Player #portrait: player_neutral #layout: left
        It's just suspicious you've known him so long and don't look too upset over his death! #speaker: Player #portrait: player_neutral #layout: left
        That's what ya find suspicious? #speaker: Fang #portrait: werewolf_neutral #layout: right
        Look, he was the reason I became...like this. #speaker: Fang #portrait: werewolf_neutral #layout: right
        I don't exactly appreciate what he did, but that don't mean I would try to kill him. #speaker: Fang #portrait: werewolf_neutral #layout: right
        Even if I wanted to, I could have done so years ago. #speaker: Fang #portrait: werewolf_neutral #layout: right
        There would be no reason for me to wait until now to do so. #speaker: Fang #portrait: werewolf_neutral #layout: right
        ...Okay. #speaker: Player #portrait: player_neutral #layout: left
        I can see some truth in that. #speaker: Player #portrait: player_neutral #layout: left
        I'm sorry for jumping the gun, it's just hard to be trusting in anyone other than myself right now. #speaker: Player #portrait: player_neutral #layout: left
        That's fine las, I'll let ya go explore and look for any clues that might help ya put something together. #speaker: Fang #portrait: werewolf_neutral #layout: right
        
    **[Work alone]
        No, not really a reason. #speaker: Player #portrait: player_neutral #layout: left
        I just work better alone. #speaker: Player #portrait: player_neutral #layout: left
        Alright, I get it las. #speaker: Fang #portrait: werewolf_neutral #layout: right
        That bein' said, ya might want to consider how suspicious it looks to want to be alone right now. #speaker: Fang #portrait: werewolf_neutral #layout: right
        I ain't suspect ya or anything, but the others might think ya tryin' to hide something. #speaker: Fang #portrait: werewolf_neutral #layout: right
        How is it suspicious to want to work alone? #speaker: Player #portrait: player_neutral #layout: left 
        One of us ought to be the the killer. #speaker: Fang #portrait: werewolf_neutral #layout: right 
        It's harder to hide things when ya working with someone else. #speaker: Fang #portrait: werewolf_neutral #layout: right
        I guess I understand. #speaker: Player #portrait: player_neutral #layout: left
        But I'm going to work on my own for now! #speaker: Player #portrait: player_neutral #layout: left
        Alright kid, just stay safe. #speaker: Fang #portrait: werewolf_neutral #layout: right
        
*[Work with him]
    I think that would be a great idea. #speaker: Player #portrait: player_neutral #layout: left
    Do you have any leads? #speaker: Player #portrait: player_neutral #layout: left
    Nothin' specific. I did overhear Sephiroth talkin' about that cat statue over there though. #speaker: Fang #portrait: werewolf_neutral #layout: right
    What, does he like cats or something? #speaker: Player #portrait: player_neutral #layout: left
    I don't think so las. #speaker: Fang #portrait: werewolf_neutral #layout: right
    We should go check it out and see if there's anything important over there. #speaker: Fang #portrait: werewolf_neutral #layout: right
    I think you're right. #speaker: Player #portrait: player_neutral #layout: left
    Oh, hey! #speaker: Player #portrait: player_neutral #layout: left
    I think there's something behind it! #speaker: Player #portrait: player_neutral #layout: left
    Alright, no need to stand around then las. Let's go look. #speaker: Fang #portrait: werewolf_neutral #layout: right
    ~workWithWerewolfActI = true
-...
~werewolfActIComplete = true
->END



===Empty===
{~Ya find anything worthwhile?.|I think there's something in that corner las.| I'm gonna look over there las.} #speaker: Fang #portrait: werewolf_neutral #layout: right
->END