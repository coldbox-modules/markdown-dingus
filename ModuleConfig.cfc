/**
* Module Config for the Dingus Application
*/
component {

	// Module Properties
	this.title 				= "Markdown Dingus";
	this.author 			= "Ortus Solutions";
	this.webURL 			= "https://www.ortussolutions.com";
	this.description 		= "The ColdFusion (CFML) version of the Markdown Dingus testing application";
	this.version			= "1.0.0";
	// If true, looks for views in the parent first, if not found, then in the module. Else vice-versa
	this.viewParentLookup 	= true;
	// If true, looks for layouts in the parent first, if not found, then in module. Else vice-versa
	this.layoutParentLookup = true;
	// Module Entry Point
	this.entryPoint			= "dingus";
	// Model Namespace
	this.modelNamespace		= "dingus";
	// CF Mapping
	this.cfmapping			= "dingus";
	// Dependencies
	this.dependencies		= [ "cbmarkdown" ];

	/**
	* Configure
	*/
	function configure(){
		// SES Routes
		routes = [
			// Module Entry Point
			{ pattern="/", handler="main", action="index" },
			// Convention Route
			{ pattern="/:handler/:action?" }
		];
	}

	/**
	* Fired when the module is registered and activated.
	*/
	function onLoad(){
	}

	/**
	* Fired when the module is unregistered and unloaded
	*/
	function onUnload(){

	}

}