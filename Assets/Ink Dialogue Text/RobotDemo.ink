
INCLUDE globals.ink

{isRobotDialogueComplete == false: ->Unknown | ->EndOfDialogue}


===Unknown===
You are the one the wizard trained.
    *[I am...]
        Yeah, that would be me. What's it to you? #speaker: Player #portrait: player_neutral #layout: left
        It means nothing to me, I was simply curious. #speaker: Robot #portrait: robot_neutral #layout: right
        Though...isn't it suspicious? #speaker: Robot #portrait: robot_neutral #layout: right
        **[Suspicious?]
            We all know the wizard here, there's nothing suspicious about him training me! #speaker: Player #portrait: player_neutral #layout: left
            Correct. We all <i> know </i> the wizard. None of us were personally trained by him as you were. #speaker: Robot #portrait: robot_neutral #layout: right
            So I was trained by him, big deal. #speaker: Player #portrait: player_neutral #layout: left
            We <i>trained</i>. It's not like I spent my time spying on him and learning all of his secrets. #speaker: Player #portrait: player_neutral #layout: left
            That would mean you learned his combat style, does it not? #speaker: Robot #portrait: robot_neutral #layout: right
            If by combat you're referring to him flinging a staff around then yes, I did. #speaker: Player #portrait: player_neutral #layout: left
            That is certainly suspicious. I can't just ignore- #speaker: Robot #portrait: robot_neutral #layout: right
            That was sarcasm. Clearly you don't know much about that. #speaker: Player #portrait: player_neutral #layout: left
            The wizard taught me many things, but combat wasn't one of them. Something about wanting me to be pacifist. #speaker: Player #portrait: player_neutral #layout: left
            You didn't see the wizard fighting then? #speaker: Robot #portrait: robot_neutral #layout: right
            Well, he did fling his staff at a frog before to catch it. It didn't work obviously. #speaker: Player #portrait: player_neutral #layout: left
            I see. I suppose I may have been too rash in my assumptions. #speaker: Robot #portrait: robot_neutral #layout: right
            ~robot_trustLevel += 2
            <b><color=\#191919>[Robot detects you aren't lying. Relationship level +2: current Relationship level: {robot_trustLevel} %]</color></b>#speaker: Robot #portrait: robot_neutral #layout: right
            Was there a reason to think me being here was suspicious? You know the wizard invited me, right? #speaker: Player #portrait: player_neutral #layout: left
            The wizard...has been acting off. I believed one of those he invited may have been the cause for such behavior. #speaker: Robot #portrait: robot_neutral #layout: right
            I understand, but I haven't seen the wizard for years now. #speaker: player #portrait: player_neutral #layout: left
            Who are you by the way? I don't recall you giving me a name. #speaker: Player #portrait: player_neutral #layout: left
            I am the wizard's assistant, Cipher. #speaker:Cipher #portrait: robot_neutral #layout: right
            Assistant? I thought he liked having control over what he needed to do. #speaker: Player #portrait: player_neutral #layout: left
            ...I don't get called upon often. #speaker: Cipher #portrait: robot_neutral #layout: right
   
            Yeah, that sounds more accurate. #speaker: Player #portrait: player_neutral #layout: left
            
            Well...you can like, have fun with the whole assistant thing you've got going on. I'm going to go meet with the other guests. #speaker: Player #portrait: player_neutral #layout: left
            
            **[Wow..]
            Straight to the point. You know, it's usually polite to introduce yourself first. #speaker: Player #portrait: player_neutral #layout: left
            Polite? I see. I did not know exchanging names was such an important task to humans. #speaker: Robot #portrait: robot_neutral #layout: right
            Well, you already seem to know me so what's your name? #speaker: Player #portrait: player_neutral #layout: left
            Cipher. Now, how long did the wizard train you? #speaker: Cipher #portrait: robot_neutral #layout: right
            
            ***[I don't remember]
                It's...been a few years since he trained me. I don't remember how long I was under his mentorship. #speaker: Player #portrait: player_neutral #layout: left
                What did he teach you if not combat? #speaker: Cipher #portrait: robot_neutral #layout: right
                How to make and use potions, healing, crafting, cooking. #speaker: Player #portrait: player_neutral #layout: left
                
                Probably just about anything other than combat. #speaker: Player #portrait: player_neutral #layout: left
                
                Why would he not teach you combat? #speaker: Cipher #portrait: robot_neutral #layout: right
                
                He wanted me to be a pacifist. Plus, most witches do fight with spells and such, so I suppose he did teach me combat in a way. #speaker: Player #portrait: player_neutral #layout: left
                
                ~robot_trustLevel -= 1
            <b><color=\#191919>[Trust level -1]</color></b>#speaker: Cipher #portrait: robot_neutral #layout: right
            <b><color=\#191919>[Current trust level with this character: {robot_trustLevel}%]</color></b>#speaker: Cipher #portrait: robot_neutral #layout: right
                <b><color=\#191919>[Cipher looks at you suspiciously.]</color></b>#speaker: Player #portrait: player_neutral #layout: left
                
                I understand. I will verify this with the wizard when I see him next. #speaker: Cipher #portrait: robot_neutral #layout: right
                
                You know what? I doubt I could stop you from doing that. So, just do whatever you want. #speaker: Player #portrait: player_neutral #layout: left
                
                Of course. I think I will go look for him now then. #speaker: Cipher #portrait: robot_neutral #layout: right
          
                
            ***[A year or so?]
                So little time, what is the reasoning? #speaker: Cipher #portrait: robot_neutral #layout: right
                Does there have to be a reason? Training isn't meant to last forever you know. #speaker: Player #portrait: player_neutral #layout: left
                Of course. However, the wizard talked as if he wished to teach you more. #speaker: Cipher #portrait: robot_neutral #layout: right
                He did? Count me suprised. #speaker: Player #portrait: player_neutral #layout: left
                Is it that suprising to hear? #speaker: Cipher #portrait: robot_neutral #layout: right
                Yes, very. #speaker: Player #portrait: player_neutral #layout: left
                
                He didn't care to pay attention to me much when he was mentoring me, so I doubt his words are well placed now. #speaker: Player #portrait: player_neutral #layout: left
                
                That cannot be true! The wizard is very caring towards his friends. #speaker: Cipher #portrait: robot_neutral #layout: right
                
                Your mistake is thinking the wizard and I are friends. #speaker: Player #portrait: player_neutral #layout: left
                
                We had a student-teacher relationship at best. #speaker: Player #portrait: player_neutral #layout: left
                
                Look, I get this may come as a suprise to you but I would appreciate if you didn't try to tell me how my relationship was. #speaker: Player #portrait: player_neutral #layout: left
                I...understand. I will refrain from doing so in the future. #speaker: Cipher #portrait: robot_neutral #layout: right
                
                It was...interesting to talk to you to say the least, but I would really like to go talk with the others now. #speaker: Player #portrait: player_neutral #layout: left
                
                
                
    *[How did you know?]
        Well, yeah. How'd you know that though? #speaker: Player #portrait: player_neutral #layout: left
        I've read your file before. #speaker: Robot #portrait: robot_neutral #layout: right
        
        My what. #speaker: Player #portrait: player_neutral #layout: left
        
        You know, your file. The one the wizard has. #speaker: Robot #portrait: robot_neutral #layout: right
        He has a file...with my information!? #speaker: Player #portrait: player_neutral #layout: right
        Yes. That is what I've been saying. #speaker: Robot #portrait: robot_neutral #layout: right
        Who even are you? #speaker: Player #portrait: player_neutral #Layout: left
        And what is in that file? What information does he have on me? #speaker: Player #portrait: player_neutral #layout: left
        Cipher. #speaker: Cipher #portrait: robot_neutral #layout: right
        And only the normal information. Age, height, birthplace, family, powers. #speaker: Cipher #portrait: robot_neutral #layout: right
        I never gave him that information, how did he even get that? #speaker: Player #portrait: player_neutral #layout: left
        I suppose he found it out himself. #speaker: Cipher #portrait: robot_neutral #layout: right
        And you don't think that's...abnormal? #speaker: Player #portrait: player_Neutral #layout: left
        No. It is common knowledge for a mentor to have that information on his student. #speaker: Cipher #portrait: robot_neutral #layout: right
        Maybe with my knowledge, but it's weird that he never asked me himself. #speaker: Player #portrait: player_neutral #layout: left
        
        I...need to think about all this. I'm just going to go now, I need to be alone. #speaker: Player #portrait: player_neutral #layout: left
    -... #speaker: Player #portrait: player_neutral #layout: left
    ~isRobotDialogueComplete = true
->END

===EndOfDialogue===

{~Maybe you should go talk with the others now| I believe the wizard is starting dinner soon| There's nothing else to talk about right now.} #speaker: Cipher #portrait: robot_neutral #layout: right

->END
