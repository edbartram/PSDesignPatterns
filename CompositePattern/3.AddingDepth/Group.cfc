component output="true" implements="Party" {

	this.name = "";
	this.members = [];

	public Group function init( required string name, required array members ) {
		this.name = arguments.name;
		this.members = arguments.members;

		return this;
	}

	public numeric function getGold() {
		var totalGold = 0;

		for( var member in this.members ) {
			totalGold += member.getGold();
		}

		return totalGold;
	}

	public void function setGold( required numeric gold ) {
		var eachSplit = int( arguments.gold / arrayLen( this.members ) );
		var leftOver = int( arguments.gold MOD arrayLen( this.members ) );

		for( var member in this.members ) {
			member.setGold( member.getGold() + eachSplit + leftOver );
			leftOver = 0;
		}
	}

	public void function stats() {
		for( var member in this.members ) {
			member.stats();
		}
	}

}
