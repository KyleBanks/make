# Creates release binaries for each supported platform/architecture.
release: | sanity
	@gox -osarch="darwin/386 darwin/amd64 linux/386 linux/amd64 linux/arm windows/386 windows/amd64" \
		-output "bin/{{.Dir}}_{{.OS}}_{{.Arch}}" .
.PHONY: release
