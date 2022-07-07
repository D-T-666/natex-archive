clean-trash:
	rm $(shell find **/*.aux)
	rm $(shell find **/*.log)

create-build-dir:
	mkdir -p build

year: create-build-dir
	cd years/$(YEAR)/$(VARIANT); \
	xelatex -output-directory=../../../build \
			-jobname=$(YEAR)-$(VARIANT) \
			main.tex

	make clean-trash