INCLUDE On the street
INCLUDE Bingo
INCLUDE GP's office
INCLUDE Servo
INCLUDE Pub
INCLUDE Cleaners at Town Hall
INCLUDE Harold Lunch
INCLUDE lunch concludes
INCLUDE bingo start




// initial declaration of 'tribe' variables and values

VAR tribe_Alarmed = 0 
VAR tribe_Concerned = 0 
VAR tribe_Cautious = 0 
VAR tribe_Unengaged = 0 
VAR tribe_Doubtful = 0 
VAR tribe_Dissmissive = 0

// currency that can be used to purchase actions in the town that lead to activism, is gained by making towns folk like you and performing actions that the town likes
VAR town_sympathy = 0

//The opinion levels of certain people in the town, certain levels will enable options and other actions in the town.Low enough levels will impede progress. 

VAR olga_opinion = 0
VAR carol_opinion = 0
VAR harold_opinion = 0
VAR Jimmy_opinion = 0
VAR tom_opinion = 0

VAR character_is_vegetarian = false
VAR character_has_satchel = true

VAR climate_wording = "Climate Change"
           


    //  CLIMATE DEBATER
     


Welcome to Climate Debater. This is an interactive narrative game that will take you through the fictional world town of Crowshurst as we explore the debate surrounding {climate_wording}. You will make choices that influence the world that your character inhabits and your choices will have consequences. You can play the game with a fictional character or as yourself! Whatever you decide, Climate Debater does not store any information from you outside of the game and will delete it on you leaving the browser. 
//active voice is good
In the first section, you are asked some preliminary questions to identify what are your (or your character's views on {climate_wording}). This grouping determines the narrative branch you will be engaged with.
Being a prototype, we have developed only some sections of the game, namely the branch where the main character is a climate activist. Therefore, the game will funnel you in that group but our intent is to provide a lot more choice about that soon. 

    * Yes, let's get started! -> tribe_identification_questions

// i made this into a knot with = stitches
=== tribe_identification_questions ===

= tribe_identification_question_0

Should we be talking about Global warming, global heating, climate change, or a climate conspiracy?

// ALEX TO DO tribes
* Global warming sounds about right
  ~ climate_wording = "Global Warming"
* We're now in the global heating phase
  ~ climate_wording = "Global Heating"
* Climate change is neutral enough, I think
  ~ climate_wording = "Climate Change"
* Let's be honest and talk about the climate conspiracy
  ~ climate_wording = "the Climate Conspiracy"

- -> tribe_identification_question_1

= tribe_identification_question_1

How much do you think {climate_wording} will affect future generations?

    * In drastic and life altering ways. 
            ~ tribe_Alarmed = (tribe_Alarmed + 2)
            ~ tribe_Concerned++
    * It will affect them to a modest amount.
            ~ tribe_Concerned = (tribe_Concerned + 2)
            ~ tribe_Cautious++
    * A little bit. 
            ~ tribe_Cautious = (tribe_Cautious +2)
            ~ tribe_Unengaged++
    * No effect whatsoever.
            ~ tribe_Doubtful++
            ~ tribe_Dissmissive = (tribe_Dissmissive + 2)
    
    - -> tribe_identification_question_2
    
   
= tribe_identification_question_2

How important is the issue of {climate_wording} to you personally?
    
    * Extremly
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Very
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Somewhat
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Not at all 
    
    - -> tribe_identification_question_3
    
= tribe_identification_question_3

How worried are you about {climate_wording}?

    
    * Very
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Somewhat
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Not at all
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    - -> tribe_identification_question_4
    
= tribe_identification_question_4

How much do you think {climate_wording} will harm you personally?

    * A great deal
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * A moderate amount
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Only a little
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    * Not at personally
        ~ tribe_Alarmed = (tribe_Alarmed + 2)
    
    - -> Introduction_to_town
    
=== Introduction_to_town ===

The bus rattles and shudders as it tumbles along the dusty east road. The storm of dust kicked up by the wheels is visible in your peripheral vision [is the character overeducated?] lightly obscuring the recently logged fields of former woodland [how do we know it was former woodland? been there before]. Through the cracked windows of the bus you can smell the strong scent of tree sap and sawdust. //[i like that!] 

    * [Look around] The heat in the cramped bus is suffocating as you sneak a glance behind you at the old ladies fanning themselves with the latest invitation to bingo night at the local town hall, hosted graciously by Roger & Sons logging and supplies. //ok, that would be really hard to realise from a piece of paper being fanned
        
    * [Read through event pamphlet] You examine the pamphlet that you made last week for your upcoming visit to this town, hoping to hold an environmental awareness event at the town hall this weekend. You notice that your name is missing and make a note to fix it later. // good idea to include a name here. ink won't allow it.
    
    - As the tree stumps give way to the sprawl of acre wide houses, and the gradual rise of the town’s church spire, the welcome sign appears in all its battered glory [what would all the battered glory be? Character PoV!]. The town of Crowshurst is the last on a long trail of Global Warming awareness campaigns that you have been delivering across the country. You know this will be the hardest yet. 
    
    -> down_the_main_street
    
    === down_the_main_street ===
    
    As the bus trudles down the mainstreet you...
    
    * [Look around the town and try to orientate yourself]
        You see a big gothic cathedral in the centre of town. Directly across from it lies what looks like an old colonial building, which given its size and prominence you take to be the town hall. Down the road you spy a little school, and a country police station. Craning your neck back you also see what you imagine is the local hotel/pub and a Caltex sign at the end of town.
    
    * [Ask the man sitting next to you if he has directions]
    The man turns to you, his hands and clothes covered in white paint and says in an exhausted tone, "there ain't much here, you can basically find it all on the mainstreet, but if you go to the pub," his thumb points out the back of the bus at an old colonial style hotel, "Jimmy the bartender should be able to sort you out."
        
        **"Thanks for that, sorry you look exhausted.  I'll let you rest."
        
        **"Cheers mate."
        
        -- He shrugs his shoulders and starts to gather up his tools to get off the bus. 
        
    - Just before the bus pulls to a stop you notice at the western end of town is what looks like a GP [what GPs look like?], and brighter, bigger and busier than all the rest is the headquarters of Roger & Sons [we could have a choice here that allows player to learn what R&S is, maybe even go into a substory in their mind a la Disco Elysium => ALEXIE TODO]. From the gated driveway to the warehouse comes truck after truck of recently felled trees in all kinds of forms, from raw lumber to cut timber.
    
    
    * [Look though your satchel bag]
    As you check the contents of your bag you find the letter from the Crowshurst GP, 
        ** [read through it]
        It addresses your environmental advocacy group and asks that they send someone to help him promote awareness of Global Warming in the town. It lists his address and requests whoever they send him visit him on arrival. 
        **[ignore it]
        You remember that the GP was the one looking for an environmental advocate from your group to come to Crowshurst to help promote awareness of {climate_wording}. You find the letter with the advice to visit him on arrival to the town. 
    
    -The bus creaks to a halt outside a little covered bus stop; who's now faded grey appearance you can presume is was once blue. 
    
    -> getting_off_the_bus
    
    
    === getting_off_the_bus ===
    
    When the bus driver pulls the lever and the bus doors crack open everyone jumps up and begins to push eagerly for the exist, desperate to escape the crowded mobile sauna.
    
    * [Join the rush]
    
    Tired of sitting and waiting in this terrible heat you jump up with all the rest and join the push to get out of the bus. 
    
        ** [Push aggressively]
            -> agressive_push -> character_introduction
        ** [Go with the flow]
            -> go_with_the_flow ->  character_introduction

        
    * [Wait patiently]
    As the crowd descends from the bus you take your time, patiently waiting for others to get off. You walk to the front of the bus heading for the exit and notice the bus driver's balding head with tuffs of scraggly grey hair turn towards you. His smile shows a checkerboard row of teeth. 
    
    -> speak_with_bus_driver
    
    === agressive_push  ===
            In your desperate rush to get out off of the bus you bump into an old lady. 
        "HEY! what's the big idea?
            * [Ignore her]
            As you step off the bus you hear the old lady shouting obscenities at you that are thankfully drowned out by the rush of people.

            * "I'm sorry[."]," you say sheepishly as she glares you down.
            She sighs, "It's alright dear, too fucking hot for manners," and she nods for you to go ahead. 
            
            - Before you know it you're on the street, and a dry warm breeze blows across your face, drying some of the sweat.  ->->
            
            
    === go_with_the_flow ===
        The flow of the rush means you get a couple of bumps and bruises in the rush and you think you hear something fall to the ground, but the crush of people prevents you from checking what it was. 
            
        Before you know it you're on the street, and a dry warm breeze blows across your face, drying some of the sweat.  ->->
        


    
    === speak_with_bus_driver ===
    
        * [Say hello]
        "Hello."
        He nods stiffly at you while he pulls out a packet of chewing tobacco and pushes the pungent mass into his mouth.
        "Welcome to Crowhurst," he projects between wet chomps of his teeth, while making a shooing motion with his hand. 
                -> speak_with_bus_driver
        * [Ask if he would like to attend a talk on Global Warming]
        "Surely you’re aware of the terrible destruction of wildlife in the local area by local logging companies. We have a responsibility to take action and stop this destruction. I’m hosting a gathering this weekend at the town hall and would love for you to attend and show your support…" [beware of Word's “ vs ". latter less likely to cause issues. i did a search and replace]
        The smile falters on his face, his chewing slows and his eyes glaze over, as you’ve seen a hundred times before. The bus driver takes the pamphlet in his calloused hand and  shoos you with the other. 
        + [Leave the bus]
        
        
        - "Good day," he mumbles, as you step off into the street’s gutter. 
        -> character_introduction







=== character_introduction ===

        {agressive_push: 
        Behind you hear the croak of the old lady that you pushed. 
        "Dear, don't do that again." She simmers. 
        * "You're right, sorry won't happen again"
        She sighs and shakes her head at you before walking away towards a gathering of old ladies. 
        You watch and wonder whether or not you should join them.
                ** [Follow them] 
                    -> Follow_the_old_ladies
                ** [Stay on the street]
                    -> Stay_on_the_street
        *"I seem to remember you pushing as well"
        Fire flares in her eyes before a smile cracks on her face. 
        "Well, got to show you all how's its done after all." She begins walking away towards a gathering of old ladies. 
        You watch and wonder whether or not you should join them.
                ** [Follow them] 
                    -> Follow_the_old_ladies
                ** [Stay on the street]
                    -> Stay_on_the_street
        

            
        - else: 
        As the bus pulls away you hear a croak from behind you. 
        "Hmmm, not many people polite enough to wait these days." You see an old lady behind her walker looking at you curiously. 
        "You ain't from here eh"
        *"No I'm not, and I really have no idea where to go."[]
        She smiles in a grandmotherly way and beckons to you to follow her as she walks to a group of gathering old women near by.
        -> Follow_the_old_ladies
        *[Ignore her and head toward the main street.]
        You hear her scoff as you walk off. "Fuckin' city people."
        -> on_the_street
        

}

