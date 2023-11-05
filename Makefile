dev:
		foreman start -f procfile.dev

start:
		RACK_ENV=production rackup config.ru
