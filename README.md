# project6


Project 6 goals: add database retrieval and create multiple highscore views to project 5, i.e. Create a separate view of database high scores vs. local high scores.


Progress log:
11/12: Created initial repository and began research

11/13:  Loaded old project 5 files
            Created TabViewController


11/15:  Created request-type object to load JSON data from website (still buggy)
            Created textlabel that loads if website loads

11/18: Fixed 1022 error with loading JSON data from the web (requires "https" connection not just "http")
            Added some code to test printing the contents into a label on screen (success)

11/19:  Added code to copy the website contents to the singleton
            Running multiple tests to learn the swift 'split'-type function called 'components'
            Print statements show successful splits of the sections of JSON data.
            Looking more into this function to extract relevant data to load into the Singleton where it can be added to the local leaderboard. 

11/20:  Identified components indices by splitting with component characters ":" and ","
            Used the indices and component split indices to pull and print games "testing", "asteroids", and "doesntmatter"
            Planning on putting in buttons and text boxes to create an interaction between loading these scores to current in-game table.

11/22:  Created an example of JSON loadable data via Apple's example.
            Found a way to load data directly to the php site by using the arguments on the other side of the "?"
            Testing to see what the minimum code is to use that upload ability.
            Uploaded some blank scores, and some test scores/test games.


11/23:  Added code to upload a random score with the name "BAR" and gamename "asteroids" to the upload site
            Added code to download a random score of index 0 through 9 and output the "playername", "gamename" and "score" to a label on screen.
            Fixed bug where NSURL connection code was posting the score twice
            Trying to use a JSON style load as well.
            Added code to upload most recent Bug Buster score to the CS website!

11/24:  Added a button link to the getscores CS scores webpage .  The webpage does successfully open up and display within the app when the button is clicked
            
        
