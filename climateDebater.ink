INCLUDE functions.ink
INCLUDE profile.ink
INCLUDE denialmyths.ink
INCLUDE helping.ink
INCLUDE positives.ink
INCLUDE consequences.ink


# author: Alexie Papanicolaou, Elisa Stefaniak, Arron Flynn, Alex Turnbull, Silvarilon
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

It's a prototype with still much work to be done!

During this game you will first be asked a few questions to identify your attitudes towards the debate.

Then if you belong to one of the groups we focused during the jam, you will be able to explore different narratives and find out how you can help yourself to other information.

* Who created this?
    Created by unpaid volunteers over a game jam weekend, CD's aim is to transmit useful information about the climate debate in a novel way. We declare no financial conflicts of interest.
    ** Are you spying on me?
        This software - which is open source - does not store or transmit any data to anyone. #SOURCE:github.com/alpapan/climatedebater
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


=== score

Your (not scientific at all) score is A: {GROUPA}; B: {GROUPB}; C: {GROUPC}; D: {GROUPD}; E: {GROUPE}; F: {GROUPF}

Previous research has shown that most people can be placed into certain categories based on their attitude towards the climate change debate.
This game is taking a slightly different approach is identifying how well you belong to each of these groups:
A: People who take positive action to reduce their envirnomental footprint.
B: People who want change (but not ready/able to do it themselves).
C: People who are keen to learn more about topic.
D: People who want to maintain the status quo but may welcome government intervention.
E: People who are - for one reason or another - disengaged from the debate and do not want to be engaged.
F: People who are dismissive about climate change, often passionately so. This group is often keen to consider other viewpoints such as the benefits of having energy security.

-> DONE

=== exploration

# CLEAR
{ - !score:
 <- score
}


Explore the information about climate change:

+ {!denial.humanscanmakeit && !denial.co2risingnoimpact.done && !denial.globalwarmingisnatural.done && !denial.humanimpactissmall.done} Explore the myths of climate debate -> denial -> exploration
+ {!positive_outcomes.done} Explore the positive outcomes from climate action -> positive_outcomes  -> exploration
+ Explore how you can help yourself or people with actions -> help_people -> exploration
+ {!consequences.consider_consequences.done} Explore the likely consequences of climate heating -> consequences -> exploration
+ Play Myth or Fact! -> randommyth

- -> reachout


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

If you found a bug, have questions, or want to reach out submit an Issue on GitHub #SOURCE:github.com/alpapan/climatedebater/issues



+ Conclude 
    Thank you participating in this interactive narrative.
    If for any reason you are feeling depressed about this debate, please talk to someone or your GP.
    If it is a crisis, reach out to LifeLine on 13 11 14.
    -> END

+ Try again from the beginning.
    # RESTART
    -> END
    
->->
