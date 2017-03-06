# Installs a pre-commit Git hook that executes "make sanity" prior to commiting.
precommit:
	@echo "make sanity" > .git/hooks/pre-commit
	@chmod +x .git/hooks/pre-commit
.PHONY: precommit
