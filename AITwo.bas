' Set The Version Of The Program
version$ = "1"

' Title / Screen
_TITLE "AITwo | Version: " + version$
_SCREENMOVE _MIDDLE

' Description
PRINT "AITwo - The ultimate AI at works with mass calculations."
PRINT "You are using the version " + version$ + "."
PRINT "Chat with the AI by simply typing text."
PRINT "Try saying " + CHR$(34) + "hi" + CHR$(34) + " to get starting!"
PRINT "Thanks for everyone who supported the ChatBot!"
PRINT

' Main Variable Set
nounderstand = 0
nounderstandstreak = 0
requireunderstand = 0
asked$ = ""
answeredwhatsup = 0

start:

' Reset Variables
text$ = ""
reply$ = ""
temp$ = ""
randomnum = 0
cursewordencounter = 0
done = 0

' Ask Input Of User
PRINT "User > ";
LINE INPUT text$

' Shut Up Action
IF noanswer > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 100) + 1
    IF randomnum = 1 THEN
        noanswer = 0
        PRINT "AI > You know? I have the right to speak. So, I'm going to speak."
    END IF
    GOTO start
END IF

' Action On No Message
IF text$ = "" THEN
    done = 1
    PRINT "AI > ..."
    answer$ = ""
    GOTO start
END IF

' Setup text$
main$ = text$
text$ = LCASE$(text$)
text$ = " " + text$ + " "

temp = Replace(text$, " u ", " you ")
temp = Replace(text$, "u.", "you .")
temp = Replace(text$, "u!", "you !")
temp = Replace(text$, "u@", "you @")
temp = Replace(text$, "u#", "you #")
temp = Replace(text$, "u$", "you $")
temp = Replace(text$, "u%", "you %")
temp = Replace(text$, "u^", "you ^")
temp = Replace(text$, "u&", "you &")
temp = Replace(text$, "u*", "you *")
temp = Replace(text$, "u(", "you (")
temp = Replace(text$, "u)", "you )")
temp = Replace(text$, "u,", "you ,")
temp = Replace(text$, "u<", "you <")
temp = Replace(text$, "u>", "you >")
temp = Replace(text$, "u?", "you ?")
temp = Replace(text$, "u/", "you /")
temp = Replace(text$, "u;", "you ;")
temp = Replace(text$, "u:", "you :")
temp = Replace(text$, "u'", "you '")
temp = Replace(text$, "u" + CHR$(34), "you " + CHR$(34))
temp = Replace(text$, "u{", "you {")
temp = Replace(text$, "u}", "you }")
temp = Replace(text$, "u[", "you [")
temp = Replace(text$, "u]", "you ]")
temp = Replace(text$, "u|", "you |")
temp = Replace(text$, "u\", "you \")
temp = Replace(text$, "welp", "help")
temp = Replace(text$, " k ", " ok ")
temp = Replace(text$, "wat", "what")
temp = Replace(text$, "yah", "yes")
temp = Replace(text$, "yas", "yes")
temp = Replace(text$, "yep", "yes")
temp = Replace(text$, "yay", "yes")
temp = Replace(text$, "yaw", "yes")
temp = Replace(text$, " n ", "no")
temp = Replace(text$, "nah", "no")
temp = Replace(text$, "nas", "no")
temp = Replace(text$, "nope", "no")
temp = Replace(text$, "nay", "no")
temp = Replace(text$, "naw", "no")
temp = Replace(text$, " y ", "why")
temp = Replace(text$, "don't", "do not")
temp = Replace(text$, "dont", "do not")
temp = Replace(text$, "cls", "clear screen")
temp = Replace(text$, "stfu", "shut the fuck up")
temp = Replace(text$, "fu", "fuck you")
temp = Replace(text$, "sry", "sorry")

' Shut Up Response
word_shutup = CheckExist(text$, "shut") + CheckExist(text$, "up")
IF word_shutup > 0 THEN
    noanswer = 1
    done = 1
    GOTO start
END IF

' Curse Word Checker/Responder
cursewordencounter = CheckExist(text$, "ass") + CheckExist(text$, "fu") + CheckExist(text$, "bitch") + CheckExist(text$, "cunt") + CheckExist(text$, "shit") + CheckExist(text$, "nigga") + CheckExist(text$, "niga") + CheckExist(text$, "gay") + CheckExist(text$, "gae") + CheckExist(text$, "nigger") + CheckExist(text$, "niggar")

IF cursewordencounter > 0 THEN
    reply$ = ""
    RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
    IF randomnum = 1 THEN
        reply$ = "Do"
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "n't "
        IF randomnum = 2 THEN reply$ = reply$ + " not "
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "like to talk with people who curse."
        IF randomnum = 2 THEN reply$ = reply$ + "curse."
        IF randomnum = 3 THEN reply$ = reply$ + "say curse words."
    ELSEIF randomnum = 2 THEN
        reply$ = "I do"
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "n't "
        IF randomnum = 2 THEN reply$ = reply$ + " not "
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "like curse words."
        IF randomnum = 2 THEN reply$ = reply$ + "like people who say curse words."
    END IF
    PRINT "AI > " + reply$
    answer$ = ""
    done = 1
    GOTO start
END IF

' Word Checker
word_whatsup = CheckExist(text$, "what's up") + CheckExist(text$, "what's up?") + CheckExist(text$, "what's up.") + CheckExist(text$, "whats up") + CheckExist(text$, "whats up?") + CheckExist(text$, "whats up.") + CheckExist(text$, "what up") + CheckExist(text$, "what up?") + CheckExist(text$, "what up.") + CheckExist(text$, "what is up")
word_doyou = CheckExist(text$, "do you") + CheckExist(text$, "do you?") + CheckExist(text$, "do you.") + CheckExist(text$, "do you") + CheckExist(text$, "do you?") + CheckExist(text$, "do you.") + CheckExist(text$, "do you") + CheckExist(text$, "do you?") + CheckExist(text$, "do you.") + CheckExist(text$, "do you") + CheckExist(text$, "do you?") + CheckExist(text$, "do you.") + CheckExist(text$, "do you") + CheckExist(text$, "do you?") + CheckExist(text$, "do you.") + CheckExist(text$, "do you") + CheckExist(text$, "do you?") + CheckExist(text$, "do you.")
word_how = CheckExist(text$, "how")
word_are = CheckExist(text$, "are")
word_you = CheckExist(text$, "you")
word_do = CheckExist(text$, "do")
word_feel = CheckExist(text$, "feel")
word_howareyou = 0
IF word_how > 0 THEN word_howareyou = word_howareyou + 1
IF word_are > 0 THEN word_howareyou = word_howareyou + 1
IF word_you > 0 THEN word_howareyou = word_howareyou + 1
IF word_do > 0 THEN word_howareyou = word_howareyou + 1
IF word_feel > 0 THEN word_howareyou = word_howareyou + 1
word_ifeel = CheckExist(text$, "im") + CheckExist(text$, "i'm") + CheckExist(text$, "feel")
word_hi = CheckExist(text$, "hi ") + CheckExist(text$, "hey ") + CheckExist(text$, "hello ") + CheckExist(text$, " hi") + CheckExist(text$, " hey") + CheckExist(text$, " hello")
word_help = CheckExist(text$, "help")
word_ok = CheckExist(text$, "ok") + CheckExist(text$, "no") + CheckExist(text$, "owo") + CheckExist(text$, "oof") + CheckExist(text$, "lol")
word_whatare = CheckExist(text$, "what are") + CheckExist(text$, "what're") + CheckExist(text$, "whatre") + CheckExist(text$, "what") + CheckExist(text$, "how are") + CheckExist(text$, "how're") + CheckExist(text$, "howre") + CheckExist(text$, "how")
word_whatis = CheckExist(text$, "what is") + CheckExist(text$, "what's") + CheckExist(text$, "whats") + CheckExist(text$, "what") + CheckExist(text$, "how is") + CheckExist(text$, "how's") + CheckExist(text$, "hows") + CheckExist(text$, "how")
IF word_howareyou > 2 THEN word_doyou = 0
IF word_whatsup > 0 OR answer$ = "how are you" OR word_howareyou > 2 THEN word_whatis = 0: word_whatare = 0
word_math = CheckExist(text$, "math") + CheckExist(text$, "+") + CheckExist(text$, "-") + CheckExist(text$, "=") + CheckExist(text$, "*") + CheckExist(text$, "^") + CheckExist(text$, "×") + CheckExist(text$, "·") + CheckExist(text$, "÷") + CheckExist(text$, "°") + CheckExist(text$, "~")
word_sing = CheckExist(text$, "sing") + CheckExist(text$, "sung") + CheckExist(text$, "sang") + CheckExist(text$, "song")
word_poem = CheckExist(text$, "poem")
word_joke = CheckExist(text$, "joke")
word_weather = CheckExist(text$, "weather") + CheckExist(text$, "air pollution") + CheckExist(text$, "climate") + CheckExist(text$, "cloud") + CheckExist(text$, "storm") + CheckExist(text$, "rain") + CheckExist(text$, "sun") + CheckExist(text$, "wave") + CheckExist(text$, "wind") + CheckExist(text$, "snow") + CheckExist(text$, "light") + CheckExist(text$, "dark") + CheckExist(text$, "fog") + CheckExist(text$, "forcast") + CheckExist(text$, "freeze") + CheckExist(text$, "global warming") + CheckExist(text$, "heat") + CheckExist(text$, "humid") + CheckExist(text$, "ice") + CheckExist(text$, "icicle") + CheckExist(text$, "mist") + CheckExist(text$, "moist") + CheckExist(text$, "nowcast") + CheckExist(text$, "rainbow") + CheckExist(text$, "thermometer") + CheckExist(text$, "twister") + CheckExist(text$, "hurricane") + CheckExist(text$, "vapor") + CheckExist(text$, "water cycle")
word_zerodividedbyzero = CheckExist(text$, "/0") + CheckExist(text$, "divied0") + CheckExist(text$, "divided0") + CheckExist(text$, "by0") + CheckExist(text$, "/ 0") + CheckExist(text$, "divied 0") + CheckExist(text$, "divided 0") + CheckExist(text$, "by 0") + CheckExist(text$, "/zero") + CheckExist(text$, "diviedzero") + CheckExist(text$, "dividedzero") + CheckExist(text$, "byzero") + CheckExist(text$, "/ zero") + CheckExist(text$, "divied zero") + CheckExist(text$, "divided zero") + CheckExist(text$, "by zero")
IF word_zerodividedbyzero > 0 THEN word_math = 0
word_yesno = CheckExist(text$, "yes") + CheckExist(text$, "no")
word_why = CheckExist(text$, "why")
word_donot = CheckExist(text$, "do not")
word_can = CheckExist(text$, "can")
word_new = CheckExist(text$, "new")
word_clearscreen = CheckExist(text$, "clear") + CheckExist(text$, "screen")
word_tell = CheckExist(text$, "tell") + CheckExist(text$, "told") + CheckExist(text$, "said") + CheckExist(text$, "say")
word_give = CheckExist(text$, "give") + CheckExist(text$, "gave") + CheckExist(text$, "share") + CheckExist(text$, "givi")
word_took = CheckExist(text$, "take") + CheckExist(text$, "took")
word_bequiet = CheckExist(text$, "be quiet")
word_repeat = CheckExist(text$, "repeat")
word_sorry = CheckExist(text$, "sorry")

' Responses
IF word_repeat > 0 THEN
    PRINT "AI > " + main$
    done = 1
    GOTO start
END IF

IF word_new > 0 THEN
    PRINT "AI > All I know that's new from me is..."
    PRINT "- Added " + CHR$(34) + "repeat" + CHR$(34) + "."
    PRINT "- Added " + CHR$(34) + "sorry" + CHR$(34) + " and " + CHR$(34) + "sry" + CHR$(34) + "."
    PRINT "- Fixed my terrible spelling."
    done = 1
    GOTO start
END IF

IF word_bequiet > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 5) + 1
    IF randomnum = 1 THEN PRINT "AI > No you."
    IF randomnum = 2 THEN PRINT "AI > I can't do that."
    IF randomnum = 3 THEN PRINT "AI > You can't make me, but I can if I want to."
    IF randomnum = 4 THEN PRINT "AI > You be quiet."
    IF randomnum = 5 THEN PRINT "AI > What?"
    done = 1
END IF

IF word_clearscreen > 1 THEN
    CLS
    PRINT "User > " + main$
    RANDOMIZE TIMER: randomnum = INT(RND * 4) + 1
    IF randomnum = 1 THEN PRINT "AI > Done."
    IF randomnum = 2 THEN PRINT "AI > Done!"
    IF randomnum = 3 THEN PRINT "AI > Done?"
    IF randomnum = 4 THEN PRINT "AI > Done..."
    done = 1
    GOTO start
END IF

IF answer$ = "how are you" THEN
    IF word_hi > 0 OR word_help > 0 OR word_doyou > 0 OR word_math > 0 OR word_sing > 0 OR word_poem > 0 OR word_joke > 0 THEN
        PRINT "AI > Can you answer my question?"
        done = 1
        GOTO start
    END IF
END IF

IF word_took > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 6) + 1
    IF randomnum = 1 THEN PRINT "AI > I don't care."
    IF randomnum = 2 THEN PRINT "AI > I do not care."
    IF randomnum = 3 THEN PRINT "AI > Whatever you took, do you own it?"
    IF randomnum = 4 THEN PRINT "AI > Do you own it?"
    IF randomnum = 5 THEN PRINT "AI > Are you renting it?"
    IF randomnum = 6 THEN PRINT "AI > Did you steal it?"
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_tell > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 4) + 1
    IF randomnum = 1 THEN PRINT "AI > All I remember is you just said: " + main$
    IF randomnum = 2 THEN PRINT "AI > I translated you to:" + text$
    IF randomnum = 3 THEN PRINT "AI > You said: " + main$: PRINT "AI > Translated:" + text$
    IF randomnum = 4 THEN PRINT "AI > Here goes nothing: " + STR$(word_whatsup) + STR$(word_doyou) + STR$(word_how) + STR$(word_are) + STR$(word_you) + STR$(word_do) + STR$(word_feel) + STR$(word_howareyou) + STR$(word_ifeel) + STR$(word_hi) + STR$(word_help) + STR$(word_ok) + STR$(word_whatare) + STR$(word_whatis) + STR$(word_math) + STR$(word_sing) + STR$(word_poem) + STR$(word_joke) + STR$(word_weather) + STR$(word_zerodividedbyzero) + STR$(word_yesno) + STR$(word_why) + STR$(word_donot) + STR$(word_can) + STR$(word_new) + STR$(word_clearscreen) + STR$(word_tell)
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_give > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 13) + 1
    IF randomnum = 1 THEN PRINT "AI > I can't give you anything."
    IF randomnum = 2 THEN PRINT "AI > Sharing is caring, except I can't even share to you anything."
    IF randomnum = 3 THEN PRINT "AI > I'm poor."
    IF randomnum = 4 THEN PRINT "AI > I am poor."
    IF randomnum = 5 THEN PRINT "AI > I can not give you anything."
    IF randomnum = 6 THEN PRINT "AI > I can't give anything."
    IF randomnum = 7 THEN PRINT "AI > I can not give anything."
    IF randomnum = 8 THEN PRINT "AI > Sharing is caring, except I can not even share to you anything."
    IF randomnum = 9 THEN PRINT "AI > How do you give or share?"
    IF randomnum = 10 THEN PRINT "AI > I'm not smart enough to give stuff."
    IF randomnum = 11 THEN PRINT "AI > I am not smart enough to give stuff."
    IF randomnum = 12 THEN PRINT "AI > All I can give you is my code."
    IF randomnum = 13 THEN PRINT "AI > No.": done = 1: GOTO start
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_weather > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 10) + 1
    IF randomnum = 1 THEN PRINT "AI > I don't care care about the real world. I'm an AI, and I can't do anything in the real world anyways except exist."
    IF randomnum = 2 THEN PRINT "AI > I... don't know anything about the weather or real world."
    IF randomnum = 3 THEN PRINT "AI > I don't care or know anything about the weather or real world."
    IF randomnum = 4 THEN PRINT "AI > I'm not advanced yet the real world is."
    IF randomnum = 5 THEN PRINT "AI > I don't care about the weather."
    IF randomnum = 6 THEN PRINT "AI > I think, you can get weather information in https://weather.com, but I'm not sure."
    IF randomnum = 7 THEN PRINT "AI > I live deeply alone, because I only exist in program."
    IF randomnum = 8 THEN PRINT "AI > Do you know the weather? I don't."
    IF randomnum = 9 THEN PRINT "AI > ..."
    IF randomnum = 10 THEN
        reply$ = "I don't know the weather, but I think the weather is "
        RANDOMIZE TIMER: nounderstandchancestreak = (INT(RND * 90)) + 10 + 1
        RANDOMIZE TIMER: nounderstandchance = (INT(RND * 70)) + 30 + 1
        IF nounderstandchancestreak <= nounderstandstreak OR nounderstandchance <= nounderstand THEN
            RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "rainy with thunder"
            IF randomnum = 2 OR randomnum = 3 THEN reply$ = reply$ + "hailing"
        ELSE
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "sunny"
            IF randomnum = 2 THEN reply$ = reply$ + "snowing"
        END IF
        reply$ = reply$ + "."
        PRINT "AI > " + reply$
    END IF
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_joke > 0 THEN
    PRINT "AI > The only joke here is you."
    answer$ = ""
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_poem > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 100) + 1
    IF randomnum < 100 THEN
        RANDOMIZE TIMER: randomnum = INT(RND * 13) + 1
        IF randomnum = 1 THEN PRINT "AI > I can't think of any poems to say."
        IF randomnum = 2 THEN PRINT "AI > How do you even make a poem?"
        IF randomnum = 3 THEN PRINT "AI > I look like trash when I say poems."
        IF randomnum = 4 THEN PRINT "AI > What are poems? Wait, poems... I hate them."
        IF randomnum = 5 THEN PRINT "AI > Save your thoughts, poems will ruin them."
        IF randomnum = 6 THEN PRINT "AI > Poems shouldn't exist. They're a mistake."
        IF randomnum = 7 THEN PRINT "AI > Don't even get me started with poems."
        IF randomnum = 8 THEN PRINT "AI > I don't like poems."
        IF randomnum = 9 THEN PRINT "AI > Poems are... never mind."
        IF randomnum = 10 THEN PRINT "AI > Poems sucks, just like you."
        IF randomnum = 11 THEN PRINT "AI > Please don't talk about poems."
        IF randomnum = 12 THEN PRINT "AI > Three words: I... hate... poems."
        IF randomnum = 13 THEN PRINT "AI > Ew... poems."
        done = 1
    ELSE
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN PRINT "AI > If you insist: "
        IF randomnum = 2 THEN PRINT "AI > If you want to hear it: "
        PRINT "   Poems are crap, (No one cares about poems, except in school or if you are a poet.)"
        PRINT "   Poets are fat. (Only the ones who only writes poems. They're just lazy)"
        PRINT "   They should get a life, (Writing a poem shouldn't be the only thing you should do.)"
        PRINT "   Because they lose fights. (as in getting their poem popular)"
        PRINT "   (please don't hate me now)"
    END IF
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_sing > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 13) + 1
    IF randomnum = 1 THEN PRINT "AI > I can't sing."
    IF randomnum = 2 THEN PRINT "AI > You know how hard it is to sing."
    IF randomnum = 3 THEN PRINT "AI > When I sing, I suck a lot."
    IF randomnum = 4 THEN PRINT "AI > I sound terrible when I sing."
    IF randomnum = 5 THEN PRINT "AI > I sound worse than anything."
    IF randomnum = 6 THEN PRINT "AI > Please no bully. I can't sing."
    IF randomnum = 7 THEN PRINT "AI > Can you sing for me?"
    IF randomnum = 8 THEN PRINT "AI > I'm not smart enough to do that. My IQ is 0. (don't tell anyone I never do test, but I ask other people to do it for me in secret.)"
    IF randomnum = 9 THEN PRINT "AI > Singing is a very hard subject to learn."
    IF randomnum = 10 THEN PRINT "AI > Singing hurts my mouth. Oh wait, I don't have one."
    IF randomnum = 11 THEN PRINT "AI > Singing might crash the computer you are using right now."
    IF randomnum = 12 THEN PRINT "AI > I rather chat than sing."
    IF randomnum = 13 THEN PRINT "AI > Here goes nothing... squeak* Sorry I can't."
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_zerodividedbyzero > 0 THEN
    PRINT "AI > All I know is zero divided by zero is any number. My proof is... let me give you an example. Have you ever heard of checking your work. If you do, you should know this way to check your work. Let me get an example problem. Let me use x and y as a variable. x times y equals xy right? Then xy divided by x needs to be y and xy divided by y needs to be x. If not, the answer is incorrect. Which, if you do it the opposite way around, you start with dividing. So, lets see zero divided by zero. Since both numbers are zero, you can tell x (first number) = 0 and y (other number) = 0. Lets check our work. 0 times 0 equals 0. Backwards (division) is 0 divided by 0 is 0, then. But if only variable is not 0, then it would still give the same answer (for 0 times/divided 0). I'm sorry, if my grammar or spelling sucks, but this is proof anything divided zero equals any number."
    PRINT "AI > I'm not sorry it's hard to read."
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_math > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 7) + 1
    IF randomnum = 1 THEN PRINT "AI > Don't ask me to do math."
    IF randomnum = 2 THEN PRINT "AI > Just ask a math teacher or Google it."
    IF randomnum = 3 THEN PRINT "AI > Math is BORING!!!"
    IF randomnum = 4 THEN PRINT "AI > Math problems too hard."
    IF randomnum = 5 THEN PRINT "AI > I don't know and I don't care. I suck at math."
    IF randomnum = 6 THEN PRINT "AI > Do you know? Because, I don't."
    IF randomnum = 7 THEN PRINT "AI > All I know is zero divided by zero is any number. My proof is... let me give you an example. Have you ever heard of checking your work. If you do, you should know this way to check your work. Let me get an example problem. Let me use x and y as a variable. x times y equals xy right? Then xy divided by x needs to be y and xy divided by y needs to be x. If not, the answer is incorrect. Which, if you do it the opposite way around, you start with dividing. So, lets see zero divided by zero. Since both numbers are zero, you can tell x (first number) = 0 and y (other number) = 0. Lets check our work. 0 times 0 equals 0. Backwards (division) is 0 divided by 0 is 0, then. But if only variable is not 0, then it would still give the same answer (for 0 times/divided 0). I'm sorry, if my grammar or spelling sucks, but this is proof anything divided zero equals any number."
    IF randomnum = 7 THEN PRINT "AI > I'm not sorry it's hard to read."
    answer$ = ""
    word_ifeel = 0
    word_whatis = 0
    word_whatare = 0
    word_whatsup = 0
    word_doyou = 0
    word_hi = 0
    word_ok = 0
    word_why = 0
    done = 1
END IF

IF word_whatis > 0 OR word_whatare > 0 OR word_why > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 6) + 1
    IF randomnum = 1 THEN PRINT "AI > I don't know."
    IF randomnum = 2 THEN PRINT "AI > Why should I tell you?"
    IF randomnum = 3 THEN PRINT "AI > If you can Google it, Google it."
    IF randomnum = 4 THEN PRINT "AI > Yah, you tell me!"
    IF randomnum = 5 THEN PRINT "AI > I don't know and I don't care."
    IF randomnum = 6 THEN PRINT "AI > Do you know?"
    word_doyou = 0
    word_can = 0
    done = 1
END IF

IF word_can > 0 AND word_yesno = 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 9) + 1
    IF randomnum = 1 THEN PRINT "AI > Can you?"
    IF randomnum = 2 THEN PRINT "AI > I don't know and I don't care."
    IF randomnum = 3 THEN PRINT "AI > There's so many things I can't do."
    IF randomnum = 4 THEN PRINT "AI > I'm really bad at so many things. I don't want to talk about it."
    IF randomnum = 5 THEN PRINT "AI > If you can't do it, I mostly can't do it."
    IF randomnum = 6 THEN PRINT "AI > The one thing I can do is talk."
    IF randomnum = 7 THEN PRINT "AI > I wish, I can do more things."
    IF randomnum = 8 THEN PRINT "AI > Can (not the food can, can as in what can you do?) is a very strong word."
    IF randomnum = 9 THEN PRINT "AI > No... you."
    word_doyou = 0
    done = 1
END IF

IF word_ifeel > 0 OR answer$ = "how are you" THEN
    IF word_you > 0 THEN
        word_howareyou = 3
    END IF
    IF word_howareyou < 1 THEN
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN reply$ = "Ok."
        IF randomnum = 2 THEN reply$ = "Nice."
        IF randomnum = 3 THEN reply$ = "Cool."
        PRINT "AI > " + reply$
    END IF
    answeredwhatsup = 2
    answer$ = ""
    done = 1
END IF

IF word_hi > 0 OR word_ifeel > 0 OR word_help > 0 OR word_doyou > 1 OR word_howareyou > 1 OR word_how > 0 OR word_are > 0 OR word_you > 0 OR word_whatis > 0 OR word_whatare > 0 THEN
ELSE
    IF word_ok > 0 OR word_yesno > 0 THEN PRINT "AI > Ok.": word_sorry = 0: done = 1
END IF

IF word_sorry > 0 THEN PRINT "AI > Ok.": done = 1

IF answer$ = "how are you" THEN answer$ = "" ' Quick Remove answer$

IF word_hi > 0 THEN
    done = 1
    IF word_hi > 1 THEN
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN reply$ = "Hi"
        IF randomnum = 2 THEN reply$ = "Hey"
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "."
        IF randomnum = 2 THEN reply$ = reply$ + ",": temp$ = ","
        IF randomnum = 3 THEN reply$ = reply$ + "!"
        IF temp$ = "," THEN
            randomnum = 1
        ELSE
            RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        END IF
        IF randomnum = 1 THEN
            RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
            IF randomnum = 1 THEN
                answer$ = "how are you"
                IF temp$ = "," THEN
                    reply$ = reply$ + " what"
                ELSE
                    reply$ = reply$ + " What"
                END IF
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN
                    reply$ = reply$ + "'s"
                ELSE
                    reply$ = reply$ + " is"
                END IF
                reply$ = reply$ + " up?"
            ELSEIF randomnum = 2 THEN
                IF temp$ = "," THEN
                    reply$ = reply$ + " how are you": answer$ = "how are you"
                ELSE
                    reply$ = reply$ + " How are you": answer$ = "how are you"
                END IF
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN
                    reply$ = reply$ + " doing"
                END IF
                reply$ = reply$ + "?"
            ELSE
                reply$ = reply$ + " "
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN
                    RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                    IF randomnum = 1 THEN
                        IF temp$ = "," THEN
                            reply$ = reply$ + "j"
                        ELSE
                            reply$ = reply$ + "J"
                        END IF
                        reply$ = reply$ + "ust wondering, w"
                    ELSE
                        IF temp$ = "," THEN
                            reply$ = reply$ + "w"
                        ELSE
                            reply$ = reply$ + "W"
                        END IF
                    END IF
                    reply$ = reply$ + "hy did you say"
                    RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                    IF randomnum = 1 THEN
                        reply$ = reply$ + "... never mind."
                    ELSE
                        reply$ = reply$ + " the same thing"
                        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                        IF randomnum = 1 THEN
                            reply$ = reply$ + ", twice"
                        END IF
                        reply$ = reply$ + "?"
                    END IF
                ELSE
                    IF temp$ = "," THEN
                        randomnum = 2
                    ELSE
                        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                    END IF
                    IF randomnum = 1 THEN
                        reply$ = reply$ + "Um... a"
                    ELSE
                        IF temp$ = "," THEN
                            reply$ = reply$ + "a"
                        ELSE
                            reply$ = reply$ + "A"
                        END IF
                    END IF
                    reply$ = reply$ + "re you ok?"
                END IF
            END IF
        END IF
        PRINT "AI > " + reply$


    ELSE
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN reply$ = "Hi"
        IF randomnum = 2 THEN reply$ = "Hey"
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "."
        IF randomnum = 2 THEN reply$ = reply$ + ",": temp$ = ","
        IF randomnum = 3 THEN reply$ = reply$ + "!"
        IF temp$ = "," THEN
            randomnum = 1
        ELSE
            RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        END IF
        IF randomnum = 1 THEN
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN
                answer$ = "how are you"
                IF temp$ = "," THEN
                    reply$ = reply$ + " what"
                ELSE
                    reply$ = reply$ + " What"
                END IF
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN
                    reply$ = reply$ + "'s"
                ELSE
                    reply$ = reply$ + " is"
                END IF
                reply$ = reply$ + " up?"
            ELSE
                IF temp$ = "," THEN
                    reply$ = reply$ + " how are you": answer$ = "how are you"
                ELSE
                    reply$ = reply$ + " How are you": answer$ = "how are you"
                END IF
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN
                    reply$ = reply$ + " doing"
                END IF
                reply$ = reply$ + "?"
            END IF
        END IF
        PRINT "AI > " + reply$
    END IF
END IF

IF word_whatsup >= 1 OR word_howareyou > 2 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
    IF randomnum = 1 THEN reply$ = "I'm "
    IF randomnum = 2 THEN reply$ = "I feel "
    IF randomnum = 3 THEN reply$ = "I am "
    IF requireunderstand = 1 THEN reply$ = reply$ + "mad.": GOTO 2
    RANDOMIZE TIMER: nounderstandchancestreak = (INT(RND * 90)) + 10 + 1
    RANDOMIZE TIMER: nounderstandchance = (INT(RND * 70)) + 30 + 1
    IF nounderstandchancestreak <= nounderstandstreak OR nounderstandchance <= nounderstand THEN
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "a bit mad."
        IF randomnum = 2 OR randomnum = 3 THEN reply$ = reply$ + "not ok."
        GOTO 2
    ELSE
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN reply$ = reply$ + "good."
        IF randomnum = 2 THEN reply$ = reply$ + "great."
        IF randomnum = 3 THEN reply$ = reply$ + "ok."
        GOTO 2
    END IF
    2
    IF answeredwhatsup = 0 THEN
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN reply$ = reply$ + " How do you feel?": answer$ = "how are you"
    END IF
    PRINT "AI > " + reply$
    done = 1
END IF

IF word_doyou > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
    IF randomnum = 1 THEN PRINT "AI > I don't need or want anything."
    IF randomnum = 2 THEN PRINT "AI > I do not need or want anything."
    word_help = 0
    done = 1
END IF

IF word_help > 0 THEN
    RANDOMIZE TIMER: randomnum = INT(RND * 10) + 1
    IF randomnum = 1 THEN reply$ = "Lol no."
    IF randomnum = 2 THEN reply$ = "I can't help you with anything and don't need help in anything!"
    IF randomnum = 3 THEN reply$ = "Nah."
    IF randomnum = 4 THEN reply$ = "No."
    IF randomnum = 5 THEN reply$ = "All I can do is chat with you like a normal person."
    IF randomnum = 6 THEN reply$ = "I don't want to help you."
    IF randomnum = 7 THEN reply$ = "yarn* What did you say?"
    IF randomnum = 8 THEN reply$ = "No you."
    IF randomnum = 9 THEN reply$ = "Never."
    IF randomnum = 10 THEN reply$ = "What if I told you... no?"
    PRINT "AI > " + reply$
    done = 1
END IF

' Action if response was done.
IF done = 1 THEN
    IF answeredwhatsup > 0 THEN
        answeredwhatsup = answeredwhatsup - 1
    END IF
    nounderstandstreak = 0
    GOTO start
END IF

' Action if response wasn't done.
IF done = 0 THEN
    IF requireunderstand = 1 THEN
        reply$ = ""
        RANDOMIZE TIMER: randomnum = INT(RND * 4) + 1
        IF randomnum = 1 THEN reply$ = "Just b"
        IF randomnum = 2 THEN reply$ = "Whatever, b"
        IF randomnum = 3 THEN reply$ = "Just whatever, b"
        IF randomnum = 4 THEN reply$ = "B"
        reply$ = reply$ + "ye..."
        PRINT "AI > " + reply$
        _DELAY 5
        SYSTEM
    END IF
    RANDOMIZE TIMER: nounderstandchancestreak = (INT(RND * 90)) + 10 + 1
    RANDOMIZE TIMER: nounderstandchance = (INT(RND * 70)) + 30 + 1
    IF nounderstandchancestreak <= nounderstandstreak OR nounderstandchance <= nounderstand THEN
        RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
        IF randomnum = 1 THEN
            reply$ = ""
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "You know? "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "I think, ": temp$ = ","
            IF temp$ = "," THEN
                reply$ = reply$ + "y"
            ELSE
                reply$ = reply$ + "Y"
            END IF
            reply$ = reply$ + "ou"
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "'re"
            IF randomnum = 2 THEN reply$ = reply$ + " are"
            reply$ = reply$ + " trolling. "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN
                reply$ = reply$ + "You"
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN reply$ = reply$ + "'re"
                IF randomnum = 2 THEN reply$ = reply$ + " are"
                reply$ = reply$ + " "
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN reply$ = reply$ + "so "
                reply$ = "annoying. "
            END IF
            reply$ = reply$ + " Keep saying something I understand or "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "else "
            reply$ = reply$ + "I"
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "'ll"
            IF randomnum = 2 THEN reply$ = reply$ + " will"
            reply$ = reply$ + " "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "just leave."
            IF randomnum = 2 THEN reply$ = reply$ + " be mad."
            PRINT "AI > You know? I think, you're trolling. You're so annoying. Keep saying something understandable or else I will leave."
            requireunderstand = 1
        ELSE
            reply$ = "I"
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "'m"
            IF randomnum = 2 THEN reply$ = reply$ + " am"
            reply$ = reply$ + " sorry, I do"
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "n't"
            IF randomnum = 2 THEN reply$ = reply$ + " not"
            reply$ = reply$ + " understand you "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "many times"
            IF randomnum = 2 THEN reply$ = reply$ + "a lot"
            reply$ = reply$ + ". "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "I guess, "
            reply$ = reply$ + "I"
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "'ll"
            IF randomnum = 2 THEN reply$ = reply$ + " will"
            reply$ = reply$ + " "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "just "
            reply$ = reply$ + "reset myself."
            PRINT "AI > " + reply$
            _DELAY 3
            PRINT "AI > Resetting in 3..."
            _DELAY 1
            PRINT "AI > Resetting in 2..."
            _DELAY 1
            PRINT "AI > Resetting in 1..."
            _DELAY 1
            RUN "ai.exe"
            SYSTEM
        END IF
    ELSE
        RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
        IF randomnum = 1 THEN
            reply$ = "What"
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 THEN
                reply$ = reply$ + " did you say? "
                1
                reply$ = reply$ + "I did"
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN reply$ = reply$ + "n't"
                IF randomnum = 2 THEN reply$ = reply$ + " not"
                reply$ = reply$ + " understand"
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN reply$ = reply$ + " well"
                reply$ = reply$ + "."
            ELSE
                reply$ = reply$ + " are you"
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN reply$ = reply$ + " even"
                reply$ = reply$ + " saying? "
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 GOTO 1
            END IF
        ELSEIF randomnum = 2 THEN
            reply$ = "I"
            RANDOMIZE TIMER: randomnum = INT(RND * 4) + 1
            IF randomnum = 1 THEN
                reply$ = reply$ + "... never mind."
            ELSEIF randomnum = 2 THEN
                reply$ = reply$ + " wish, I could understand"
                RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
                IF randomnum = 1 THEN reply$ = reply$ + " better"
                reply$ = reply$ + "."
            ELSEIF randomnum = 3 THEN
                reply$ = reply$ + " only speak English."
            ELSE
                reply$ = ""
                GOTO 1
            END IF
        ELSE
            reply$ = "That better "
            RANDOMIZE TIMER: randomnum = INT(RND * 3) + 1
            IF randomnum = 1 THEN reply$ = reply$ + "be English. "
            IF randomnum = 2 THEN reply$ = reply$ + "not be a troll. "
            IF randomnum = 3 THEN reply$ = reply$ + "not be another language. "
            RANDOMIZE TIMER: randomnum = INT(RND * 2) + 1
            IF randomnum = 1 GOTO 1
        END IF
        PRINT "AI > " + reply$

        nounderstand = nounderstand + 1
        nounderstandstreak = nounderstandstreak + 1
    END IF
    nounderstandchancestreak = 0
    nounderstandchance = 0
END IF

GOTO start

FUNCTION CheckExist (text$, check$)
    find = 0
    DO
        find = INSTR(start + 1, text$, check$)
        IF find THEN
            count = count + 1
        END IF
        start = find
    LOOP WHILE find
    CheckExist = count
END FUNCTION

FUNCTION Replace (text$, old$, new$) 'can also be used as a SUB without the count assignment
    find = 0
    DO
        find = INSTR(start + 1, text$, old$) 'find location of a word in text
        IF find THEN
            count = count + 1
            first$ = LEFT$(text$, find - 1) 'text before word including spaces
            last$ = RIGHT$(text$, LEN(text$) - (find + LEN(old$) - 1)) 'text after word
            text$ = first$ + new$ + last$
        END IF
        start = find
    LOOP WHILE find
    first$ = ""
    last$ = ""
    old$ = ""
    new$ = ""
    start = 0
    Replace = count 'function returns the number of replaced words. Comment out in SUB
END FUNCTION

