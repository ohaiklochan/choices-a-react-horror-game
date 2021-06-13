# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Choices.destroy_all

User.create(name: "Chloe", age: "31")

# 1st Choice
Choice.create(prompt: "Your work day has ended. You wait for the elevator. You see Cassandra, a girl that works with you on the 32nd floor of your building. You both are the last two done for the night. You talk about how hard the work day was and that the boss isn’t giving you any breaks. She agrees with you as you both enter the elevator.", choiceA: "Notice the flashing lights of the floor", choiceB: "Notice the unnerving quiet of the floor", turn: 1, path: "left", route: "none", from: "Start")

# 2nd Choice
Choice.create(prompt: "You notice that the lights are flashing above you. You brush it off as nothing.", choiceA: "Direct Cassandra to go to the elevator first.", choiceB: "You go into the elevator first.", turn: 2, path: "left", route: "Good", from: "Notice the flashing lights of the floor")

# 3rd Choice
Choice.create(prompt: "You notice it’s quiet. You are familiar with the quiet. Too many days you’ve left so late that it’s second nature to you.", choiceA: "Direct Cassandra to go to the elevator first.", choiceB: "You go into the elevator first.", turn: 2, path: "Right", route: "Bad", from: "Notice the unnerving quiet of the floor")

# 4th Choice
Choice.create(prompt: "You open your hand and direct Cassandra to lead into the elevator. She smiles politely and walks in. You follow her inside. She hits the button to the garage.", choiceA: "Notice that the light is flickering in the elevator.", choiceB: "Notice the time.", turn: 3, path: "left", route: "Good", from: "Direct Cassandra to go to the elevator first.")

# 5th Choice
Choice.create(prompt: "You hastily walk inside before Cassandra and she follows you inside. You push the button to the garage floor.", choiceA: "Notice that the light is flickering in the elevator.", choiceB: "Notice the time.", turn: 3, path: "right", route: "Bad", from: "You go into the elevator first.")

# 6th
Choice.create(prompt: "‘That’s weird,’ you think to yourself. The lights must be wonky in the building. The elevator is quiet but fast. You can feel yourself speed down towards the garage. You’re exhausted. Suddenly, the lights turn off.", choiceA: "Call out for Cassandra.", choiceB: "Grab your phone and take out the flashlight.", turn: 4, path: "left", route: "Good", from: "Notice that the light is flickering in the elevator.")

# 7th
Choice.create(prompt: "You look at your watch. 11:48pm. ‘Ugh,’ you think to yourself. It’s so late. I should have been home by now. Suddenly, the lights turn off.", choiceA: "Call out for Cassandra.", choiceB: "Grab your phone and take out the flashlight.", turn: 4, path: "right", route: "Bad", from: "Notice the time.")

# 8th 
Choice.create(prompt: "You call out for Cassandra. She hastily grabs her phone and turns on the flashlight. “I’m okay,” she says, anxiously. She points her flashlight at the ground and then to the ceiling. You can still feel the elevator moving downwards. You start to look around the small elevator with Cassandra, when you feel something behind you.", choiceA: "Turn around quickly", choiceB: "Turn around slowly", turn: 5, path: "left", route: "Good", from: "Call out for Cassandra.")

# 9th
Choice.create(prompt: "“I’m okay,” Cassandra says, anxiously. You look around and point your flashlight at the ground, then to the ceiling, then to Cassandra. You still feel the elevator moving downwards. You start to investigate the small elevator with Cassandra, when you feel something behind you.", choiceA: "Turn around quickly", choiceB: "Turn around slowly", turn: 5, path: "right", route: "Bad", from: "Grab your phone and take out the flashlight.")

# 10
Choice.create(prompt: "You gasp and turn behind you quickly. ‘Nothing is there,’ you think to yourself. You made Cassandra jump a little. The lights turn back on. You both look around you and give a sigh of relief as the elevator opens up to the garage.", choiceA: "Have Cassandra exit first", choiceB: "You exit first", turn: 6, path: "left", route: "Good", from: "Turn around quickly.")

# 11
Choice.create(prompt: "You feel the hairs stand up on the back of your neck and your heart is racing. ‘Is there something behind me?’ You ask yourself. You see nothing there. Suddenly, the lights turn back on. You and Cassandra look around and give a sigh of relief as the elevator opens up to the garage.", choiceA: "Have Cassandra exit first", choiceB: "You exit first", turn: 6, path: "right", route: "Bad", from: "Turn around slowly.")

# 12
Choice.create(prompt: "You have Cassandra lead the way. She hurriedly steps out into the garage. Her car is right to your left, right outside of the elevator. You got in late this morning, and therefore, your car is a little ways away in the garage. You wish Cassandra a good night as she gets into her car and start walking the hike toward your car. You start hearing footsteps behind you.", choiceA: "Look behind you", choiceB: "Keep walking", turn: 7, path: "left", route: "Good", from: "Have Cassandra exit first.")

# 13
Choice.create(prompt: "You step outside of the elevator first. “Weird ride, huh? Well, have a good night!” You say to Cassandra as she opens up her car door. Her car was parked right outside the elevator. You got in late this morning, so your car is a little ways away in the garage. You start traveling down towards your car, when you hear footsteps behind you.", choiceA: "Look behind you", choiceB: "Keep walking", turn: 7, path: "right", route: "Bad", from: "You exit first.")

# 14
Choice.create(prompt: "You stop and look behind you. You call out for Cassandra, but you notice that her car is already gone. The garage lights flicker. You turn back and start walking faster to your car. You hear the footsteps again, this time, gaining energy. You grab your keys from your pocket and click the unlock button. Upon hearing the second ‘beep’ of the car unlock, the garage lights shut off. You stop. You hear breathing in your ear but you can’t see anything there.", choiceA: "Run to your car", choiceB: "Hit the alarm button on your keys", turn: 8, path: "left", route: "Good", from: "Look behind you.")

# 15
Choice.create(prompt: "You keep walking towards your car and you hear footsteps gaining energy. The garage lights start to flicker. You grab your keys out of your pocket and click the unlock button. Upon the second ‘beep’ of the car unlock, the garage lights shut off. You stop. You hear breathing in your ear but you can’t see anything there.", choiceA: "Run to your car", choiceB: "Hit the alarm button on your keys", turn: 8, path: "right", route: "Bad", from: "Keep walking.")

# 16
Choice.create(prompt: "You sprint towards your car. You hear the footsteps pick up behind you. Your heart is beating fast and you see the shadow of your car just enough so you don’t run into it. You’re almost there, but the footsteps are gaining on you now. You see a dark figure at the corner of your eye - it looks vaguely like a tall man. It’s following you. Suddenly, you reach the big shadow of your car and reach for the handle. The lights turn back on. You look around you. Nothing. No one.", choiceA: "Get in the car", choiceB: "Check your surroundings", turn: 9, path: "left", route: "Good", from: "Run to your car.")

# 17
Choice.create(prompt: "Frantically, you hit the alarm button on your keys. The lights from your car fill the area and you see the light shadow of your car with each blinking light. You feel less anxious with the lights blinking and the loud horn blaring. As you walk towards the blinking lights, you see a shadow at the corner of your eye. You don’t turn to look at it, but you don’t stop walking. The shadow vaguely looks like a tall man. It’s following you. You’re almost to your car and you pick up the pace. The figure and the footsteps match your pace, but it starts gaining on you. You quickly reach your hand out to grab the car door handle when the lights turn back on. Your car alarm stops. You look around you. Nothing. No one.", choiceA: "Get in the car", choiceB: "Check your surroundings", turn: 9, path: "right", route: "Bad", from: "Hit the alarm button on your keys.")

# 18
Choice.create(prompt: "You quickly open the door and slam it behind you. Finally, a place of solitude. You take a deep breath and close your eyes. You open your eyes and something catches your stare in the rearview mirror. A dark figure… smiling at you. Chills run down your spine and you look in the back seat. Nothing. You turn on your car and leave the garage.", choiceA: "Don’t turn on your music.", choiceB: "Turn on your music.", turn: 10, path: "left", route: "Good", from: "Get in your car.")

# 19
Choice.create(prompt: "You walk around your car checking every space, just in case you were correct that someone was near you. Nothing. You look under your car. Nothing. You slowly open your car door and shut it behind you. Finally, a place of solitude. You take a deep breath and close your eyes. You open your eyes and something catches your stare in the rearview mirror. A dark figure… smiling at you. Chills run down your spine and you look in the back seat. Nothing. You turn on your car and leave the garage.", choiceA: "Don’t turn on your music.", choiceB: "Turn on your music.", turn: 10, path: "right", route: "Bad", from: "Check your surroundings.")

# 20
Choice.create(prompt: "You travel out of the garage, your heart still beating out of your chest from what you just saw - or didn’t see. You choose not to listen to music. You choose to focus on driving home - anything to get your mind off of what just happened. You’ve been driving for a while, maybe half an hour. It’s dark, but the city is well lit. You’re almost home. You’re still exhausted. Suddenly, your radio turns on. Static.", choiceA: "Turn off the radio", choiceB: "Keep it playing", turn: 11, path: "left", route: "Good", from: "Don’t turn on your music.")

# 21
Choice.create(prompt: "You travel out of the garage, your heart still beating out of your chest from what you just saw - or didn’t see. You choose to turn on the radio - anything to get your mind off of what just happened. You’ve been driving for a while, maybe half an hour. It’s dark, but the city is well lit. You’re almost home. You’re still exhausted. Suddenly, your radio glitches and all you hear is static.", choiceA: "Turn off the radio", choiceB: "Keep it playing", turn: 11, path: "right", route: "Bad", from: "Turn on your music.")

# 22
Choice.create(prompt: "You press the volume button down to turn off the radio. ‘That was weird,’ you think to yourself. The radio turns back on. You hear faint talking behind the static. You turn the volume up to hear what they’re saying. You suddenly hear laughter, louder than the static. ‘DON’T LOOK BEHIND YOU - HAHAHAHA’ Chills run down your spine. Something catches your peripheral vision in the rear-view mirror.", choiceA: "Look in the mirror", choiceB: "Keep driving", turn: 12, path: "left", route: "Good", from: "Turn off the radio")

# 23
Choice.create(prompt: "‘Weird,’ you think to yourself. You hear faint talking behind the static. You turn the volume up to hear what they’re saying. You suddenly hear laughter, louder than the static. ‘DON’T LOOK BEHIND YOU - HAHAHAHA’ Chills run down your spine. Something catches your peripheral vision in the rear-view mirror.", choiceA: "Look in the mirror", choiceB: "Keep driving", turn: 12, path: "right", route: "Bad", from: "Keep it playing")

# 24
Choice.create(prompt: "You slowly look up towards your rear-view mirror. Your heart sinks. You see that dark figure, smiling at you. You step on the gas - you go faster. You’re speeding to get away from this figure in the back seat. Suddenly, you feel a hand grab your shoulder. You speed more. You notice the empty coffee cup in your cup holder and grab it. You throw it into the back seat. You look in the rearview once more - the figure is gone. You’re panting; your heart is pounding. You race to your driveway and pull in.", choiceA: "You check the back seat", choiceB: "You get out and check the back seat", turn: 13, path: "left", route: "Good", from: "Look in the mirror")

# 25
Choice.create(prompt: "You keep driving. You start to feel anxious. You push the gas pedal a little more, speeding home. Suddenly, you feel a hand grab your shoulder. You speed more. You notice the empty coffee cup in your cup holder and grab it. You throw it into the back seat. You look in the rearview once more - the figure is gone. You’re panting; your heart is pounding. You race to your driveway and pull in.", choiceA: "You check the back seat", choiceB: "You get out and check the back seat", turn: 13, path: "right", route: "Bad", from: "Keep driving")

# 26
Choice.create(prompt: "You muster up enough courage to look in your back seat, grabbing your keys as a weapon. You see nothing. You hear nothing. Your heart is still racing, but you feel calmer. You take a deep breath and step out of your car. You shut the car door and look in. Everything seems normal. You look around your car - it’s silent on your street, almost too quiet. You walk quickly to your door, put the key in the lock and open it. You quickly shut the door behind you and turn on the light.", choiceA: "Sit and relax for a bit in your living room", choiceB: "Grab a bite to eat in your kitchen", turn: 14, path: "left", route: "Good", from: "You check the back seat")

# 27
Choice.create(prompt: "You grab your keys as a weapon, just in case you need to fight. You take a deep breath and step out of your car. You shut the car door and look in. Everything seems normal. Nothing is there. Everything is quiet. You look around your car - it’s silent on your street, almost too quiet. You walk quickly to your door, put the key in the lock and open it. You quickly shut the door behind you and turn on the light.", choiceA: "Sit and relax for a bit in your living room", choiceB: "Grab a bite to eat in your kitchen", turn: 14, path: "right", route: "Bad", from: "You get out and check the back seat")

# 28
Choice.create(prompt: "You decide to relax a bit before bed. The events for today make you think that maybe, it would be beneficial to relax after a stressful day at work. Maybe you’re thinking you’re going crazy from all the work stress. You sit on your couch and turn on the TV. Your shoulders relax as you watch a comedic show. You let out a tired laugh and start to yawn. You suddenly see your TV start to glitch. Confused, you change the channel. The TV is still glitching - glitching - glitching - static. You try to turn off the TV with the remote. No use; it’s still on. You walk up towards the TV and start to press the power button. No use; it’s still on. The static level changes and without warning, you hear the same maniacal laughter you heard on your radio earlier in the car. “DON’T LOOK BEHIND YOU - HAHAHAHAHAHA!” You grab the plug of the TV and disconnect. That’s enough for the day.", choiceA: "Brush your teeth", choiceB: "Get your pajamas on", turn: 15, path: "left", route: "Good", from: "Sit and relax for a bit in your living room")

# 29
Choice.create(prompt: "You’re starving. You’re so stressed that you’ve worked up an appetite. You decide to grab something to eat in your fridge. Unfortunately, you forgot to go grocery shopping due to your busy schedule. All you have in your fridge is a block of cheese, milk, and a meat stick. You sigh and grab the meat stick; at least it’s something. You start eating the stick, slowly walking around your kitchen when suddenly you hear your television go off, but all you hear is static. You put the meat stick down and go to your living room. You try to turn off the TV with the remote. No use; it’s still on. You walk up towards the TV and start to press the power button. No use; it’s still on. The static level changes and without warning, you hear the same maniacal laughter you heard on your radio earlier in the car. “DON’T LOOK BEHIND YOU - HAHAHAHAHAHA!” You grab the plug of the TV and disconnect. That’s enough for the day.", choiceA: "Brush your teeth", choiceB: "Get your pajamas on", turn: 15, path: "right", route: "Bad", from: "Grab a bite to eat in your kitchen")

# 30
Choice.create(prompt: "You decide to get ready for bed. It’s pretty late anyway. You go to the bathroom and start to brush your teeth. You hear a bump at the window. A quick chill rushes down your back. Something catches your peripheral vision.", choiceA: "Look what’s outside your window", choiceB: "Walk away from the window", turn: 16, path: "left", route: "Good", from: "Brush your teeth")

# 31
Choice.create(prompt: "You decide to get ready for bed. It’s pretty late anyway. You go to your bedroom and change into your pajamas.You hear a bump at the window. A quick chill rushes down your back. Something catches your peripheral vision.", choiceA: "Look what’s outside your window", choiceB: "Walk away from the window", turn: 16, path: "right", route: "Bad", from: "Get your pajamas on")

# 32
Choice.create(prompt: "You slowly turn towards your window. Your blood runs cold. You see that figure again, smiling at you. It’s got glowing red eyes that you feel are piercing your soul. You slowly get to the window and close the blinds.", choiceA: "Go to the kitchen and grab a knife", choiceB: "Turn on all the lights", turn: 17, path: "left", route: "Good", from: "Look what’s outside your window")

# 33
Choice.create(prompt: "You walk away from the window. You can feel a cold chill running down your spine. You feel a knock right at the window. It’s light, but it gets louder and louder.", choiceA: "Go to the kitchen and grab a knife", choiceB: "Turn on all the lights", turn: 17, path: "right", route: "Bad", from: "Walk away from the window")

# 34
Choice.create(prompt: "You feel the need to protect yourself - so you run to the kitchen and grab a knife. You look all around you - you’re highly aware, on edge, and shaking. You run back to your bedroom.", choiceA: "Lock your door", choiceB: "Lock your window", turn: 18, path: "left", route: "Good", from: "Go to the kitchen and grab a knife")

# 35
Choice.create(prompt: "It’s too concerning having your lights off, you need to turn them all on. Switch by switch, you turn on every light in your house. You close all of your blinds as well. You run back to your bedroom.", choiceA: "Lock your door", choiceB: "Lock your window", turn: 18, path: "right", route: "Bad", from: "Turn on all the lights")

# 36
Choice.create(prompt: "You lock your door and slowly get on your bed. You start hearing a bump and knocking at your window. You stay completely still on your bed. CRASH outside your door. The door handle is shaking as though someone is trying to open it. Luckily, you knew enough to lock the door. After a while, the door handle stops moving. You start hearing your window open. “GO AWAY!” You scream. The window stops moving.", choiceA: "Stay up", choiceB: "Go to sleep", turn: 19, path: "left", route: "Good", from: "Lock your door")

# 37
Choice.create(prompt: "You lock your window and slowly get on your bed. You start hearing a bump and knocking at your window. Luckily, you knew enough to lock the window. You stay completely still on your bed. CRASH outside your door. The door handle is shaking as though someone is trying to open it. “GO AWAY!” You scream. The door handle stops moving.", choiceA: "Stay up", choiceB: "Go to sleep", turn: 19, path: "right", route: "Bad", from: "Lock your window")

# 38
Choice.create(prompt: "It was a rough night, but you made it. The alarm goes off. 6:00AM. You slowly walk up to your door and turn the handle. You open the door a crack and look out in the hallway. Nothing. It is silent. You open your door a little more and walk out, still looking around. Nothing. Silence. You walk around your house. You just hear the creak of the floors under your feet. Everything is calm and brightly lit. You take a sigh of relief and relax your shoulders. You go to the bathroom and close the door to use the toilet. You see the shower curtain start moving… Good Ending.", choiceA: "Restart", choiceB: "End Game", turn: 20, path: "left", route: "Good", from: "Stay up")

# 39
Choice.create(prompt: "After a while, it remains silent in your house. Your eyes start to get heavy with sleep. You lie down, hoping that this night will be over quickly. You blink and suddenly, you wake to your alarm reading 6:00AM. You let out a sigh of relief. You made it through the night. You get up from the bed. You hear a creak behind you - followed by the laughter…. Bad Ending.", choiceA: "Restart", choiceB: "End Game", turn: 20, path: "right", route: "Bad", from: "Go to sleep")


