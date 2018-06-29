GEMNAME=pingtest

.PHONY: make
make: clean
	@gem build -V $(GEMNAME).gemspec

.PHONY: clean
clean:
	@rm -fv $(GEMNAME)*.gem

.PHONY: install
install: uninstall make
	@gem install -V $(GEMNAME)*.gem

.PHONY: uninstall
uninstall:
	@gem uninstall -V $(GEMNAME)
	@gem cleanup -V $(GEMNAME)

.PHONY: update
update: make
	@gem push -V $(GEMNAME)*.gem
