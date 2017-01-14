component output="true" accessors="false" implements="Party" {

	this.name = "";
	this.gold = 0;

	public Person function init( required string name ) {
		this.name = arguments.name;

		return this;
	}

	public numeric function getGold() {
		return this.gold;
	}

	public void function setGold( required numeric gold ) {
		this.gold = arguments.gold;
	}

	public void function stats() {
		writeOutput( this.name & " has " & getGold() & " gold coins.<br>" );
	}
}
