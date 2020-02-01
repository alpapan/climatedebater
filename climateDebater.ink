INCLUDE functions.ink
INCLUDE profile.ink
INCLUDE denialmyths.ink
INCLUDE helping.ink
INCLUDE positives.ink

# author: many people
# title: Climate Debater
# version: 0.01

VAR GROUPA = 0  //  ~ GROUPA += 1  ~ GROUPA -= 1 
VAR GROUPB = 0  //  ~ GROUPB += 1  ~ GROUPB -= 1 
VAR GROUPC = 0  //  ~ GROUPC += 1  ~ GROUPC -= 1 
VAR GROUPD = 0  //  ~ GROUPD += 1  ~ GROUPD -= 1 
VAR GROUPE = 0  //  ~ GROUPE += 1  ~ GROUPE -= 1 
VAR GROUPF = 0  //  ~ GROUPF += 1  ~ GROUPF -= 1 

-> start

=== start ===

Welcome to the Climage Debater v0.01. 

During this game you will first be asked a few questions to identify your attitudes towards the debate.

Then if you belong to one of the groups we focused during the jam, you will be able to explore different narratives and find out how you can help yourself to other information.

* Who created this?
    Created over a game jam weekend, CD's aim is to transmit useful information about the climate debate.
    ** Are you spying on me?
        This software - which is open source (https:\/\/github.com/alpapan/climatedebater) - does not store or transmit any data to anyone. 
        It has no warranty or liability, implied or otherwise.
        It is created for your amusement and hopefully you will find useful information as well.
    ** Let's start! -> profiling
 * Let's start! -> profiling

-
 * Let's start! -> profiling


=== profiling

We're going to show you some images.
You may find some to be confronting, apologies but bear with us and try to choose the answer that is the closest to your initial thoughts .

* Ok!
->greta -> bluemountainbushfire -> starvinglivestock -> activism -> coalpower -> exploration 

=== exploration

# CLEAR
(Score A: {GROUPA}; B: {GROUPB}; C: {GROUPC}; D: {GROUPD}; E: {GROUPE}; F: {GROUPF};)

This will be written based on results of previous answers but for the time being select one

+ {!denial.humanscanmakeit} Explore the myths of climate debate -> denial -> exploration
+ {!positive_outcomes.done} Explore the positive outcomes from climate action -> positive_outcomes  -> exploration
+ Explore how you can help yourself or people with actions -> help_people -> exploration

- -> reachout


=== error

shouldn't be here
->END




=== help_people ===

# CLEAR

Yes, we're also worried about climate change.
There seems to be so many things that we would be doing but it is all overwhelming.
Where do we even start?

* Actually, I already do quite a bit but I want to help others do it too. How can I go about that?
-> helping_others

* Yes, it's bad and I'm not sure I know which things I should focus on.

-> enacting_change

* I don't really feel like I can do much. It's too overwhelming and I'm just one person!

-> climate_depression



=== reachout

# CLEAR
Thank you for trying out our game.

If you found a bug, have questions, or want to reach out:

\- Submit an Issue on GitHub (https:\/\/github.com/alpapan/climatedebater/issues)
\- Reply to our Tweet (https:\/\/twitter.com/alpapan/status/1221999954584989697)
\- Drop us a line (info@greenbluekats.com)

+ Conclude 
    Thank you participating in this interactive narrative.
    If for any reason you are feeling depressed about this debate, please talk to someone or your GP.
    If it is a crisis, reach out to LifeLine on 13 11 14.
    -> END

+ Try again from the beginning.
    # RESTART
    -> END
    
->->
