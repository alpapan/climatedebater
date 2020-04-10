var globalChoiceVariables = [0, 0, 0, 0, 0, 0]

function updateChoices(story){
  globalChoiceVariables[0] = story.variablesState.$("GROUPA");
  globalChoiceVariables[1] = story.variablesState.$("GROUPB");
  globalChoiceVariables[2] = story.variablesState.$("GROUPC");
  globalChoiceVariables[3] = story.variablesState.$("GROUPD");
  globalChoiceVariables[4] = story.variablesState.$("GROUPE");
  globalChoiceVariables[5] = story.variablesState.$("GROUPF");

}

(function(storyContent) {

    // Create ink story from the content using inkjs
    var story = new inkjs.Story(storyContent);

    // Global tags - those at the top of the ink file
    // We support:
    //  # theme: dark
    //  # author: Your Name
    var globalTags = story.globalTags;
    if( globalTags ) {
        for(var i=0; i<story.globalTags.length; i++) {
            var globalTag = story.globalTags[i];
            var splitTag = splitPropertyTag(globalTag);

            // THEME: dark
            if( splitTag && splitTag.property == "theme" ) {
                document.body.classList.add(splitTag.val);
            }

            // author: Your Name
            else if( splitTag && splitTag.property == "author" ) {
                var byline = document.querySelector('.byline');
                byline.innerHTML = "by "+splitTag.val;
            }
        }
    }

    var storyContainer = document.querySelector('#story');
    var outerScrollContainer = document.querySelector('.outerContainer');

    // Kick off the start of the story!
    continueStory(true);

    // Main story processing function. Each time this is called it generates
    // all the next content up as far as the next set of choices.
    function continueStory(firstTime) {

        var paragraphIndex = 0;
        var delay = 0.0;

        // Don't over-scroll past new content
        var previousBottomEdge = firstTime ? 0 : contentBottomEdgeY();

        // Generate story text - loop through available content
        while(story.canContinue) {

            // Get ink to generate the next paragraph
            var paragraphText = story.Continue();

            if (paragraphText.startsWith(">>>")){
                linkdata = paragraphText.split(':');
                if (linkdata[0] == ">>>MYTH"){
                  var paragraphElement = document.createElement('p');
                  var anchorElement = document.createElement('a');
                  console.log(linkdata[0]);
                  console.log(linkdata[1]);
                  console.log(linkdata[2]);
                  anchorElement.setAttribute('href', 'https://' + linkdata[1].trim() );
                  anchorElement.setAttribute('target', '_blank');
                  var aText = document.createTextNode(
                    '"' + linkdata[2].trim() + '"');
                    var aText2 = document.createTextNode(
                       '"' + linkdata[3].trim() + '"'
                  );
                  anchorElement.appendChild(aText);
                  paragraphElement.appendChild(anchorElement);
                  paragraphElement.appendChild(document.createElement("br"));
                  paragraphElement.appendChild(document.createTextNode("vs:"));
                  paragraphElement.appendChild(document.createElement("br"));
                  paragraphElement.appendChild(aText2);
                  storyContainer.appendChild(paragraphElement);
                  paragraphText = "";
                }
            }

            var tags = story.currentTags;

            // Any special tags included with this line
            var customClasses = [];
            for(var i=0; i<tags.length; i++) {
                var tag = tags[i];

                // Detect tags of the form "X: Y". Currently used for IMAGE and CLASS but could be
                // customised to be used for other things too.
                var splitTag = splitPropertyTag(tag);

                // IMAGE: src
                if( splitTag && splitTag.property == "IMAGE" ) {
                    var imageElement = document.createElement('img');
                    imageElement.src = '/themes/stressedfruitfly/assets/games/climateDebater/' + splitTag.val;
                    //imageElement.src = splitTag.val;
                    storyContainer.appendChild(imageElement);
                    showAfter(delay, imageElement);
                    delay += 200.0;
                }

                else if( splitTag && splitTag.property == "SOURCE" ) {
                  var element = document.createElement('a');
                  element.setAttribute('href', 'https://' + splitTag.val);
                  element.setAttribute('target', '_blank');
                  var aText = document.createTextNode("FURTHER READING");
                  element.appendChild(aText);
                  storyContainer.appendChild(element);
                  showAfter(delay, element);
                  delay += 100.0;
                }


                else if( splitTag && splitTag.property == "YOUTUBE" ) {
                    var videoElement = document.createElement('iframe');
                    videoElement.id = splitTag.val;
                    videoElement.setAttribute("width","560");
                    videoElement.setAttribute("height","315");
                    videoElement.setAttribute("src","https://www.youtube-nocookie.com/embed/" + videoElement.id);
                    videoElement.setAttribute("allow","accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture");
                    videoElement.setAttribute("allowfullscreen",1);
                    storyContainer.appendChild(videoElement);
                    showAfter(delay, videoElement);
                    delay += 200.0;
                }

                // CLASS: className
                else if( splitTag && splitTag.property == "CLASS" ) {
                    customClasses.push(splitTag.val);
                }

                // CLEAR - removes all existing content.
                // RESTART - clears everything and restarts the story from the beginning
                else if( tag == "CLEAR" || tag == "RESTART" ) {
                    removeAll("p");
                    removeAll("img");
                    removeAll("a");
                    removeAll("iframe");
                    // Comment out this line if you want to leave the header visible when clearing
                    setVisible(".header", false);

                    if( tag == "RESTART" ) {
                        restart();
                        return;
                    }
                }
            }

            // Create paragraph element (initially hidden)
            var paragraphElement = document.createElement('p');
            paragraphElement.innerHTML = paragraphText;
            storyContainer.appendChild(paragraphElement);

            // Add any custom classes derived from ink tags
            for(var i=0; i<customClasses.length; i++)
                paragraphElement.classList.add(customClasses[i]);

            // Fade in paragraph after a short delay
            showAfter(delay, paragraphElement);
            delay += 200.0;
        }

        // Create HTML choices from ink choices
        currentChoices_random = story.currentChoices;

        for(var i = currentChoices_random.length - 1; i > 0; i--){
            const j = Math.floor(Math.random() * i)
            const temp = currentChoices_random[i]
            currentChoices_random[i] = currentChoices_random[j]
            currentChoices_random[j] = temp
        }

        currentChoices_random.forEach(function(choice) {
        //story.currentChoices.forEach(function(choice) {

            // Create paragraph with anchor element
            var choiceParagraphElement = document.createElement('p');
            choiceParagraphElement.classList.add("choice");
            choiceParagraphElement.innerHTML = `<a href='#'>${choice.text}</a>`
            storyContainer.appendChild(choiceParagraphElement);

            // Fade choice in after a short delay
            showAfter(delay, choiceParagraphElement);
            delay += 200.0;

            // Click on choice
            var choiceAnchorEl = choiceParagraphElement.querySelectorAll("a")[0];
            choiceAnchorEl.addEventListener("click", function(event) {

                // Don't follow <a> link
                event.preventDefault();

                // Remove all existing choices
                removeAll("p.choice");

                // update radar graph
                updateChoices(story);

                // Tell the story where to go next
                story.ChooseChoiceIndex(choice.index);

                // Aaand loop
                continueStory();
            });

            // pass variables from state to a global array of variables or a function or something

        });

        // shuffle the choices/children
        //choices = $(".choice show").children;
        //choices = shuffle(choices);
        //removeAll("p.choice");
        //.choices.forEach(element => $(".choice show").appendChild(choice));

        // Extend height to fit
        // We do this manually so that removing elements and creating new ones doesn't
        // cause the height (and therefore scroll) to jump backwards temporarily.
        storyContainer.style.height = contentBottomEdgeY()+"px";

        if( !firstTime )
            scrollDown(previousBottomEdge);
    }

    function restart() {
        story.ResetState();

        setVisible(".header", true);

        continueStory(true);

        outerScrollContainer.scrollTo(0, 0);
    }

    // -----------------------------------
    // Various Helper functions
    // -----------------------------------

    // Fades in an element after a specified delay
    function showAfter(delay, el) {
        el.classList.add("hide");
        setTimeout(function() { el.classList.remove("hide") }, delay);
    }

    // Scrolls the page down, but no further than the bottom edge of what you could
    // see previously, so it doesn't go too far.
    function scrollDown(previousBottomEdge) {

        // Line up top of screen with the bottom of where the previous content ended
        var target = previousBottomEdge;

        // Can't go further than the very bottom of the page
        var limit = outerScrollContainer.scrollHeight - outerScrollContainer.clientHeight;
        if( target > limit ) target = limit;

        var start = outerScrollContainer.scrollTop;

        var dist = target - start;
        var duration = 300 + 300*dist/100;
        var startTime = null;
        function step(time) {
            if( startTime == null ) startTime = time;
            var t = (time-startTime) / duration;
            var lerp = 3*t*t - 2*t*t*t; // ease in/out
            outerScrollContainer.scrollTo(0, (1.0-lerp)*start + lerp*target);
            if( t < 1 ) requestAnimationFrame(step);
        }
        requestAnimationFrame(step);
    }


    // The Y coordinate of the bottom end of all the story content, used
    // for growing the container, and deciding how far to scroll.
    function contentBottomEdgeY() {
        var bottomElement = storyContainer.lastElementChild;
        return bottomElement ? bottomElement.offsetTop + bottomElement.offsetHeight : 0;
    }

    // Remove all elements that match the given selector. Used for removing choices after
    // you've picked one, as well as for the CLEAR and RESTART tags.
    function removeAll(selector)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            el.parentNode.removeChild(el);
        }
    }

    // Used for hiding and showing the header when you CLEAR or RESTART the story respectively.
    function setVisible(selector, visible)
    {
        var allElements = storyContainer.querySelectorAll(selector);
        for(var i=0; i<allElements.length; i++) {
            var el = allElements[i];
            if( !visible )
                el.classList.add("invisible");
            else
                el.classList.remove("invisible");
        }
    }

    // Helper for parsing out tags of the form:
    //  # PROPERTY: value
    // e.g. IMAGE: source path
    function splitPropertyTag(tag) {
        var propertySplitIdx = tag.indexOf(":");
        if( propertySplitIdx != null ) {
            var property = tag.substr(0, propertySplitIdx).trim();
            var val = tag.substr(propertySplitIdx+1).trim();
            return {
                property: property,
                val: val
            };
        }

        return null;
    }

})(storyContent);
