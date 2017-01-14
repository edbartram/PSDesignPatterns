<cfscript>
	goldForKill = 1023;
	
	writeOutput( "You have killed the Giant IE6 Monster a gained #goldForKill# gold!<br>" );

	joe = new Person( name="Joe" );
	jake = new Person( name="Jake" );
	emily = new Person( name="Emily" );
	sophia = new Person( name="Sophia" );
	brian = new Person( name="Brian" );
	oldBob = new Person( name="Old Bob" );
	newBob = new Person( name="New Bob" );

	bobs = new Group( name="Bobs", members=[ oldBob, newBob ] );
	developers = new Group( name="Developers", members=[ joe, jake, emily, bobs ] );
	
	parties = [ developers, sophia, brian ];

	totalToSplitBy = arrayLen( parties );
	
	amountForEach = int( goldForKill / totalToSplitBy );
	leftOver = goldForKill MOD totalToSplitBy;

	for( partyMember in parties ) {
		partyMember.setGold( partyMember.getGold() + amountForEach + leftOver );
		leftOver = 0;
		partyMember.stats();
	}
</cfscript>
