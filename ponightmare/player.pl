sub EVENT_CLICKDOOR {
  if($doorid == 59) {
    if(defined($qglobals{pop_pon_construct}) && defined($qglobals{pop_pon_hedge_jezith})) {
      if(quest::has_zone_flag(221) != 1) {
        quest::set_zone_flag(221);
        $client->Message(15, "You have received a character flag!");
      }
    }
  }
}

sub EVENT_LOOT {
	if ($looted_id == 11474 && $class eq "Wizard") {  #Loot Fluxing Rune
		if ($client->GetGlobal("wiz_epic") == "1" && undef == $client->GetGlobal("wiz_pon_chest")) {
			my $x = $client->GetX();
			my $y = $client->GetY();
			my $z = $client->GetZ();
			my $h = $client->GetHeading();
			quest::spawn2(283157, 0, 0, $x, $y, $z, $h);
			quest::setglobal("wiz_pon_chest","1",5,"F");
		}
	}
}