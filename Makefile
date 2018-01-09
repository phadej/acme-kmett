.PHONY : deps.png deps-7.8.png

deps.png : 
	cabal new-build -w ghc-8.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps.png

deps-7.8.png : cabal-7.8.4.project
	cabal new-build --project-file=cabal-7.8.4.project --builddir=dist-newstyle-7.8.4 -w ghc-7.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=dist-newstyle-7.8.4 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps-7.8.png

# disable discrimination ersatz
cabal-7.8.4.project : cabal.project
	cat cabal.project | sed 's/discrimination/-- discrimination/' | sed 's/ersatz/-- ersatz/' > cabal-7.8.4.project
