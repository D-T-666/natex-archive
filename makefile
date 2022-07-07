clean-trash:
	rm $(shell find **/*.aux)
	rm $(shell find **/*.log)

create-build-dir:
	mkdir -p build

2021-ii: create-build-dir
	cd years/2021/ii; ls; xelatex -output-directory=../../../build main.tex 
	make clean-trash