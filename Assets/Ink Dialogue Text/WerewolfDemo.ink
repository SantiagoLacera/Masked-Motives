INCLUDE globals.ink

{isWereWolfDialogueComplete == false: -> main | ->Empty}

===main===
//{werewolf_trustLevel}% trust with werewolf 
{IntroductionComplete == true && vampire_trustLevel <= 0: ->Familiar | ->Unknown}

->END


===Familiar===
Oh! Are you the witch? 
    *[Um...]
        Yeah, how'd you know my name? #speaker: Player #portrait: player_neutral #layout: left
        Well, the vampire came walking angrily past us, muttering about some witch.  #speaker: Werewolf #portrait: werewolf_neutral #layout:right
        I don't think he likes me. #speaker: Player #portrait: player_neutral #layout: left
        Wouldn't worry too much about it, Sephiroth usually ain't like anyone. #speaker: Werewolf #portrait: werewolf_neutral #layout:right
        ...So why'd he come then? #speaker: Player #portrait: player_neutral #layout: left
        Hell if I know, you outta ask him that on ya own. #speaker: Werewolf #portrait: werewolf_neutral #layout:right
        Well, what's your name and why did you come? #speaker: Player #portrait: player_neutral #layout: left
        Name's Fang and it wasn't much a choice on my end, I just known the wizard forever and knew he woulda' come after me if I wasn't here. #speaker: Fang #portrait: werewolf_neutral #layout:right
        **[Forever?]
            No, not forever but ten years is close enough, ain't it? #speaker:Fang #portrait: werewolf_neutral #layout:right
            TEN YEARS!? #speaker: Player #portrait: player_neutral #layout: left
            Wow...that's a long time. Did you stay at the mansion for all that time?  #speaker: Player #portrait: player_neutral #layout: left
            Not for all of it, I only stayed at the mansion durin' full moons. I lived in the woods otherwise #speaker: Fang #portrait: werewolf_neutral #layout:right
            Oh! So you have a cabin or something in the woods?  #speaker: Player #portrait: player_neutral #layout: left
            Or somethin'. #speaker: Fang #portrait: werewolf_neutral #layout:right
            I have a hut out in them woods. #speaker: Fang #portrait: werewolf_neutral #layout:right
            What do you do when it rains?#speaker: Player #portrait: player_neutral #layout: left
            I'm a werewolf, got all this fur that the rain ain't bother me much. #speaker: Fang #portrait: werewolf_neutral #layout:right
            That makes sense! That's kind of nice to have, isn't it! #speaker: Player #portrait: player_neutral #layout: left
            ~werewolf_trustLevel -= 2
             <b><color=\#191919>[Fang thinks your response is ignorant. Relationship level {werewolf_trustLevel}: current Relationship level: {werewolf_trustLevel} %]</color></b>#speaker: Player #portrait: player_neutral #layout: left
            Ain't no one think such a thing is nice. Ya might wanna watch ya mouth around the others, they're quick to anger. #speaker: Fang #portrait: werewolf_neutral #layout:right
            I'm sorry! I didn't realize...#speaker: Player #portrait: player_neutral #layout: left
            ~werewolf_trustLevel += 1
             <b><color=\#191919>[Fang appreciates your apology. Relationship level {werewolf_trustLevel}: current Relationship level: {werewolf_trustLevel} %]</color></b>#speaker: Fang #portrait: werewolf_neutral #layout: right
             It's all forgotten. #speaker: Fang #portrait: werewolf_neutral #layout:right
             Thank you... #speaker: Player #portrait: player_neutral #layout: left
             I think it might be good for me to go talk with some of the others before dinner.#speaker: Player #portrait: player_neutral #layout: left
             That's a good idea, you best be off then. #speaker: Fang #portrait: werewolf_neutral #layout:right
        **[He cares that much?]
            The wizard cares about you that much?#speaker: Player #portrait: player_neutral #layout: left
            Wouldn't say he cares about me, he likes to monitor those who've come though his mansion.#speaker: Fang #portrait: werewold_neutral #layout:right
            He's never done that with me. #speaker: Player #portrait: player_neutral #layout: left
            Well ain't ya lucky, count ya blessings with that one.#speaker: Fang #portrait: werewolf_neutral #layout:right
            Lucky!? Why would I be lucky he doesn't care about me #speaker: Player #portrait: player_neutral #layout: left
            The wizard's an...eccentric guy. He get too interested in ya, an' he might do somethin' you ain't expect.#speaker: Fang #portrait: werewolf_neutral #layout:right
            ***[Defend the wizard]
                What are you even implying?#speaker: Player #portrait: player_neutral #layout: left
                Ain't implying anythin', I'm tellin' ya what might happen if ya are interesting enough.#speaker: Fang #portrait: werewolf_neutral #layout:right
                You can't just say such a thing, you clearly don't- #speaker: Player #portrait: player_neutral #layout: left
                Know him? Did ya' forget I told ya' I known him for ten years?#speaker: Fang #portrait: werewolf_neutral #layout:right
                And did he do something to give you that idea!?#speaker: Player #portrait: player_neutral #layout: left
                Yes! I would never say sucha thing if the wizard hadn't done somethin' to me.#speaker: Fang #portrait: werewolf_neutral #layout:right
                I don't believe you. You could be lying about knowing him for long! #speaker: Player #portrait: player_neutral #layout: left
                I ain't gonna argue with ya', ya' clearly don't know anythin'. #speaker: Fang #portrait: werewolf_neutral #layout:right
                You're just- #speaker: Player #portrait: player_neutral #layout: left
                Nevermind. This conversation isn't worth it, I'm not fond of talking with liars. #speaker: Player #portrait: player_neutral #layout: left
            
            ***[Did he do something?]
            Did he do something to you?#speaker: Player #portrait: player_neutral #layout: left
            Did he-#speaker: Fang #portrait: werewolf_neutral #layout:right
            Yeah, he did somethin' alright.#speaker: Fang #portrait: werewolf_neutral #layout:right
            I ain't always been like this, ya know? I used to be one them humans. #speaker: Fang #portrait: werewolf_neutral #layout: Right
            It was a few years ago, I was wonderin' the woods 'round the mansion here. #speaker: Fang #portrait: werewolf_neutral #layout: right
            Wizard happened to be outside at the time, saw me and started talkin' to me. #speaker: Fang #portrait: werewolf_neutral #layout: right
            Talked my ear off, did he. Anyway, I was young and naive. I told him how I been wanerin' about lookin' for a cure. #speaker: Fang #portrait: werewolf_neutral #layout: right
            I'd been diagnosed with <i>Eclipses Mortem</i>. Was a disease that caused rapid degeneration of 'yer cells and led to organ failure. #speaker: Fang #portrait: werewolf_neutral #layout: right
            I was desperate because my ma would've been all alone if I died. #speaker: Fang #portrait: werewolf_neutral #layout: right
            Wizard told me he'd help find a cure for me, and I agreed to stay in his mansion while he conducted some tests. #speaker: Fang #portrait: werewolf_neutral #layout: right
            ...If I'd known before what the outcome would be, I never would've agreed.#speaker: Fang #portrait: werewolf_neutral #layout: right
            The wizard came ta me one day, tellin' me that he had finally made a cure. #speaker: Fang #portrait: werewolf_neutral #layout: right
            I ain't ever been more excited to hear something from that man's mouth.#speaker: Fang #portrait: werewolf_neutral #layout: right
            When I heard the word 'cure', I ain't think about any consequences, I just poured the liquid into my mouth without a thought.#speaker: Fang #portrait: werewold_neutral #layout: right
            I didn't feel any different after, but the Wizard told me it would work, just needed some time.#speaker: Fang #portrait: werewolf_neutral #layout: right
            Month went by, and my cells were reconstructing themselves, but I was changin' too.#speaker: Fang #portrait: werewolf_neutral #layout: right
            I started growin' hair everywhere. An my teeth, they were sharper than my dog's. #speaker: Fang #portrait: werewolf_neutral #layout: right
            Didn't take me long to realize the wizard's 'cure' turned me into a werewolf...#speaker: Fang #portrait: werewolf_neutral #layout: right
             ...The one thing my ma hated more than anythin'. #speaker: Fang #portrait: werewolf_neutral #layout: right
            I ain't go back to her after that, seein' her face filled with hatred was the last thing I wanted. #speaker: Fang #portrait: werewolf_neutral #layout: right
            What did you do? #speaker: Player #portrait: player_neutral #layout: left
            Went my own way and made a hut in the forest, been livin' there for the past ten years. #speaker: Fang #portrait: werewolf_neutral #layout: right
            You stayed with the wizard after that? #speaker: Player #portrait: player_neutral #layout: left
            Gotta come back to the mansion durin' full moons though, I always lose control of myself. I ain't wanna hurt anyone. #speaker: Fang #portrait: werewolf_neutral #layout: right
            Was it an accident? The cure, I mean.#speaker: Player #portrait: player_neutral #layout: left
            Don't know, he apologized to me but since I been here, he always be in the cellar making new potions. #speaker: Fang #portrait: werewolf_neutral #layout: right
            I wouldn't put it past him to 'ave used me as an experiment.#speaker: Fang #portrait: werewolf_neutral #layout: right
            Thanks for telling me...this puts things into a new perspective for me. #speaker: Player #portrait: player_neutral #layout: left
            ~WereWolfSecret = true
            <b> You learned Fang's secret...This may be useful in the future. </b> #speaker: Player #portrait: player_neutral #layout: left
                    
            Don't thank me, it was just a warnin' about him. #speaker: Fang #portrait: werewolf_neutral #layout: right
            Ya' best go talk with the others now, no need to listen' about my past any longer.#speaker: Fang #portrait: werewolf_neutral #layout: right
            
    *[Yes]
        Yeah, that's me. What's your name? #speaker: Player #portrait: player_neutral #layout: left
        Name's Fang. #speaker: Fang #portrait: werewolf_neutral #layout: right
        So, I take it your familiar with the wizard then? #speaker: Fang #portrait: werewolf_neutral #layout: Right
        I was his apprentice a few years ago. #speaker: Player #portrait: player_neutral #layout: left
        Not anymore? You still look quite young. #speaker: Fang #portrait: werewolf_neutral #layout: Right
        **[I <i>am</i> young]
            The wizard didn't mentor me for long. #speaker: Player #portrait: player_neutral #layout: left
            What be the reason for that? #speaker: Fang #portrait: werewolf_neutral #layout: right
            I couldn't tell you the reason. #speaker: Player #portrait: player_neutral #layout: left
            I only assume he found something better to do. #speaker: Player #portrait: player_neutral #layout: left
            Ain't nothing new from the wizard I suppose. #speaker: Fang #portrait: werewolf_neutral #layout: right
            ***[What's that mean?]
                What do you mean by that? #speaker: Player #portrait: player_neutral #layout: left
                You ain't know yet? Nothin' you need to worry about then. #speaker: Fang #portrait: werewolf_neutral #layout: right
                ****[Please...]
                    Did the wizard do something? #speaker: Player #portrait: player_neutral #layout: left
                    I'd like to know if he did, I haven't been around for a while. #speaker: Player #portraitL player_neutral #layout: left
                    Alright las, I'll tell ya just...stop making that face at me. #speaker:Fang #portrait: werewolf_neutral #layout: right
                    I ain't always been like this, I used to be one them humans. #speaker: Fang #portrait: werewolf_neutral #layout: Right
                    It was a few years ago, I was wonderin' the woods 'round the mansion here. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    Wizard happened to be outside at the time, saw me and started talkin' to me. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    Talked my ear off, did he. Anyway, I was young and naive. I told him how I been wanerin' about lookin' for a cure. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    I'd been diagnosed with <i>Eclipses Mortem</i>. Was a disease that caused rapid degeneration of 'yer cells and led to organ failure. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    I was desperate because my ma woulda been all alone if I died. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    Wizard told me he'd help find a cure for me, and I agreed to stay in his mansion while he conducted some tests. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    ...If I'd known before what the outcome would be, I never would've agreed.#speaker: Fang #portrait: werewolf_neutral #layout: right
                    The wizard came ta me one day, tellin' me that he had finally made a cure. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    I ain't ever been more excited to hear something from that man's mouth.#speaker: Fang #portrait: werewolf_neutral #layout: right
                    When I heard the word 'cure', I ain't think about any consequences, I just poured the liquid into my mouth without a thought.#speaker: Fang #portrait: werewolf_neutral #layout: right
                    I didn't feel any different after, but the Wizard told me it would work, just needed some time.#speaker: Fang #portrait: werewolf_neutral #layout: right
                    Month went by, and my cells were reconstructing themselves, but I was changin' too.#speaker: Fang #portrait: werewolf_neutral #layout: right
                    I started growin' hair everywhere. An my teeth, they were sharper than my dog's. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    Didn't take me long to realize the wizard's 'cure' turned me into a werewolf...#speaker: Fang #portrait: werewolf_neutral #layout: right
                    ...The one thing my ma hated more than anythin'. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    I ain't go back to her after that, seein' her face filled with hatred was the last thing I wanted. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    What did you do? #speaker: Player #portrait: player_neutral #layout: left
                    Went my own way and made a hut in the forest, been livin' there for the past ten years. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    You stayed with the wizard after that? #speaker: Player #portrait: player_neutral #layout: left
                    Gotta come back to the mansion durin' full moons though, I always lose control of myself. I ain't wanna hurt anyone. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    Was it an accident? The cure, I mean.#speaker: Player #portrait: player_neutral #layout: left
                    Don't know, he apologized ta' me but since I been here, he always be in the cellar making new potions. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    I wouldn't put it past him to have used me as an experiment.#speaker: Fang #portrait: werewolf_neutral #layout: right
                    Thanks for telling me...this puts things into a new perspective for me. #speaker: Player #portrait: player_neutral #layout: left
                    ~WereWolfSecret = true
                    <b> You learned Fang's secret...This may be useful in the future. </b> #speaker: Player #portrait: player_neutral #layout: left
                    
                    
                    Don't thank me, it was just a warnin' about him. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    You oughta be meeting the other guests now, I'll see ya 'round later. #speaker: Fang #portrait: werewolf_neutral #layout: right
                    ****[Fine]
                        Did ya find another mentor? #speaker: Fang #portrait: werewolf_neutral #layout: right
                        *****[Yes]
                            I did.#speaker: Fang #portrait: werewolf_neutral #layout: right //////
                            She was...nice. Very different than the wizard. #speaker: Player #portrait: player_neutral #layout: left
                            Was she a good teacher then? #speaker: Fang #portrait: werewolf_neutral #layout: right
                            That would be an understatement. She was the best mentor out there. #speaker: Player #portrait: player_neutral #layout: left
                            Anyways, I don't like talking about her much. #speaker: Player #portrait: player_neutral #layout: left
                            
                        
                        
                        *****[No]
                            Don't let it get to ya, you seem knowledgable enough for a young witch. #speaker: Fang #portrait: werewolf_neutral #layout: right
                            Thanks...It means a lot to hear that. #speaker: Player #portrait: player_neutral #layout: left
                            I've been finding it hard to navigate around on my own. #speaker: Player #portrait: player_neutral #layout: left
                            Ya' know, I been livin' out in these woods for a while. If ya need help navigating the area, I can help ya. #speaker: Fang #portrait: werewolf_neutral #layout: right
                            ******[Really?]
                                Really? That would be great!　#speaker: Player #portrait: player_neutral #layout: left
                                'Course, can't leave a young kid to fend for themselves. #speaker: Player #portrait: player_neutral #layout: left
                                After this dinner thing is over, come find me near the mansion. #speaker: Fang #portrait: werewolf_neutral #layout: right
                            ******[I'm good]
                                Alright, you been gettin' 'round so far, I'm sure ya can do it for longer. #speaker: Fang #portrait: werewolf_neutral #layout: right
            ***[Defend the Wizard]
              Look, I don't have a right to question the reasoning behind his actions but I know he did it for good reasons.  #speaker: Player #portrait: player_neutral #layout: left
                ~werewolf_trustLevel -= 5
                <b><color=\#191919>[Fang didn't appreciate your response. Relationship level -5: current Relationship level: {werewolf_trustLevel} %]</color></b>#speaker: Fang #portrait: werewolf_neutral #layout: right
                How long did you work under the wizard again?  #speaker: Fang #portrait: werewolf_neutral #layout: right
                ****[One year]
                    I was his apprentice for a year, that's long enough for me to get to know him.  #speaker: Player #portrait: player_neutral #layout: left
                    ~werewolf_trustLevel -= 2
                    <b><color=\#191919>[Fang didn't appreciate your response. Relationship level {werewolf_trustLevel}: current Relationship level: {werewolf_trustLevel} %]</color></b>#speaker: Fang #portrait: werewolf_neutral #layout: right
                    Look, I been 'round the wizard for over ten years. I know exactly how he's like and I ain't need you tryin' to tell me otherwise.  #speaker: Fang #portrait: werewolf_neutral #layout: right
                ****[Does it matter?]
                    Whatever, ya wanna trust the wizard, go 'head. Ya the only one that be hurt in the end. #speaker: Fang #portrait: werewolf_neutral #layout: right
        **[Like a kid?]
            Are you trying to say I look like a kid? #speaker: Player #portrait: player_neutral #layout: left
            Calm down las, I ain't mean it like that. #speaker: Fang #portrait: werewolf_neutral #layout: right
            ***[Sorry]
                You're fine las, I didn't realize my words woulda been taken in a bad way. #speaker: Fang #portrait: werewolf_neutral #layout: right
                I only meant that you look younger than most the witches I seen around the woods. They're all grey haired and old, but ya don't have any them. features #speaker: Fang #portrait: werewolf_neutral #layout: right
                Yes, I'm still somewhat of a new witch. I only started learning five years ago. #speaker: Player #portrait: player_neutral #layout: left
                Ya seem quite strong for a new witch, ya outta be proud of that. #speaker: Fang #portrait: werewolf_neutral #layout: right
                Thank you! I've been doubting myself often, so that means a lot. #speaker: Player #portrait: player_neutral #layout: left
                'Course las. If you want I could introduce ya to the witches in the woods I stay in? #speaker: Fang #portrait: werewolf_neutral #layout: right
                Would they help me? #speaker: Player #portrait: player_neutral #layout: left
                They be wicked ladies but I think they would help ya since ya be one of 'em. #speaker: Fang #portrait: werewolf_neutral #layout: right
                That would be nice, I appreciate your help. #speaker: Player #portrait: player_neutral #layout: left
                Ain't a problem las, I'll introduce ya after this dinner's over. #speaker: Fang #portrait: werewolf_neutral #layout: right
            ***[Didn't you?]
                I'm sure you didn't. #speaker: Player #portrait: player_neutral #layout: left
                Alright las, ya ain't need to act like this. #speaker: Fang #portrait: werewolf_neutral #layout: right
                It's insulting to be called a child. #speaker: Player #portrait: player_neutral #layout: left
                Look, no one called ya anything but ya sure are actin' like a kid now. #speaker: Fang #portrait: werewolf_neutral #layout: right
                See! You did compare me to a kid! #speaker: Player #portrait: player_neutral #layout: left
                Talkin' to you is the same as talkin' to a brick wall. #speaker: Fang #portrait: werewolf_neutral #layout: right
                I ain't gonna sit here an listen to ya argue, go do that with one of the other guests. #speaker: Fang #portrait: werewolf_neutral #layout: right
                ~werewolf_trustLevel -= 2
                <b> [Trust level -2] </b> #speaker: Fang #portrait: werewolf_neutral #layout: right
                <b> [Current trust with this character: {werewolf_trustLevel}%] </b>#speaker: Fang #portrait: werewolf_neutral #layout: right
                <b> [Fang thinks you're acting a bit immature.] </b> #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    -...
->END


===Unknown===
Ya wouldn't happen to be that witch the wizard talked about now would ya? #speaker: Werewolf #portrait: werewolf_neutral #layout: right

The one he mentored a few years back? #speaker: Player #portrait: player_neutral #layout: left

That's right. That you ain't it? #speaker: werewolf #portrait: werewolf_neutral #layout: right

Yeah, that would be me! #speaker: Player #portrait: player_neutral #layout: left

What's your name? #speaker: Player #portrait: player_neutral #layout: left

Name's Fang. #speaker: Fang #portrait: werewolf_neutral #layout: right

I take it ya here for the same reason as I am? #speaker: Fang #portrait: werewolf_neutral #layout: right

I hadn't heard from the wizard in awhile. I thought this dinner he invited me to might prove to be interesting. #speaker: Player #portrait: player_neutral #layout: left

Though, I wasn't aware others were invited as well. #speaker: Player #portrait: player_neutral #layout: left

That be just like the wizard. Always doing things and leavin' out the details. #speaker: Fang #portrait: werewolf_neutral #layout: right

That's true, I guess I should've expected something like this. #speaker: Player #portrait: player_neutral #layout: left

How long were ya with the wizard? #speaker: Fang #portrait: werewolf_neutral #layout: right

*[Not long at all]
    Not very long. I couldn't tell you the exact time but I remember it was short. #speaker: Player #portrait: player_neutral #layout: left
    
    There a reason for that? #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    Other than the wizard prioritizing everything other than me? #speaker: Player #portrait: player_neutral #layout: left
    
    That ain't too suprising to hear. The wizard's always been quick to forget about his new projects. #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    You've been around him long enough to know that? #speaker: Player #portrait: player_neutral #layout: left
    
    Long enough is an understatement. I've been around him for as long as I can remember. #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    How have you managed to put up with him for so long? #speaker: Player #portrait: player_neutral #layout: left
    
    It wasn't much of a choice. #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    Can you tell me about why you stayed? #speaker: Player #portrait: player_neutral #layout: left
    
    Maybe another time las. It's not the prettiest story. #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    You promise? #speaker: Player #portrait: player_neutral #layout: left
    
    Sure kid, I promise. #speaker: Fang #portrait: werewolf_neutral #layout: right

*[Does it matter?]
    Does it really matter much? #speaker: Player #portrait: player_neutral #layout: left
    
    I guess it don't matter much. I just thought it would it would help me get to know ya. #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    There's plenty of things to talk about that <i>don't</i> involve my time with the wizard. #speaker: Player #portrait: player_neutral #layout: left
    
    ~werewolf_trustLevel -= 2
    <b> [Trust level -2] </b> #speaker: Fang #portrait: werewolf_neutral #layout: right
    <b> [Current trust level with this character: {werewolf_trustLevel}%] </b> #speaker: Fang #portrait: werewolf_neutral #layout: right
    <b> [Fang thinks your reluctance to talk about your time with the wizard is a little weird.] </b> #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    Alright las. No questions about the wizard, got it. #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    How long ya been a witch for then? #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    ...My entire life? #speaker: Player #portrait: player_neutral #layout: left
    
    I was basically born into it, my whole family came from a long line of witches. #speaker: Player #portrait: player_neutral #layout: left
    
    I guess I outta be more specific then. How long you been out on ya own learning? #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    A couple years... #speaker: Player #portrait: player_neutral #layout: left
    
    I left my family five or so years ago, then the wizard offered the chance to work under him for awhile. #speaker: Player #portrait: player_neutral #layout: left
    
    I couldn't tell you exactly when I started working with the wizard, but after I left I went exploring on my own again. #speaker: Player #portrait: player_neutral #layout: left
    So ya been on ya own ever since leaving? #speaker: Fang #portrait: werewolf_neutral #layout: right
    
    **[Lie]
        Yeah, I've just been passing through most places. #speaker: Player #portrait: player_neutral #layout: left
        
        Ya don't got anywhere to stay? #speaker: Fang #portrait: werewolf_neutral #layout: right
        
        No, and I prefer it that way. I like being a wanderer, it's exciting! #speaker: Player #portrait: player_neutral #layout: left
        
        Whatever ya say las. #speaker: Fang #portrait: werewolf_neutral #layout right
        
        If ya ever need a place to stay, I got a small hut out in them woods. It's not much, but it's got a roof. #speaker: Fang #portrait: werewolf_neutral #layout: right
        
        I'll be fine, but thanks for the offer. #speaker: Player #portrait: player_neutral #layout: left
    
    **[Tell the truth]
        No, I met a witch out in one of the towns I passed through. #speaker: Player #portrait: player_neutral #layout: left
        
        She was looking over me for awhile. #speaker: Player #portrait: player_neutral #layout: left
        
        Did...#speaker: Fang #portrait: werewolf_neutral #layout: right
        
        ...did somethin' happen to her? #speaker: Fang #portrait: werewolf_neutral #layout: right
        
        Was it that obvious? #speaker: Player #portrait: player_neutral #layout: left
        
        Well, I been in ya situation before so... #speaker: Fang #portrait: werewolf_neutral #layout: right
        
        ...You really have? #speaker: Player #portrait: player_neutral #layout: left
        
        That I have, but we're talkin' about ya right now. Maybe I can tell ya about it later. #speaker: Fang #portrait: werewolf_neutral #layout: right
        
        Fine. #speaker: Player #portrait: player_neutral #layout: left
        
        Yes, she passed away around a year ago. So I have been on my own since then. #speaker: player #portrait: player_neutral #layout: left
        
        That must've been hard las. #speaker: Fang #portrait: werewolf_neutral #layout: right
        
        I guess. I was used to it before so it wasn't as difficult to go back to being on my own. #speaker: Player #portrait: player_neutral #layout: left
        
        That's a story for another time though. #speaker: Player #portrait: player_neutral #layout: left
        

-...

Alright. It's been nice talkin' to ya but it looks like dinner is startin' soon so ya best be off. #speaker: Fang #portrait: werewolf_neutral #layout: right
~isWereWolfDialogueComplete = true

->END

===Empty===

{~Ya ought to get going las.|Make sure not to make the vampire mad if ya see him| There's nothing else to talk about right now.} #speaker: Fang #portrait: werewolf_neutral #layout: right

->END