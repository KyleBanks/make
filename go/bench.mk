# Runs the standard Go benchmark test on all packages.
bench:
	@go list ./... | grep -v vendor/ | xargs go test -bench=.
.PHONY: bench
