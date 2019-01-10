Flatiron Immersive Software Engineering 
CLI Data Gem Portfolio Project.
Work Log: December 30, 2018

 I noticed in the project requirements that I am supposed to make a 30 minute recording of my project. I assume they want to verify that I am the one struggling on this rather than paying someone to do the work for me. HA HA!

My work environment at home:

Anyway, since my computer doesn't have camera or microphone I decided to use the Steps Recorder that is available on my computer to record my work session on this project. So you won't be able to hear my delightful voice and expletive deletives!

Since the beginning of the course I have been using desktop IDEs to work on the program. I am not fond of the Learn IDE mainly because I can't split or enlarge the screen the way I would like and sometimes there are issues with the connection. I started with the RubyMine IDE which I really loved but after the trial there was a cost factor which would be expensive. I switched  to the Visual Studio Code IDE which seems to be very reliable however adding extensions can be a bit tricky. Although I have used github and git bash in a previous online course, I am not fond of all the cloning, forking, etc so I download the .zip file from github and work on it in the IDE then I either paste the files in Learn to submit or I use github desktop or git bash to push the project to my repository.

The CLI project so far:

I haven't received much one on one help in this course and none on this project. Not anyone's fault but due to schedule conflicts between study groups (which always seem to happen before they are posted), and my life I have had to pretty much work on a lot of this alone. I watched the CLI gem walkthrough video with Avi at least 3 times and use that as a guide for process. I have studied the previous scraper labs and collaborating labs and of course Google, Google and more Google for a clearer picture of what to do. Scary stuff but I got a start.

12/28
I used Avi's advice on making a note file with project requirements and wants. It was hard making a decision on what website to use but I wanted to stay simple and choose a site which had the information I needed on basically one page. I knew I needed to be able to understand what I was doing with the code instead of being distracted by the subject matter and I knew I would need a drink after all this so I decided cocktails would be the way to go!

After navigating through the directory architecture which totally confounded me (Is there a standard way to set up a file directory including what to put in a bin, lib, etc. which works for beginners?). I tried to look at previous file structure, other students structure and Avi's structure. In the end I went with Avi's structure because it worked but I still don't quite understand why.

I then started on building out the class files. I am currently working on the Scraper so...

12/30 - Just finished working on the get_data method in scraper. Was having a hell of a time splitting the text and getting exactly what I need. The html has <p> redundantly throughout the file so isolating was hard. Figured it out eventually. Moving on to the selection method next.

12/31 - I feel like I made good progress yesterday by getting the menu to work. Today the goal is to get the description and recipe content in the selection. I will start by trying to scrape the correct information in the scraper file.

01/1/2019 = HAPPY NEW YEAR!
Yesterday I ended up in circles with the description method. As I awoke I realized I need to use separation of concerns in my file structure in order for this to work. I was trying to invoke a method from the CLI class when I should probably keep all my data scraping and manipulation in the Scraper class. I need to keep the Class methods accessible to the CLI class - not the other way around. So here I am fresh and early to see if I can get a grip on this thing.



