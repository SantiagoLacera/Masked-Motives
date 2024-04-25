INCLUDE globals.ink

//is{IntroductionComplete}
{IntroductionComplete == false: -> main | ->Empty }

===main===
//{vampire_trustLevel}% trust with this character


... #speaker: Vampire #portrait: vampire_neutral #layout: right
Well, well, look who we've got here. #speaker: Vampire #portrait: vampire_neutral #layout: right

Who are you? Wait! Let me guess... #speaker: Player #portrait: player_neutral #layout: left 

Your name is totally Dracula isn't it!? #speaker: Player #portrait: player_neutral #layout: left

No! Not like Dracula. Do you think just because I'm a vampire, I would be named after some fictional one? #speaker: Vampire #portrait: vampire_neutral #layout: right

Haha, um...maybe? #speaker: Player #portrait: player_neutral #layout: left

Fool! My name is Sephiroth and you better call me by it instead of that stupid fictional name. #speaker: Sephiroth #portrait: vampire_neutral #layout: right

Alright, okay! I promise not to call you Dracula. #speaker: Player #portrait: player_neutral #layout: left

... #speaker: PLayer #portrait: player_neutral #layout: left

you know, you're quite short, aren't you? #speaker: Sephiroth #portrait: vampire_neutral #layout: right

Short? You're like six feet tall, everyone is probably short to you! #speaker: Player #portrait: player_neutral #layout: left
I suppose you're not wrong. Anyways-  #speaker: Sephiroth #portrait: vampire_neutral #layout: right

 the wizard <i><color=\#191919>really</color></i> wasn't kidding when he said you took the whole witch thing seriously  #speaker: Sephiroth #portrait: vampire_neutral #layout: right

    *[Should you be saying that?]
        Are you really the one to be talking? #speaker: Player #portrait: player_neutral #layout: left
        
        Excuse me? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        I mean, can you <i>really</i> be talking when you look like...that? #speaker: Player #portrait: player_neutral #layout: left
        
        Is that an insult towards my dresswear? #speaker: Player #portrait: player_neutral #layout: left
        
        Hey! I'm just saying you can't be talking about me when you look like the textbook definition of a vampire! #speaker: Player #portrait: player_neutral #layout: left
        
        <b> [Trust level -6]</b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        ~vampire_trustLevel -= 6
        <b> [Current trust with this character: {vampire_trustLevel}%]</b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        <b> [The vampire is very serious about his clothing! Keep note of it, or you'll find yourself on his bad side]</b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        
        Okay, you kind of look like you're frying me with your eyes right now. #speaker: Player #portrait: player_neutral #layout: left
        
        At least you aren't completely oblivious then. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        
        It seems to be getting quite late. You should go talk with the others before dinner starts. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
       
    *[Why would I not?]
       Is there a reason I wouldn't? #speaker: Player #portrait: player_neutral #layout: left
       I mean, I expected potions and spells. Not the whole...outfit. It's kind of overkill, don't you think? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
       
       You're talking about the hat aren't you? #speaker: Player #portrait: player_neutral #layout: left
       
       Obviously. It's certainly...a large hat. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
               
       Someone important to me gave me it. #speaker: Player #portrait: player_neutral #layout: left
       
        Someone important to you. The wizard? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        
        **[tell the truth]
            Him? No way! #speaker: Player #portrait: player_neutral #layout: left
            
            Like I said, it's been a few years since I was his apprentice. #speaker: Player #portrait: player_neutral #layout: left
            
            After I left this place I explored for awhile. #speaker: Player #portrait: player_neutral #layout: left
            
            Sometime during that time I came across another witch. #speaker: Player #portrait: player_neutral #layout: left
            
            She offered to teach me, and I agreed. #speaker: Player #portrait: player_neutral #layout: left
            
            So, she was actually the one who gave me this hat. It was important to her and now it's important to me. #speaker: Player #portrait: player_neutral #layout: left
            
            Interesting. Are you still working under her now? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            No. She passed a year ago. I've been on my own since then. #speaker: Player #portrait: player_neutral #layout: left
            
            I see. Well it seems you've been doing good for yourself in the mean time at least. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            Yeah, something like that. #speaker: Player #portrait: player_neutral #layout: left

            It seems to be getting quite late. You should go talk with the others before dinner starts. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
        **[lie]
            Yeah, the wizard gave it to me back when I was his apprentice. #speaker: Player #portrait: player_neutral #layout: left
            ~LieToVampire = true
            <b>[You lied to the vampire, this may come up later...] </b> #speaker: Player #portrait: player_neutral #layout: left
            
            So how long were you his apprentice for? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            Well, it's been a long time since then so my memory is probably off. I'd say around a year though. #speaker: Player #portrait: player_neutral #layout: left
            
            You lasted longer than I would have expected. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            Do you take me as a quitter or something? #speaker: Player #portrait: player_neutral #layout: left
            
            Not exactly what I meant. I was only suprised you managed to stick around that crazy guy for so long. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            Yeah, you and me both. #speaker: Player #portrait: player_neutral #layout: left
            
            I guess you aren't so bad after all then. Keep an eye out for me after this whole dinner thing alright? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            I'd like to talk to you more later, and maybe we can share stories while we're at it. #speaker: Sephiroth #portrati: vampire_neutral #layout: right
            
            Sounds like a deal to me! I'll come find you later then! #speaker: Player #portrait: player_neutral #layout: left
            
            ~vampire_trustLevel += 3
            <b> [Trust level increased + 3]</b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            <b> [Current trust level with this character: {vampire_trustLevel}%]</b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
            <b>[You've caught the vampire's interest! Play your cards right and you'll earn his trust in no time.]</b> #speaker: Sephiroth #portrait: vampire_neutral #layout: right
            
        
- ... #speaker: Player #portrait: player_neutral #layout: left

~IntroductionComplete = true
->END


===Empty===
{~Were you planning on spending the whole time talking with me?...| You know there are others to bother, right?| There's nothing else to talk about right now.} #speaker: Sephiroth #portrait: vampire_neutral #layout: right
->END