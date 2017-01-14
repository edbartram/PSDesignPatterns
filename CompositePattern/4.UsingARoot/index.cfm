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
	
	parties =  new Group( name="Everyone", members=[ developers, sophia, brian ] );

	parties.setGold( parties.getGold() + goldForKill );
	parties.stats();
</cfscript>
