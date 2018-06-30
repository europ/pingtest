GEMNAME=pingtest

# create gem file
.PHONY: make
make: clean
	@gem build -V $(GEMNAME).gemspec

# remove gem file
.PHONY: clean
clean:
	@rm -fv $(GEMNAME)*.gem

# install local gem
.PHONY: install
install: uninstall make
	@gem install -l -V ./$(GEMNAME)*.gem

# uninstall gem
.PHONY: uninstall
uninstall:
	@gem uninstall -a -x -V $(GEMNAME)
	@gem cleanup -V $(GEMNAME)

# push a new gem
.PHONY: update
update: make
	@gem push -V $(GEMNAME)*.gem

# print remote versions of gem
.PHONY: status
status:
	@gem list -r -a -q pingtest

# execute the gem's executable file
.PHONY: ping
ping:
	@ruby -Ilib ./bin/$(GEMNAME)
