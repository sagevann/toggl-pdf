default: s

run:
	@coffee --nodejs --stack_size=4096 app/server.coffee

dist: dist_dir
	@coffee -co dist app
	@cp -R app/fonts dist/
	@cp -R app/images dist/
	@cp package.json dist/
	@cd dist && npm install --silent

dist_dir:
	@if [ ! -d "dist" ]; then mkdir -p dist; fi

clean:
	@rm *.pdf

i:
	@coffee --nodejs --stack_size=4096 test/test_invoice.coffee && open invoice.pdf

p:
	@coffee --nodejs --stack_size=4096 test/test_payment.coffee && open payment.pdf

s:
	@coffee --nodejs --stack_size=4096 test/test_summary.coffee && open summary.pdf

d:
	@coffee --nodejs --stack_size=4096 test/test_detailed.coffee && open detailed.pdf

w:
	@coffee --nodejs --stack_size=4096 test/test_weekly.coffee && open weekly.pdf

rollout:
	crap production1 && sleep 30 && crap production2
