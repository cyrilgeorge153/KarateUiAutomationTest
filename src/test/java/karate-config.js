function fn() {
	//   browser settings, if not set it takes chrome
	var browser = karate.properties['browser'] || 'chrome';
	karate.log('the browser set is: ' + browser + ', default: "chrome"');

	// grid flag, if not set it takes false. The grid url is in this format http://localhost:4444/wd/hub
	var grid_url = karate.properties['grid_url'] || false;
	karate.log('the grid url set is: ' + grid_url + ', default: false');

	// configurations.
	var config = {
		aut_url: 'https://www.saucedemo.com/',
		username: 'standard_user',
		password: 'secret_sauce'
	};
	if (browser == 'chrome') {
		if (!grid_url) {
			//for linux copy chrome driver insider /usr/bin/
			karate.configure('driver', { type: 'chromedriver', executable: '/usr/bin/chromedriver', highlight: true, highlightDuration: 1000 });
			//for windows just give the path where chromedriver is located. Here used inside project itself.
//			karate.configure('driver', { type: 'chromedriver', executable: 'src/test/java/examples/users/chromedriver.exe', highlight: true, highlightDuration: 1000 });//
			karate.log("Selected Chrome");
		}
		else {
			karate.configure('driver', { type: 'chromedriver', start: false, webDriverUrl: grid_url });
			karate.log("Selected Chrome in grid");
		}
	}
	else if (browser == 'firefox') {
		if (!grid_url) {
			karate.configure('driver', { type: 'geckodriver', executable: 'src/test/java/examples/users/geckodriver.exe', highlight: true, highlightDuration: 1000 });
			karate.log("Selected Firefox");
		}
		else {
			karate.configure('driver', { type: 'geckodriver', start: false, webDriverUrl: grid_url });
			karate.log("Selected Firefox in grid");
		}
	}
	else if (browser == 'headlessfirefox') {
		if (!grid_url) {
			karate.configure('driver', { type: 'geckodriver', executable: 'src/test/java/examples/users/geckodriver.exe', showDriverLog: true, webDriverSession: { "capabilities": { "alwaysMatch": { "moz:firefoxOptions": { args: ["-headless"] } } } } });
			karate.log("Selected Headless Firefox ");
		}
		else {
			karate.configure('driver', { type: 'chromedriver', start: false, webDriverUrl: grid_url });
			karate.log("Selected Firefox in grid");
		}
	}
	else if (browser == 'headlesschrome') {
		if (!grid_url) {
			//for linux copy chrome driver insider /usr/bin/
			karate.configure('driver', { type: 'chromedriver', executable: '/usr/bin/chromedriver', webDriverSession: { desiredCapabilities: { browserName: 'chrome', "goog:chromeOptions": { headless: true } } } });
			//for windows just give the path where chromedriver is located. Here used inside project itself.
			//karate.configure('driver', { type: 'chromedriver', executable: 'src/test/java/examples/users/chromedriver.exe', webDriverSession: { desiredCapabilities: { browserName: 'chrome', "goog:chromeOptions": { headless: true } } } });
			karate.log("Selected Headless Chrome");
		}
		else {
			karate.configure('driver', { type: 'chromedriver', start: false, webDriverUrl: grid_url });
			karate.log("Selected Chrome in grid");
		}
	}
	else if (browser == 'nativechrome') {
		if (!grid_url) {
			karate.configure('driver', { type: 'chrome', headless: false, highlight: true, highlightDuration: 1000 });
			karate.log("Selected Native Chrome");
		}
		else {
			karate.configure('driver', { type: 'chrome', start: false, webDriverUrl: grid_url });
			karate.log("Selected Native Chrome in grid");
		}
	}
	else if (browser == 'headlessnativechrome') {
		if (!grid_url) {
			karate.configure('driver', { type: 'chrome', headless: true });
			karate.log("Selected Headless Native Chrome");
		}
		else {
			karate.configure('driver', { type: 'chrome', start: false, webDriverUrl: grid_url });
			karate.log("Selected Headless Native Chrome in grid");
		}
	}
	return config;
}