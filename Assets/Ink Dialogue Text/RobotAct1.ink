INCLUDE globals.ink

{robotActIComplete == false && vampireActIComplete == false && werewolfActIComplete == false: ->main | ->Empty}


===main===
... #speaker: Cipher #portrait: robot_neutral #layout: right
You. #speaker: Cipher #portrait: robot_neutral #layout: right
Yeah, me. #speaker: Player #portrait: player_neutral #layout: left
I wanted to ask you something. #speaker: Player #portrait: player_neutral #layout: left
What is it? #speaker: Cipher #portrait: robot_neutral #layout: right
Did you see anything suspicious when the wizard died? #speaker: Player #portrait: player_neutral #layout: left
...Why are you asking me? #speaker: Cipher #portrait: robot_neutral #layout: right
*[You're quick thinking]
    Is there a reason I wouldn't? #speaker: Player #portrait: player_neutral #layout: left
    You're a robot! They're known for having high intelligence. #speaker: Player #portrait: player_neutral #layout: left
    That is not correct. I have high intelligence, but some other robots are not even close to my level. #speaker: Cipher #portrait: robot_neutral #layout: right
    Oh, really? #speaker: Player #portrait: player_neutral #layout: left
    But <i>you're</i> still smart so I'd like to propose a deal. #speaker: Player #portrait: player_neutral #layout: left
    A deal...? #speaker: Cipher #portrait: robot_neutral #layout: right
    Work with me. #speaker: Player #portrait: player_neutral #layout: left
    Think about it this way. If we work together, we can solve the case quicker! #speaker: Player #portrait: player_neutral #layout: left
    Maybe so, but why would I want to work with you instead of the vampire or werewolf? #speaker: Cipher #portrait: robot_neutral #layout: right
    **[I'm honest]
        Between me and them, who are you more willing to believe in? #speaker: Player #portrait: player_neutral #layout: left
        I've been honest with you before, and you already kind of...know most things about me anyways. #speaker: Player #portrait: player_neutral #layout: left
        I've got nothing to hide. #speaker: Player #portrait: player_neutral #layout: left
        ...#speaker: Cipher #portrait: robot_neutral #layout: right
        I believe you are telling the truth. #speaker: Cipher #portrait: robot_neutral #layout: right
        What- #speaker: Player #portrait: player_neutral #layout: left
        Of course I am. I just told you I was. #speaker: player #portrait: player_neutral #layout: left
        Apologies. I had to verify that claim myself. #speaker: Cipher #portrait: robot_neutral #layout: right
        However, seeing as you look to be truthful, we can work together for now. #speaker: Cipher #portrait: robot_neutral #layout: right
        Alright! Have you seen anything suspicious in here then? #speaker: Player #portrait: player_neutral #layout: left
        Of course. I spotted it right away. #speaker: Cipher #portrait: robot_neutral #layout: right
        There is some object hidden behind that statue. It looks out of place. #speaker: Cipher #portrait: robot_neutral #layout: right
        Oh! Then we should go check it out, come on! #speaker: Player #portrait: player_neutral #layout: left
        ~workWithRobotActI = true
    **[They're working together]
        If you have eyes, you can see they're already working together. #speaker: Player #portrait: player_neutral #layout: left
        I don't think you'd fit in to that group they've got going on. #speaker: Player #portrait: player_neutral #layout: left
        Why not? #speaker: Cipher #portrait: robot_neutral #layout: right
        Well, you're not exactly...the easiest to work with. #speaker: Player #portrait: player_neutral #layout: left
        I fail to see how this is helping you convince me to work with you. #speaker: Cipher #portrait: robot_neutral #layout: right
        No! I just mean...their personalities are vastly different than yours! #speaker: Player #portrait: player_neutral #layout: left
        ...I suppose you are right. Those two are more...wild than me. #speaker: Cipher #portrait: robot_neutral #layout: right
        Yes! that's exactly what I mean. #speaker: Cipher #portrait: robot_neutral #layout: right
        I'm easier going, like you. I think we'd work great together. #speaker: Player #portrait: player_neutral #layout: left
        ...#speaker: Cipher #portrait: robot_neutral #layout: right
        ...Fine. #speaker: Cipher #portrait: robot_neutral #layout: right
        This arrangement will do for now. #speaker: Cipher #portrait: robot_neutral #layout: right
        Just follow me already, I think I saw something odd in that corner over there. #speaker: Cipher #portrait: robot_neutral #layout: right
        ~workWithRobotActI = true
    *[I like you!]
        What do you mean why? I like you! #speaker: Player #portrait: player_neutral #layout: left
        ...You like me? #speaker: Cipher #portrait: robot_neutral #layout: right
        **[Yes]
            Of course! #speaker: Player #portrait: player_neutral #layout: left
            You're crazy smart and cool! #speaker: Player #portrait: player_neutral #layout: left
            Well, that and you're straight to the point. #speaker: Player #portrait: player_neutral #layout: left
            Yes, that is the best way to speak. #speaker: Cipher #portrait: robot_neutral #layout: right
            I agree! So will you work with me then? #speaker: Player #portrait: player_neutral #layout: left
            It can just be for this room! #speaker: Player #portrait: player_neutral #layout: left
            I suppose it wouldn't hurt to share some clues...#speaker: Cipher #portrait: robot_neutral #layout: right
            Does that mean you already found some? #speaker: Player #portrait: player_neutral #layout: left
            Yes. When we came into this room, I noticed something hidden behind one of those statues over there. #speaker: Cipher #portrait: robot_neutral #layout: right
            I didn't want to bring attention to it too early and have someone take it. #speaker: Cipher #portrait: robot_neutral #layout: right
            I understand. #speaker: Player #portrait: player_neutral #layout: left
            Can we go look now? #speaker: Player #portrait: player_neutral #layout: left
            That would be the most ideal situation. #speaker: Cipher #portrait: robot_neutral #layout: right
            Okay, let's go then! #speaker: Player #portrait: player_neutral #layout: left
            ~workWithRobotActI = true
            
        **[No]
            No, I was just trying to get your attention. #speaker: Player #portrait: player_neutral #layout: left
            Were you now? #speaker: Cipher #portrait: robot_neutral #layout: right
            Well you got it. #speaker: Cipher #portrait: robot_neutral #layout: right
            However, I don't appreciate this method of trying to work with me. #speaker: Cipher #portrait: robot_neutral #layout: right
            I think it would be better if you found some clues on your own for now. #speaker: Cipher #portrait: robot_neutral #layout: right
        

-... #speaker: Player #portrait: player_neutral #layout: left
~robotActIComplete = true
->END


===Empty===
{~Have you found any more clues?|I think there is something hidden over there...} #speaker:Cipher #portrait: robot_neutral #layout: right
->END