# Runs the standard Go benchmark test on the current package.
bench:
	@go test -bench=.
.PHONY: bench
