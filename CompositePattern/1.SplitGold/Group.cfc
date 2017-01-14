component extends="Person" output="true" {

	this.name = "";
	this.members = [];

	public Group function init( required string name, required array members ) {
		this.name = arguments.name;
		this.members = arguments.members;

		return this;
	}

}
