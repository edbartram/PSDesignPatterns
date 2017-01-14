component output="true" {

	this.name = "";
	this.gold = 0;

	public Person function init( required string name ) {
		this.name = arguments.name;

		return this;
	}

	public void function stats() {
		writeOutput( this.name & " has " & this.gold & " gold coins.<br>" );
	}
}
