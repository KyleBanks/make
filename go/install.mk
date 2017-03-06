ifndef INSTALL_PKG
	INSTALL_PKG = .
endif

# Builds and installs the appliction.
install:
	@go install -v $(INSTALL_PKG)
	@echo "Installed."
.PHONY: install
