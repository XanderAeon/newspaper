function vinyis_column(){
array_push(global.paper.columns, new column("Vinyis", [
"A little bit of everything as necessary for my idea, but mostly design, art and writing because I hate programming.",
"Arrgh, I'm bad at open-ended questions! It's me (Vinyis), recent-ish Touhou fan and just as recently amateur gamedev. I'm currently in the middle of an Art History degree, and like to do art in my spare time often centered around 3d and game development. I play all kinds of games, but while I'm not really a bullet hell player I got into Touhou because of its music, aesthetic, and more importantly massive community of creators that use these to make tons of different things.",
"Programming. Well, in all seriousness, I probably struggle the most with self-motivation and finding a good workflow, so I find jams a great source of pressure for developing skills.",
"Perhaps. As a kid I once got into a book of local birds and learned to recognize a few calls, and then now I appreciate birds a lot because I have friends who are interested in them and I love reading about animal intelligence, where they come up often. By extension, my favorite birds are probably corvids. Maybe the Common Raven if I had to pick, but I also like seeing the Mountain Chickadees in my yard.",
"I'm not confident in finishing it by the deadline, but it will be a small and cozy 'bird feeding simulator' where you scatter seeds to make Touhou-cosplaying birds appear and get a line or two of quirky dialogue from them. The first bird I made was the scrunkly blorbo from that one meme, so birders may not be seeing 100% real birds (although it's real to me).",
"Northern Mockingbird. Living in North America, it replicates other species of birds and stays up past midnight making noise. Although maybe that's more of a meta response."
],
[
"What is your specialty when it comes to development? Are you a programmer? Do you focus on the presentation such as music or artwork? Or are you a renaissance man and just do a bit of everything?",
"Tell us a bit about yourself. Feel free to overshare to your heart's content.",
"What's the most difficult part of the game development process for you?",
"Would you consider yourself a fan of birds? What is your favorite, if you have any?",
"What is your game? What will it be like? What birds will the birders be able to expect?!",
"If you had to describe your game as a species of bird, which would it be?"
]));
if not (array_contains(global.unlocks, "vinyis")) array_push(global.unlocks, "vinyis");
}