SRC := $(wildcard src/*/*.typ)
OBJ := $(patsubst src/%/%.typ, pub/%.pdf, $(SRC))

all: $(OBJ)

clean:
	rm -fr pub

pub/%.pdf: src/%.typ
	mkdir pub
	typst compile $< $@
