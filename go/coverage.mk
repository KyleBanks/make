# Runs a coverage test on all packages and opens a browser tab displaying each 
# package's coverage report.
coverage:
	@pkgs=$$(go list ./... | grep -v vendor/) ; \
	pkgs=($${pkgs// / }) ; \
	for i in "$${pkgs[@]}" ; \
	do \
		dir="./bin/test/$$i" ; \
		mkdir -p $$dir ; \
   		go test -coverprofile=$$dir/coverage.out $$i ; \
   		go tool cover -html=$$dir/coverage.out ; \
	done
.PHONY: coverage
