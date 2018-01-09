.PHONY : deps.png deps-7.8.png

deps.png : 
	cabal new-build -w ghc-8.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps.png

# disable discrimination ersatz
deps-7.8.png : 
	cabal new-build -w ghc-7.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps-7.8.png
