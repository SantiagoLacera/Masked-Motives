INCLUDE globals.ink

{vampireActIIIComplete == false && robotActIIIComplete == false && werewolfActIIIComplete == false: ->main | ->Empty}


===main===

Dracula! #speaker:Player #portrait: player_neutral #layout: left
<b>[Sephiroth didn't appreciate your words] </b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Didn't I tell you <i> not</i> to call me by that foolish name? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Sorry! I forgot, and I was just trying to clear the tension. #speaker: Player #portrait: player_neutral #layout: left
I expect to never hear that name fall from your mouth again when speaking to me. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Now, was there something you wanted from me? #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
About that...#speaker: Player #portrait: player_neutral #layout: left
I was hoping we could team up.#speaker: Player #portrait: player_neutral #layout: left
Team up...with you? #speaker: Sephiroth #portrait: vampire_neutral #layout: left
Yeah! You know, maybe look for some clues and share what we find? #speaker: Player #portrait: player_neutral #layout: left
You'll only slow me down. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    *[Argue]
        That's a rude thing to say! #speaker: Player #portrait: player_neutral #layout: left
        It's honest, is it not? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        No! How could you say that? #speaker: Player #portrait: player_neutral #layout: left
        It's what I've observed. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
       **[Continue Arguing] 
            Well you observed wrong! #speaker: Player #portrait: player_neutral #layout: left
            Did I? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            Yes! That's what I've been trying to tell you! #speaker: Player #portrait: player_neutral #layout: left
            Explain to me then. How won't you be a hinderance to me? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            The wizard-! #speaker: player #portrait: player_neutral #layout: left
            He taught me a lot about how to find suspicious items. #speaker: Player #portrait: player_neutral #layout: left
            Did he now? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            Yeah. Actually, he was very thorough with that lesson.  #speaker: Player #portrait: player_neutral #layout: left
            
            Well then, I guess I'll just have to see for myself then. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            You mean- #speaker: Player #portrait: player_neutral #layout: left
            Yes, I mean you can work with me for now. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            Now hurry up, I can still work alone if you start taking too long. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        **[Forget it and work alone]
            I think it would be better if I worked alone. #speaker: Player #portrait: player_neutral #layout: left
            You could stand to be nicer though, it's not a good look to be rude. #speaker: Player #portrait: player_neutral #layout: left
            Who am I trying to impress here? #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
            I- #speaker: Player #portrait: player_neutral #layout: left
            Yeah, I'm going to go cool off. You really know how to fire someone up, huh? #speaker: Player #portrait: player_neutral #layout: left
*[Deny the statement]
    Slow you down? #speaker: Player #portrait: player_neutral #layout: left
    I was taught to look for suspicious things! It's like second nature to me. #speaker: Player #portrait: player_neutral #layout: left
    What do you mean taught? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    I worked with the wizard! He made sure I knew how to look for suspicious items. #speaker: Player #portrait: player_neutral #layout: left
    Why would he do that? I see no point if you were just an apprentice. #speaker: Sephiroth #portrait: vampire_neutral #layout: left
    You do know that people try to kill witches, right? #speaker: Player #portrait: player_neutral #Layout: left
    I had to be prepared in case someone tried to kill me! #speaker: Player #portrait: player_neutral #layout: left
    No, I didn't know. I guess I have spent too long away from the human world to notice the change. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    ...You said you were good at it? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Yes! #speaker: Player #portrait: player_neutral #layout: left
    Alright, you can help me look for clues in this room. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Great! Let's go look then! #speaker: Player #portrait: player_neutral #layout: left
    

-... #speaker: Player #portrait: player_neutral #layout: left
~vampireActIIIComplete = true
->END


===Empty===
{~Hurry up.|I'm busy right now.|Go look for clues to who did this.}#speaker: Sephiroth #portrait: vampire_neutral #layout: right
->END
