ifndef RELEASE_PKG
	RELEASE_PKG = .
endif

ifndef RELEASE_PLATFORMS
	RELEASE_PLATFORMS = darwin/386 darwin/amd64 linux/386 linux/amd64 linux/arm windows/386 windows/amd64
endif

# Trim spaces in the release platforms string
RELEASE_PLATFORMS := $(strip $(RELEASE_PLATFORMS))

# Creates release binaries for each supported platform/architecture.
release: | sanity
	@echo "Making release of $(RELEASE_PKG) v$(VERSION)"
	@gox -osarch="$(RELEASE_PLATFORMS)" \
                                -output "bin/{{.Dir}}_$(VERSION)_{{.OS}}_{{.Arch}}" $(RELEASE_PKG)
.PHONY: release
