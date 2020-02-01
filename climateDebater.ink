INCLUDE functions.ink
# author: many people
# title: Climate Debater
# version: 0.01



VAR GROUPA = 0  //  ~ GROUPA += 1  ~ GROUPA -= 1 
VAR GROUPB = 0  //  ~ GROUPB += 1  ~ GROUPB -= 1 
VAR GROUPC = 0  //  ~ GROUPC += 1  ~ GROUPC -= 1 
VAR GROUPD = 0  //  ~ GROUPD += 1  ~ GROUPD -= 1 
VAR GROUPE = 0  //  ~ GROUPE += 1  ~ GROUPE -= 1 
VAR GROUPF = 0  //  ~ GROUPF += 1  ~ GROUPF -= 1 

-> start -> profiling -> reachout 

=== start ===

Welcome to the Climage Debater v0.01. 

Created over a game jam weekend, CD's aim is to transmit useful information about the climate debate.
This software - which is open source (https://github.com/alpapan/climatedebater) - does not store or transmit any data to anyone. 
It is created for your amusement and hopefully you will find useful information as well.
It has no warranty or liability, implied or otherwise.

During this game you will first be asked a few questions to identify your attitudes towards the debate.

Then if you belong to one or two of the groups we focused during the jam, you will be able to explore different narratives and identify how you can help yourself to other information.

->->

=== profiling

* Let's start!

->greta -> bluemountainbushfire -> starvinglivestock -> activism -> coalpower

+ Exit game ->->

=== greta
# CLEAR
What do you think about this image?
  #  IMAGE: images/greta.jpg
* Role model for all kids
  ~ GROUPA += 1
  ~ GROUPB += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1
* Snowflake
  ~ GROUPF += 1
  ~ GROUPA -= 1
  ~ GROUPB -= 1
* Who is that?
  ~ GROUPD += 1
  ~ GROUPE += 1
* Rebel who should leave these things for adults
  ~ GROUPD += 1
* I don't know, I want to learn more
  ~ GROUPC += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1

- 	->->




=== bluemountainbushfire
# CLEAR
What do you think about this image?
 #   IMAGE: images/bmbushfire.jpg
* Tragedy
  ~ GROUPB += 1
* Just another bushfire
  ~ GROUPD += 1
  ~ GROUPE += 1
  ~ GROUPF += 1
* Shameful
  ~ GROUPA += 1
  ~ GROUPB += 1
* More funding for RFS
  ~ GROUPB += 1
  ~ GROUPD += 1
  ~ GROUPE -= 1
  ~ GROUPA -= 1
* I don't know, I want to learn more
  ~ GROUPC += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1

- 	->->


=== starvinglivestock
# CLEAR
What do you think about the following image?
#   IMAGE: images/sheepgrazing.jpg
* There goes our agriculture
  ~ GROUPB += 1
* Nothing money can't solve
  ~ GROUPD += 1
  ~ GROUPF += 1
* What happened?!
  ~ GROUPC += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1

- 	->->

=== activism
# CLEAR
What do you think about this image?
 #  IMAGE: images/activism.jpg
* Good for them
  ~ GROUPB += 1
* How do I sign up?
  ~ GROUPA += 1
* More self promotion!
  ~ GROUPF += 1
* Government should pay them
  ~ GROUPB += 1
  ~ GROUPD += 1
* Drop in the ocean
  ~ GROUPE += 1
  ~ GROUPF += 1
* I don't know, I want to learn more
  ~ GROUPC += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1

- 	->->


=== coalpower
# CLEAR
What do you think about this image?
#   IMAGE: images/coalpower.jpg
* Government should invest in renewables
  ~ GROUPB += 1
  ~ GROUPE -= 1
* I will switch to green energy
  ~ GROUPA += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1
* We need cheap energy
  ~ GROUPF += 1
  ~ GROUPB -= 1
  ~ GROUPC -= 1
  ~ GROUPE -= 1
* Expensive, polluting, but necessary right now
  ~ GROUPC += 1
  ~ GROUPD += 1
  ~ GROUPE -= 1
  ~ GROUPB -= 1
* I don't know, I want to learn more
  ~ GROUPC += 1
  ~ GROUPE -= 1
  ~ GROUPF -= 1

- 	->->

=== reachout

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
