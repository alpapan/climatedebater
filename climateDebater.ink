# theme: dark
# author: many people
# title: Climate Debater
# version: 0.01

-> start

=== start ===

(NB the following is attempt 0.01 and a lot of the text is copy pasted without permission. this is not for public consumption)
(www.sciencealert.com/here-s-what-the-science-says-about-five-common-climate-change-myths)
(theconversation.com/five-climate-change-science-misconceptions-debunked-122570)
(note this license does not allow derivative work so it's just placeholder text to just showcase the capability)

(capture some data about the person first)

(after that we will address certain questions)

(as we build the game, we can capture their answers and respond differently, for example the order they asked the questions or if they didn't ask some of them, etc)

Welcome to the Climage Debater v0.01. What sentence best describes you?
I believe that the climate change 
* is a myth
 Why do you think it is a myth?
** (myth_a) Option A -> myth
** (myth_b) Option B -> myth
** (myth_c) Option C -> myth
* is overblown
 Why do you think it is overblown?
** (over_a) Option A -> overblown
** (over_b) Option B -> overblown
** (over_c) Option C -> overblown
* is a cause of concern
 Why do you think it is a cause of concern
** (concerned_a) Option A (e.g. i created the data) -> concerned
** (concerned_b) Option B -> concerned
** (concerned_c) Option C -> concerned

- // gather

We have saved their answers and built the personality profile. 
then we move on...
->->



=== overblown ===
{ Fair enough. What do you think is overblown?|What other questions do you have?}

* Well, ultimately climate change is just part of the natural cycle  ->natural_cycle->overblown
* Most of the changes people see are due to sunspots or galactic cosmic rays    ->sunspots->overblown
* It bothers people don't realise that CO2 is a small part of the atmosphere – it can't have a large heating affect  ->co2_small_part->overblown
* It's all based on climate models that are unreliable and too sensitive to carbon dioxide  ->crap_models->overblown
* {CHOICE_COUNT() > 0 } I'm not concerned with any of these questions  -> conclude
* {CHOICE_COUNT() == 0 } I have more questions but they are not here!  -> reachout


= natural_cycle
    The climate of the Earth has always changed, but the study of palaeoclimatology or "past climates" shows us that the changes in the last 150 years – since the start of the industrial revolution – have been exceptional and cannot be natural. Modelling results suggest that future predicted warming could be unprecedented compared to the previous 5m years.

The "natural changes" argument is supplemented with the story that the Earth's climate is just recovering from the cooler temperatures of the Little Ice Age (1300-1850AD) and that temperatures today are really the same as the Medieval Warm Period (900–1300AD). The problem is that both the Little Ice Age and the Medieval Warming period were not global but regional changes in climate affecting north-west Europe, eastern America, Greenland and Iceland.
 # IMAGE: images/natural_cycle_fig1.png
A study using 700 climate records showed that, over the last 2,000 years, the only time the climate all around the World has changed at the same time and in the same direction has been in the last 150 years, when over 98 percent of the surface of the planet has warmed.
->->


= sunspots
Sunspots are storms on the sun's surface that come with intense magnetic activity and can be accompanied by solar flares. These sunspots do have the power to modify the climate on Earth. But scientists using sensors on satellites have been recording the amount of the sun's energy hitting Earth since 1978 and there has been no upward trend. So they cannot be the cause of the recent global warming.
    # IMAGE: images/sunspot_1.png
    Galactic cosmic rays (GCRs) are high-energy radiation that originates outside our solar system and may even be from distant galaxies. It has been suggested that they may help to seed or "make" clouds. So reduced GCRs hitting the Earth would mean fewer clouds, which would reflect less sunlight back into space and so cause Earth to warm.
    But there are two problems with this idea. First, the scientific evidence shows that GCRs are not very effective at seeding clouds. And second, over the last 50 years, the amount of GCRs have actually increased, hitting record levels in recent years. If this idea were correct, GCRs should be cooling the Earth, which they aren't.
    ->->



= co2_small_part
This is an attempt to play a classic common-sense card but is completely wrong. In 1856, American scientist Eunice Newton Foote conducted an experiment with an air pump, two glass cylinders and four thermometers. It showed that a cylinder containing carbon dioxide and placed in the sun trapped more heat and stayed warmer longer than a cylinder with normal air.
    Scientists have repeated these experiments in the laboratory and in the atmosphere, demonstrating again and again the greenhouse effect of carbon dioxide.
    
    As for the "common sense" scale argument that a very small part of something can't have much of an effect on it, it only takes 0.1 grams of cyanide to kill an adult, which is about 0.0001 percent of your body weight. Compare this with carbon dioxide, which currently makes up 0.04 percent of the atmosphere and is a strong greenhouse gas. Meanwhile, nitrogen makes up 78 percent of the atmosphere and yet is highly unreactive.
    ->->



= crap_models
This is incorrect and misunderstands how models work. It is a way of downplaying the seriousness of future climate change. There is a huge range of climate models, from those aimed at specific mechanisms such as the understanding of clouds, to general circulation models (GCMs) that are used to predict the future climate of our planet.
    There are over 20 major international centres where teams of some of smartest people in the world have built and run GCMs containing millions of lines of code representing the very latest understanding of the climate system. These models are continually tested against historic and palaeoclimate data as well as individual climate events such as large volcanic eruptions to make sure they reconstruct the climate, which they do extremely well.
    # IMAGE: images/crap_models_1.png
    Model (black) and model range (grey) compared to observed global temperatures. (Carbon Brief/CC BY 4.0)Model (black) and model range (grey) compared to observed global temperatures. (Carbon Brief/CC BY 4.0)
    No single model should ever be considered correct as they represent a very complex global climate system. But having so many different models constructed and calibrated independently means that we can have confidence when the models agree.
    Taking the whole range of climate models suggests a doubling of carbon dioxide could warm the planet by 2˚C to 4.5˚C, with an average of 3.1˚C. All the models show a significant amount of warming when extra carbon dioxide is added to the atmosphere. The scale of the predicted warming has remained very similar over the last 30 years despite the huge increase in the complexity of the models, showing it is a robust outcome of the science.
   
    By combining all our scientific knowledge of natural (solar, volcanic, aerosols and ozone) and human-made (greenhouse gases and land-use changes) factors warming and cooling the climate shows that 100 percent of the warming observed over the last 150 years is due to humans.
     # IMAGE: images/crap_models_2.png
    Natural and Human influences on global temperatures since 1850. Carbon Brief, CC BYNatural and Human influences on global temperatures since 1850. Carbon Brief, CC BY
    There is no scientific support for the continual denial of climate change. The Intergovernmental Panel on Climate Change (IPCC), set up by the United Nations to openly and transparently summarise the science, provides six clear lines of evidence for climate change.
    As extreme weather becomes more and more common, people are realising that they do not need scientists to tell them the climate is changing – they are seeing and experiencing it first hand.
    ->->




=== myth ===

(For people who think it is a myth)
{Fair enough. Why do you think it is a myth|What other questions do you have?}
* It is clear to me that scientists manipulate all data sets to show a warming trend -> data_manipulation->myth
* {CHOICE_COUNT() > 0 } I'm not concerned with any of these questions  -> conclude
* {CHOICE_COUNT() == 0 } I have more questions but they are not here!  -> reachout


= data_manipulation
This is not true and a simplistic device used to attack the credibility of climate scientists. It would require a conspiracy covering thousands of scientists in more than a 100 countries to reach the scale required to do this.
    Scientists do correct and validate data all the time. For example we have to correct historic temperature records as how they were measured has changed. Between 1856 and 1941, most sea temperatures were measured using seawater hoisted on deck in a bucket.
    Even this was not consistent as there was a shift from wooden to canvas buckets and from sailing ships to steamships, which altered the height of the ship's deck – and these changes in turn altered the amount of cooling caused by evaporation as the bucket was hoisted onto deck. Since 1941, most measurements have been made at the ship's engine water intakes, so there's no cooling from evaporation to account for.
    We must also take account that many towns and cities have expanded and so that meteorological stations that were in rural areas are now in urban areas which are usually significantly warmer than the surrounding countryside.
    If we didn't make these changes to the original measurements, then Earth's warming over the last 150 years would have appeared to be even greater than the change that has actually been observed, which is now about 1˚C of global warming.
->->

=== concerned ===

(for people who are concerned)

- 
->conclude

=== reachout

If someone has more questions and wants to reach out...
* Drop an email (@address)
-> conclude


=== conclude ===

stage 2 or some conclusion

-> END