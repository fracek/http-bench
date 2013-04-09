all: build

.PHONY: build test

LIB_SOURCES: $(wildcard */*.dylan) \
             $(wildcard */*.lid)

REGISTRIES = `pwd`/registry:`pwd`/ext/http/registry:`pwd`/ext/serialization/registry

build: $(LIB_SOURCES)
	OPEN_DYLAN_USER_REGISTRIES=$(REGISTRIES) dylan-compiler -build http-bench

clean:
	rm -rf _build
