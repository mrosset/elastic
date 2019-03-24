CMD		= bin/elastic
CMD_SOURCES	= $(wildcard ./cmd/elastic/*.go)
OUT		= $(GOPATH)/bin/elastic

.PHONY: test

test: $(CMD) install
	cat test
	$< < test > result
	cat result

$(CMD): $(CMD_SOURCES)
	go build -o $@ ./cmd/elastic/

$(OUT): $(CMD_SOURCES)
	go install ./cmd/elastic/

install: $(OUT)
