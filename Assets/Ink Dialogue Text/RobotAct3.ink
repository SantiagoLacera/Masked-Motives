INCLUDE globals.ink

{robotActIIIComplete == false && vampireActIIIComplete == false && werewolfActIIIComplete == false: ->main |->Empty}


===main===
Hey, Cipher! #speaker: Player #portrait: player_neutral #layout: left 
Little witch. #speaker: Cipher #portrait: robot_neutral #layout: right
What is it? #speaker: Cipher #portrait: robot_neutral #layout: right
Have you seen anything suspicious around? #speaker: Player #portrait: player_neutral #layout: left
Like? #speaker: Cipher #portrait: robot_neutral #layout: right
You know, things like weapons or items that might be from the crime scene! #speaker: Player #portrait: player_neutral #layout: left
...There are some odd things on the ground over there. #speaker: Cipher #portrait: robot_neutral #layout: right
What? Where? #speaker: Player #portrait: player_neutral #layout: left
You don't see those items sticking out of the ground to the left? #speaker: Cipher #portrait: robot_neutral #layout: right
Your left or my left? #speaker: Player #portrait: player_neutral #layout: left
Yours. #speaker: Cipher #portrait: robot_neutral #layout: right
...The strawberries!? #speaker: Player #portrait: player_neutral #layout: left
Is that what they're called...? #speaker: Cipher #portrait: robot_neutral #layout: right
Yes! #speaker: Player #portrait: player_neutral #layout: left
And they're not suspicious! Or well, at least they <i>shouldn't</i> be. #speaker: Player #portrait: player_neutral #layout: left
I see...it appears I was mistaken on my assumption. #speaker: Cipher #portrait: robot_neutral #layout: right
Right...yeah. #speaker: Player #portrait: player_neutral #layout: left
*[Ask to work together]
    Anyways, maybe we should pair up for this. #speaker: Player #portrait: player_neutral #layout: left
    That would make this quicker. #speaker: Cipher #portrait: robot_neutral #layout: right
    Let's do it. #speaker: Cipher #portrait: robot_neutral #layout: left
    
    Okay, did you notice anything weird about the wizard when we saw him last? #speaker: Player #portrait: player_neutral #layout: left
    No, I did not. He appeared to look normal. #speaker: Cipher #portrait: robot_neutral #layout: right
    **[Ask about relationship with wizard]
        I know you're the wizard's assistant but did anything ever happen between you two? #speaker: Player #portrait: player_neutral #layout: left
        Like a falling out or something along those lines. #speaker: Player #portrait: player_neutral #layout: left
        No, I am not meant to share my emotions with my employer. #speaker: Cipher #portrait: robot_neutral #layout: right
        You weren't allowed to get upset with him or anything? #speaker: Player #portrait: player_neutral #layout: left
        Of course not. That was strictly forbidden. #speaker: Cipher #portrait: robot_neutral #layout: right
        ~robotSecret = true
        <b>[You learned something about Cipher that could be useful in the future.]</b> #speaker: Player #portrait: player_neutral #layout: left
        Right. #speaker: Player #portrait: player_neutral #layout: left
        Well let's start looking for clues. #speaker: Player #portrait: player_neutral #layout: left
        ~workWithRobotActIII = true
    **[Continue to look for clues]
        There's got to be something here then. #speaker: Player #portrait: player_neutral #layout: left
        We just need to look harder. #speaker: Player #portrait: player_neutral #layout: left
        What about those keys in the middle? #speaker: Cipher #portrait: robot_neutral #layout: right
        I didn't even notice those! #speaker: Player #portrait: player_neutral #layout: left
        You might be onto something, let's go check! #speaker: Player #portrait: player_neutral #layout: left
        ~workWithRobotActIII = true
    
*[Decide to work alone]
    Maybe look into actual items that could be used to harm, like swords and all of that. #speaker: Player #portrait: player_neutral #layout: left
    I will keep that in mind. #speaker: Cipher #portrait: robot_neutral #layout: right
    Good. I'm going to go look for some clues on my own. #speaker: Player #portrait: player_neutral #layout: left
    Maybe at least one of us will have some luck. #speaker: Player #portrait: player_neutral #layout: left
-... #speaker: Player #portrait: player_neutral #layout: left
~robotActIIIComplete = true
->END


===Empty===
{~Are you positive the strawberries aren't suspicious?|What are those things in the tree over there?|We must find out who did this!} #speaker: Cipher #portrait: robot_neutral #layout: right
->END



