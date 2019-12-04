sub EVENT_SAY {
	if($text=~/hail/i) {
		quest::attack($name);
		quest::say("How dare you speak to me, you impudent sack of nauseating refuse! For this outrage of insubordination I call forth the vengeance of House Mistmoore! You now have little time left to live.  Enjoy it.");
	}
}
