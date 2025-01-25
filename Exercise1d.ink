/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night

-> introduction

== introduction ==
You have just arrived to your family's vacation villa in Fort Lauderdale, Florida. 
The date is July 6th, 2003.

While your parents unpack, you head to the beach.

* [Continue] -> seashore

== seashore ==
You are sitting on the beach.

It is { advance_time() }
{&The tide is high.|The tide is low.}

+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
You are further down the beach.

* {time == 1} [Pick up some seashells] -> shells
+ [Stroll back up the beach] -> seashore
+ [Jump in the water] -> water
+ [Play in the sand] -> sand

=== water ===
The water is so clear and so blue, it appears almost fake. The cool water nips at your skin as you begin to walk further out to sea. 
Might be warmer sometime later in the day.
+ [Return to land] -> beach2

=== sand ===
You sit down on a warm plot of sand near the shoreline.
+ [Build a castle] -> castle
+ [Dig a hole] -> hole
+ [Go back] -> beach2

== castle ==
You've erected a grand castle in the sand and enscribed your initials next to it.
You cock your head at the brutalistic structure and quickly realize your initials mean nothing because you are a nobody. No one would know it was you who built this sand castle.
Hm.
Perhaps you could become the next Banksy.
+ [Return to sand] -> sand

== hole ==
You've dug a pit in the sand with your bare hands, at least three feet wide and one foot deep.
You are proud of your hard work, but you wonder if someone will end up getting hurt falling into it.
+ [Return to sand] -> sand

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "morning."
        
        - time == 1:
            ~ return "noon."
        
        - time == 2:
            ~ return "night."
    
    }
    
    
        
    ~ return time
    
    
    
