INCLUDE globals.ink

{vampire_trustLevel}% trust level.
...You are in a {describe_trust(vampire_trustLevel)} with Vampire.

===function describe_trust(x)===
{
    - x < 0:
        ~return "bad standing"
    - x == 0:
     ~ return "neutral standing"
    
    - x > 0 && x < 50:
        ~ return "decent standing"
    
    - x > 50 && x < 70:
        ~ return "good standing"
        
    - x > 70:
        ~return "perfect standing"
    
}