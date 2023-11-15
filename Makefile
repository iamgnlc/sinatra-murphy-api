dev:
		foreman start -f procfile.dev

start:
		bundle exec puma -C config/puma.rb
