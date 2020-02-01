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

* Let's start!
->greta -> bluemountainbushfire -> starvinglivestock -> activism -> coalpower
 -> exploration 

=== exploration

# CLEAR
(Score A: {GROUPA}; B: {GROUPB}; C: {GROUPC}; D: {GROUPD}; E: {GROUPE}; F: {GROUPF};)

THis will be written to automatically redirect for the time being select one

+ Explore the myths of climate debate -> denial -> exploration
+ Explore the positive outcomes from climate action -> positive_outcomes  -> exploration
+ Explore how you can help yourself or people with actions -> help_people -> exploration

- -> reachout



=== denial

Let's explore some opinions around the climate change debate. 

* CO2 is not actually increasing. ->co2notrising->
* CO2 increasing has little impact on climate -> co2risingnoimpact->

- ->->


= co2notrising
  Fringe case. 
  Show Mauna Loa observatory data
  There are companies that sell industrial equipment for this and they are very precise and Swiss and…. On youtube!  
  // <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/ONtHGdP9mow" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  You can even buy a sensor for your fishtank 
    // <iframe width="560" height="315" src="https://www.youtube-nocookie.com/embed/v=An_A2XnI6IQ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  Long story short, there’s no magic here: we can measure this using home aquarium kit and the numbers do not lie. 
  ** Well, CO2 may be rising but it has no <i>real</i> impact on the climate -> co2risingnoimpact


= co2risingnoimpact
  Land temperature data evidence for warming
  Ocean data - takes a lot more energy to heat up an ocean than air (how much does swimming pool heating cost versus aircon… a lot)
  We know this from first principles - more CO2 causes more energy absorbtion of emitted UV (maybe get a youtube with Tim Schmidt? If not maybe this: https://www.youtube.com/watch?v=sTvqIijqvTg)
   (Could maybe have a detour to naked planet models for more nerdy / numerate types?) 
   ** Even if there is warming, it is due to natural causes -> globalwarmingisnatural
   ** Ok, I see now -> exploration

= globalwarmingisnatural
    This is a bit like a murder mystery. Who are the suspects? 
    Volcanos: no evidence of any change here. We would notice. https://www.theguardian.com/environment/2019/may/30/humans-and-volcanoes-caused-nearly-all-of-global-heating-in-past-140-years
    Oceans and biosphere combusting more (maybe, but bushfires and permafrost melt seem to be driven by warming, not vice versa plus why all the warming so far when we’ve only just seen the fires pick up recently?) 
    Slowdown of sedimentary rock formation: Once again, no evidence. Ruled out plus its too damn slow to explain rapid change. https://earthobservatory.nasa.gov/features/CarbonCycle/page2.php
    Sunspots / changes in solar output: We measure this and it can’t explain the level of radiative forcing and temperature change. https://climate.nasa.gov/blog/2910/what-is-the-suns-role-in-climate-change/
    So, if its not natural it must be us. Moving Gigatons of material around isn’t something you can do sneakily - its billions of tons. 
    Good video here https://youtu.be/sKDWW9WlPSc 
   ** Well, actually even if the warming cannot be explained by natural causes, the human impact is small, and the impact of continued greenhouse gas emissions will be minor. -> humanimpactissmall
   ** Ok, I see now -> exploration


= humanimpactissmall

The warming we have experienced thus far is small and yet in Australia we are experiencing:
Drought / Aus specific stuff https://www.youtube.com/watch?v=jIy0t5P0CUQ
Extreme temperatures
Declining agricultural production
Heat stress
Increased costs for households from air conditioning, mitigating impacts of fires, floods, higher food costs. 
Good video https://www.youtube.com/watch?v=KeX7x5NtNFg
Remember - this is for \~1 degree so far and business as usual cases now indicate 3C is likely. If you had 5 drinks at the pub and felt a bit ill then 15 probably isn’t a good idea. This gets down to another problem: the impacts are not linear. Just like with drinking, 1 drink is fine, 3 is not ok to drive and 30 will probably kill you. We can’t assume that this is going to be a smooth or predictable process as we push it further and further. [maybe joke about calling a cab here - just seems most people eat and drink so these are the most accessible analogies]
    ** Whether or not the changes are going to be good for us, humans are very adept at adapting to changes; besides, it's too late to do anything about it, and/or a technological fix is bound to come along when we really need it -> humanscanmakeit
    ** Ok, I see now -> exploration
 

= humanscanmakeit
Two things:
The fix has come along. We have cheap renewables and can transition. We can afford it [link back to all the benefits of climate mitigation elsewhere on the site] https://www.youtube.com/watch?v=Jc4wDL16-hU. Why not do it now? Its not like interest rates are high or we can’t afford it. 
“Humans are adept at adapting”: this is like a 37yo with dad bod saying “hold my beer while I hit the half pipe” - we literally have no idea how this will pan out because we have not seen anything like it before. We do not have any prior examples of humans managing major climate change because it hasn’t happened. [link to Jared Diamond / fossil record data talks - will dig some up]
   ** Nope, this is giberrish, let's see what else you have to say
   ~ GROUPF += 1
   ->  exploration
   ** Nope, I'm not convinced, I'll have to read more but in meantime let's agree to disagree
   ~ GROUPC += 1
   ~ GROUPD += 1
   ->  exploration
   ** Ok, I see now -> exploration
  
  

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

=== helping_others ===
# CLEAR

Some text

- ->->

=== enacting_change ===
# CLEAR

something

- ->->

=== climate_depression ===
# CLEAR
something again

- ->->
1 >

2 >

3 >

So you considered recycling and reusing and cut down your electricity usage but it didn't do anything right?

You go outside and there's trash on the ground and a traffic congestion outside of your window.

The internet tells you you should turn vegeterian, or better yet vegan, to ride your bicycle everywhere,

to donate to environmental charities. But, you like meat and veggie meals are bland, you work too far

to cycle and there is no train line and money is scarce.


=== positive_outcomes

// the following is for groups C-F

{ The debate around climate change is often negative or framed as one team versus another. | }
{ Another way to look at it, is to consider what are the direct benefits for adopting some of the policies supported by climate scientists even if the climate never changes. | }
{ For example, we can consider the benefits for reducing pollution, producing and using energy more efficiently, making the economy more efficient and self-reliant, or even guarding our health and that of our family. | What else shall we explore? | What would you like to consider next? | What else shall we explore? | -> reachout }

* Actually, I do care about pollution -> pollution->positive_outcomes
* Having a robust economy is always important, let's explore this! -> economy->positive_outcomes
* Let's do consider energy for a moment -> energy->positive_outcomes
* I do want to learn about health -> health->positive_outcomes
* (done) I'm good, thanks -> positive_outcomes

= pollution
- ->->

= economy
-  ->->

= energy
- ->->

= health

One of the greatest health concerns scientists have with a changing climate is air pollution. So addressing this wi....

As bush fires become a common occurrence, so too will looming clouds of smoke over Australian city skylines. Converting some of the most liveable cities in the world to places whose air quality is on par with the smog covered and crowded city of New Dehli, India. But what exactly are the health effects of continually breathing in smoke, and what can we do to protect ourselves?

Similar to the smoke that comes from a car exhaust, bush fire smoke not only contains carbon dioxide, carbon monoxide and nitrogen gases, but also is full of unburnt microscopic particles 1/30th the size of a human hair.

Often labelled as PM2.5 or soot, their small size lets them easily enter your airways, getting stuck deep in your lungs and entering your bloodstream. Because of this the current belief is that there is no safe level of PM2.5 exposure, with side effects ranging from slight difficulty breathing to long term cardiovascular and repertory issues severely reducing the quality and length of life.

These issues are not too prevalent if smoke and smog levels are kept to a minimum, which can be done by reducing our reliance on petrol and coal, but if the levels of smoke seen by Sydney, Melbourne and Canberra become common place, more stress will be placed on the already packed medical system.


- ->->

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
* Organisations should support actions like these
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

-
-> DONE

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
