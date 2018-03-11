.PHONY :

all : cabal-7.8.4.project cabal-8.4.1.project

# BUILDING

with-ghc-8.4.1 : cabal-8.4.1.project
	cabal new-build --project-file=cabal-8.4.1.project --builddir=.dist-newstyle-8.4.1 --disable-tests --disable-benchmarks all

with-ghc-8.4.1-test : cabal-8.4.1.project
	cabal new-build --project-file=cabal-8.4.1.project --builddir=.dist-newstyle-8.4.1-test --enable-tests --disable-benchmarks all

# DEPENDENCY GRAPHS

deps-8.4.png : cabal-8.4.1.project
	cabal new-build --project-file=cabal-8.4.1.project --builddir=.dist-newstyle-8.4.1 -w ghc-8.4.1 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=.dist-newstyle-8.4.1 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps-8.4.png

deps-8.2.png : cabal.project
	cabal new-build -w ghc-8.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps-8.2.png

deps-8.0.png : cabal-8.0.2.project
	cabal new-build --project-file=cabal-8.0.2.project --builddir=.dist-newstyle-8.0.2 -w ghc-8.0.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=.dist-newstyle-8.0.2 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps-8.0.png

deps-7.8.png : cabal-7.8.4.project
	cabal new-build --project-file=cabal-7.8.4.project --builddir=.dist-newstyle-7.8.4 -w ghc-7.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --builddir=.dist-newstyle-7.8.4 --hide-builtin --hide-global dot --tred --tred-weights | dot -Tpng -odeps-7.8.png

# PROJECT FILES

# disable discrimination ersatz
cabal-7.8.4.project : cabal.project
	cat cabal.project \
		| sed 's/ghc-8.2.2/ghc-7.8.4/' \
		| sed 's/half/-- half/' \
		| sed 's/discrimination/-- discrimination/' \
		| sed 's/ersatz/-- ersatz/' \
		> cabal-7.8.4.project

cabal-8.0.2.project : cabal.project
	cat cabal.project \
		| sed 's/ghc-8.2.2/ghc-8.0.2/' \
		> cabal-8.0.2.project

# note: we don't want to reinstall mtl
cabal-8.4.1.project : cabal.project cabal-8.4.1.fragment
	cat cabal.project \
		| sed 's/ghc-8.2.2/ghc-8.4.1/' \
		| sed 's/ ad\//-- ad/' \
		| sed 's/ersatz/-- ersatz/' \
		| sed 's/mtl/-- mtl/' \
		| sed 's/hyphenation/-- hyphenation/' \
		| sed 's/lens-action/-- lens-action/' \
		| sed 's/zippers/-- zippers/' \
		> cabal-8.4.1.project
	cat cabal-8.4.1.fragment >> cabal-8.4.1.project

# MAINTAINMENT

git-submodule-update :
	git submodule foreach git checkout master
	git submodule foreach git pull
