<cfscript>
	goldForKill = 1023;
	
	writeOutput( "You have killed the Giant IE6 Monster a gained #goldForKill# gold!<br>" );

	joe = new Person( name="Joe" );
	jake = new Person( name="Jake" );
	emily = new Person( name="Emily" );
	sophia = new Person( name="Sophia" );
	brian = new Person( name="Brian" );

	developers = new Group( name="Developers", members=[ joe, jake, emily ] );
	
	individuals = [ sophia, brian ];

	groups = [ developers ];

	totalToSplitBy = arrayLen( individuals ) + arrayLen( groups );
	
	amountForEach = int( goldForKill / totalToSplitBy );
	leftOver = goldForKill MOD totalToSplitBy;
	
	for( individual in individuals ) {
		individual.gold += amountForEach + leftOver;
		leftOver = 0;
		individual.stats();
	}
	
	for( group in groups ) {
		amountForEachGroupMember = int( amountForEach / arrayLen( group.members ) );
		leftOverForGroup = amountForEachGroupMember MOD arrayLen( group.members );
		
		for( member in group.members ) {
			member.gold += amountForEachGroupMember + leftOverForGroup;
			leftOverForGroup = 0;
			member.stats();
		}
	}
</cfscript>
