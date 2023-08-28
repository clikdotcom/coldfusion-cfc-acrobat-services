component {

	this.name = 'aas_demo';

	this.serialization = {
		preserveCaseForStructKey: true
	};

	this.cache["default"] = {
		  class: 'lucee.runtime.cache.ram.RamCache'
		, storage: false
		, custom: {"timeToIdleSeconds":3600,"timeToLiveSeconds":"0"}
		, default: 'object'

	};

	void function onApplicationStart() {

		var system = createObject('java', 'java.lang.System');
		application.CLIENT_ID = system.getProperty('ADOBEPDF_CLIENT_ID');
		application.CLIENT_SECRET = system.getProperty('ADOBEPDF_CLIENT_SECRET');
	
	}
}