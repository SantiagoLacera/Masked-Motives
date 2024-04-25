INCLUDE globals.ink


{vampireActIIComplete == false && werewolfActIIComplete == false && robotActIIComplete == false : ->main | ->Empty}


===main===
Sephiroth? #speaker: Player #portrait: player_neutral #layout: left
What are you even doing up there? #speaker: Player #portrait: player_neutral #layout: left
Fool, why else. #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
I'm scoping out the area. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Well you look kinda scary up there.#speaker:Player #portrait: player_neutral #layout: left
You're already like six feet on your own. Now you're like eight when you're on that hill! #speaker: Player #portrait: player_neutral #layout: left
Quiet. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
What do you need? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
*[Ask to work together]
    I thought we could work together. #speaker: Player #portrait: player_neutral #layout: left
    Why do you want to work with me? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    I haven't been the most forthcoming. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    **[Be honest]
        No, you haven't. #speaker: Player #portrait: player_neutral #layout: left
        That's actually why I thought it would be best to work with you over the others. #speaker: Player #portrait: player_neutral #layout: left
        If needs be, you won't hesitate to say something. #speaker: Player #portrait: player_neutral #layout: left
        Even if it's harsh. #speaker: Player #portrait; player_neutral #layout: left
        So let me get this straight. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        The reason <i>you</i> want to work with <i>me</i> is because I'm blunt. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Exactly! #speaker: Player #portrait: player_neutral #layout: left
        I mean, isn't it smart? #speaker: Player #portrait: player_neutral #layout: left
        Oddly enough, yes. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Alright, at least you were honest about why. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        So...does that mean we can work together? #speaker: Player #portrait: player_neutral #layout: left
        Right now, yes. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Great! Let's get to looking then! #speaker: player #portrait: player_neutral #layout: left
        ~workWithVampireActII = true
    **[Lie about the reason]
         The others already seemed to be working together. #speaker: Player #portrait: player_neutral #layout: left
         And you were alone, so I decided to try my luck with you. #speaker: Player #portrait: player_neutral #layout: left
         You're lucky I don't think you're too annoying. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
         That's supposed to be good, right... #speaker: Player #portrait: player_neutral #layout: left
         Obviously. If you were too annoying then I would just ignore you and leave you to figure it out on your own. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
         Wait... #speaker: Player #portrait: player_neutral #layout: left
         You'll actually work with me? #speaker: Player #Portrait: player_neutral #layout: left
         You thought I would say otherwise? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
         Yes! #speaker: Player #portrait: player_neutral #layout: left
         Anyways, it doesn't matter. Let's just go...find things. #speaker: player #portrait: player_neutral #layout: left
         We've already been in this mansion for longer than I planned to be. #speaker: Player #portrait: player_neutral ##layout: left
         ~workWithVampireActII = true

*[Tell him about the item you saw]
    I think I saw something behind those trees over there...#speaker: Player #portrait: player_neutral #layout: left 
    And you're telling me...because? #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
    ...I can't tell what it is. #speaker: Player #portrait: player_neutral #layout: left 
    Where is it? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    To your right. #speaker: Player #portrait: player_neutral #layout: left
    Are you talking about the axe? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Well, now that you said it...it does look like an axe. #speaker: Player #portrait: player_neutral #layout: left
    I'm going to go look at that! #speaker: Player #portrati: player_neutral #layout: left
    Oh don't go picking that up- #speaker: Sephiroth #portrait: vampire_neutral #layout: right

-...#speaker: Player #portrait: player_neutral #layout: left
~vampireActIIComplete = true
->END

===Empty===
{~I've never been a fan of the cold.|I wonder what the others are doing...|I didn't even know the wizard had land out here} #speaker: Sephiroth #portrait: vampire_neutral #layout: right
->END