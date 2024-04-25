INCLUDE globals.ink

{vampireActIComplete == false && werewolfActIComplete == false && robotActIComplete == false: -> main | ->Empty}



===main===

... #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Oh, it's you. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
Sephiroth! I've been looking for you. #speaker: Player #portrait: player_neutral #layout: left
Have you found any clues as to who did this? #speaker: Player #portrait: player_neutral #layout: left
... #speaker: Sephiroth #portrait: vampire_neutral #layout: right
What makes you think I would share any of my findings with you? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
So I'm guessing you <i>didn't</i> find anything then, huh? #speaker: Player #portrait: player_neutral #layout: left
No, I did not. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
But the point still stands that I wouldn't share it with you had I found something out. #speaker: Sephiroth #portrait: vampire_neutral #layout: right

Right. #speaker: Player #portrait: player_neutral #layout: left
You are aware talking with me won't kill you, aren't you? #speaker: Player #portrait: player_neutral #layout: left

And you do realize that someone already died tonight, don't you? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
*[Play coy]
    Of course! Isn't that the reason we should work together to bring down whoever did it? #speaker: Player #portrait: player_neutral #layout: left
    There are only four guests who are still alive. How am I meant to know that you're not the killer? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Sephiroth! #speaker: Player #portrait: player_neutral #layout: left
    I would never do anything like that! #speaker: Player #portrait: player_neutral #layout: left
    Do you expect me to take something as simple as your word? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    ... #speaker: Player #portrait: player_neutral #layout: left
    What do I need to do then? #speaker: Player #portrait: player_neutral #layout: left
    I didn't expect you to actually agree- #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Why don't you tell me something. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Tell you something...#speaker:Player #portrait: player_neutral #layout: left
    Like what? #speaker: Player #portrait: player_neutral #layout: left
    
    What was the wizard like around you? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    **[Be honest]
    Well...I guess he was strict? #speaker: Player #portrait: player_neutral #layout: left
    ...Really? That's all you've got? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Hey it's been awhile! It's not my fault if my brain doesn't remember right away. #speaker: Player #portrait: player_neutral #layout: left
    The wizard was nice, depending on the day. #speaker: Player #portrait: player_neutral #layout: left
    He was pretty busy, so there were times when he didn't pay too much attention to me. #speaker: Player #portrait: player_neutral #layout: left
    ... #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Must you really stare at me like that? I'm telling the truth! #speaker: Player #portrait: player_neutral #layout: left
    ...Alright. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    But! Only for this room. I think I would get sick of staying by your side this entire time. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    That's fine with me! #speaker: Player #portrait: player_neutral #layout: left
    Oh hey, speaking of...I think there's something over there! #speaker: Player #portrait: player_neutral #layout: left
    ...I don't see anything. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Turn your head that way! #speaker: Player #portrait: player_neutral #layout: left
    Look, behind that...cat statue thing! #speaker: Player #portrait: player_neutral #layout: left
    What even is that? It looks like a rock. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Did you really shout like that over a rock? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    No! It's uh- #speaker: Player #portrait: player_neutral #layout: left
    a bone! Or well, at least <i> I think </i> it is... #speaker: Player #portrait: player_neutral #layout: left
    Well then, we better go check it out. It might be something that could help us. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    ~workWithVampireActI = true
    
    **[Withold the truth]
        He was...eccentric. I'm sure you're aware of that already. #speaker: Player #portrait: player_neutral #layout: left
        Yes, I am. I asked how he was around you, not how he was as a person. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Right, well he was very forthcoming. #speaker: Player #portrait: player_neutral #layout: left
        The wizard gave me a lot of opportunities to learn. #speaker: Player #portrait: player_neutral #layout: left
        Did he?  #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        I hadn't seen him in over a decade. He used to be... more wild to say the least. I never thought he would have changed that much. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        He definitely still was a crazy guy though, wasn't he? #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
        Yeah, I don't thinkt that part of him would have ever changed. #speaker: Player #portrait: player_neutral #layout: left
        So...have I, you know, proved myself enough to you?  #speaker: Player #portrait: player_neutral #layout: left
        For now. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Only for this room though, alright? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Yeah, I understand. Now let's get to finding clues! #speaker: Player #portrait: player_neutral #layout: left
        ...I feel like I'll regret agreeing to this. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        No you won't. I'm a great partner! #speaker: Player #portrait: player_neutral #layout: left
        Actually...I think I see something over there. #speaker: Player #portrait: player_neutral #layout: left
        The cat statue? What importance would that have? #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
        No, look behind it. There's some sort of...white rock? #speaker: Player #portrait: player_neutral #layout: left
        A bone? #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
        Yes! Wow, you're so smart. #speaker: Player #portrait: player_neutral #layout: left
        It's common sense. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Yeah, yeah. I'm going to go check it out! #speaker: Player #portrait: player_neutral #layout: left
        ~workWithVampireActI = true
 

*[Turn it on him]
    Of course, but isn't is suspicious that you don't want to be around anyone? #speaker: Player #portrait: player_neutral #layout: left
    One of us has to be the killer. I know it's not me, and that leaves the three of you. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    You say that, but how can any of us trust that you aren't the killer? #speaker: Player #portrait: player_neutral #layout: left
    What, you want me to give you something to prove it? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Well yeah, but I doubt you have any evidence to help prove it right now. #speaker: Player #portrait: player_neutral #layout: left 
    No, I suppose I don't. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Why don't you at least tell me why you're here? #speaker: Player #portrait: player_neutral #layout: left
    Isn't it obvious? I'm here for the same reason everyone else came tonight. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    Are you? I don't know the reason everyone else came, but I came because he was my teacher! #speaker: Player #portrait: player_neutral #layout: left
    You're a vampire, and I <i> know</i> they're told by the council to stay out of affairs that don't concern them. #speaker: Player #portrait: player_neutral #layout: left
    Right. The council. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    You aren't wrong exactly. I have been told to stay out of others' affairs, especially the wizards. #speaker: Sephiroth #portrait: vampire_neutral #layout: right 
    That's the reason I came tonight. I haven't seen the wizard in over a decade. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    I've never been the most fond of him, but I've also never been called by him. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    I figured it was something important, so I came. Turns out, it was important. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
    **[Push the matter further]
        That's it? #speaker: Player #portrait: player_neutral #layout: left
        You haven't seen the wizard for over a decade and just decided to show up because he sent you...a dinner invitiation. #speaker: Player #portrait: player_neutral #layout: left
        Look, I already told you that he never called me over before. It was weird behavior from him. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        You're sure he never invited you over previously? #speaker: Player #portrait: player_neutral #layout: left
        I don't care to be questioned like this. I already told you what happened, there's nothing else to tell. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Fine. I'll take it if it's all you're going to tell me for now. #speaker: Player #portrait: player_neutral #layout: left
        Let's work together for now then. #speaker: Player #portrait: player_neutral #layout: left
        After you just grilled me...you want to work together? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        I mean, you gotta do what you've gotta do, right? #speaker: Player #portrait: player_neutral #layout: left
        You know, you're not exactly making this sound worthwhile. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Is it supposed to be? We're trying to find clues to figure out who the killer is. #speaker: Player #portrait: player_neutral #layout: left
        Okay, you got me there. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        I guess we can try to figure out some things together...for now at least. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Working with me isn't so bad...#speaker: Player #portrait: player_neutral #layout: left
        Oh, hey! Isn't that a bone sticking out from behind that statue? Isn't that an odd placement? #speaker: Player #portrait: player_neutral #layout: left
        Yes, it appears it <i> is</i> a bone. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        ...#speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Well then, go pick it up. You're the one who suggested we work together afterall. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Fine! #speaker: Player #portrait: player_neutral #layout: left
        ~workWithVampireActI = true
    **[Accept his words]
        ...That makes sense. #speaker: Player #portrait: player_neutral #layout: left
        Sorry for pushing you to give me an answer. #speaker: Player #portrait: player_neutral #layout: left
        A lot has happened tonight, and trust is hard to give out at the moment. #speaker: Player #portrait: player_neutral #layout: left
        I get it. I don't have anything against you so if you wanted, we could try to work together for now. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Sephiroth! Really? #speaker: Player #portrait: player_neutral #layout: left
        I never though you would voluntarily work with me. #speaker: Player #portrait: player_neutral #layout: left
        Yes, and I'm starting to see why I hadn't thought of it before. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Oh don't be like that. We can look for clues even faster now that we're working together! #speaker: Player #portrait: player_neutral #layout: left
        Hm, why don't we start with the one behind that statue? #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Huh? #speaker: Player #portrait: player_neutral #layout: left
        Can you not- #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        turn your head, and look over there. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        I don't see anything- #speaker: Player #portrait: player_neutral #layout: left
        Oh! Wait. The little white rock? #speaker: Player #portrait: player_neutral #layout: left
        ...White rock? That's a bone. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        Oh, yeah that actually makes more sense. #speaker: Player #portrait: player_neutral #layout: left
        Alright, come on and let's go check it out. #speaker: Sephiroth #portrait: vampire_neutral #layout: right
        ~workWithVampireActI = true
-...
~vampireActIComplete = true
->END



===Empty===
{~Come on, let's go check for clues.| Did you already look at the bone?| I don't think we have anymore to discuss right now.} #speaker: Sephiroth #portrait: vampire_neutral #layout: right
->END