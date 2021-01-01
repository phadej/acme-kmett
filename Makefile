project-files: cabal.7.0.4.project cabal.7.2.2.project cabal.7.4.2.project cabal.7.6.3.project cabal.7.8.4.project cabal.7.10.3.project cabal.8.0.2.project cabal.8.2.2.project cabal.8.4.4.project cabal.8.6.5.project cabal.8.8.4.project cabal.8.10.3.project
Makefile: cabal.darkmatter
	darkmatter > Makefile
build: build-7.0.4 build-7.2.2 build-7.4.2 build-7.6.3 build-7.8.4 build-7.10.3 build-8.0.2 build-8.2.2 build-8.4.4 build-8.6.5 build-8.8.4 build-8.10.3
test: test-build test-7.0.4 test-7.2.2 test-7.4.2 test-7.6.3 test-7.8.4 test-7.10.3 test-8.0.2 test-8.2.2 test-8.4.4 test-8.6.5 test-8.8.4 test-8.10.3
test-build: test-dry test-build-7.0.4 test-build-7.2.2 test-build-7.4.2 test-build-7.6.3 test-build-7.8.4 test-build-7.10.3 test-build-8.0.2 test-build-8.2.2 test-build-8.4.4 test-build-8.6.5 test-build-8.8.4 test-build-8.10.3
test-dry: test-dry-7.0.4 test-dry-7.2.2 test-dry-7.4.2 test-dry-7.6.3 test-dry-7.8.4 test-dry-7.10.3 test-dry-8.0.2 test-dry-8.2.2 test-dry-8.4.4 test-dry-8.6.5 test-dry-8.8.4 test-dry-8.10.3
deps: deps-7.0.4.png deps-7.2.2.png deps-7.4.2.png deps-7.6.3.png deps-7.8.4.png deps-7.10.3.png deps-8.0.2.png deps-8.2.2.png deps-8.4.4.png deps-8.6.5.png deps-8.8.4.png deps-8.10.3.png
build-7.0.4: cabal.7.0.4.project
	cabal new-build --builddir=dist-newstyle-7.0.4 --project-file cabal.7.0.4.project -w ghc-7.0.4 --disable-tests --disable-benchmarks all
build-7.10.3: cabal.7.10.3.project
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --disable-tests --disable-benchmarks all
build-7.2.2: cabal.7.2.2.project
	cabal new-build --builddir=dist-newstyle-7.2.2 --project-file cabal.7.2.2.project -w ghc-7.2.2 --disable-tests --disable-benchmarks all
build-7.4.2: cabal.7.4.2.project
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --disable-tests --disable-benchmarks all
build-7.6.3: cabal.7.6.3.project
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --disable-tests --disable-benchmarks all
build-7.8.4: cabal.7.8.4.project
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --disable-tests --disable-benchmarks all
build-8.0.2: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --disable-tests --disable-benchmarks all
build-8.10.3: cabal.8.10.3.project
	cabal new-build --builddir=dist-newstyle-8.10.3 --project-file cabal.8.10.3.project -w ghc-8.10.3 --disable-tests --disable-benchmarks all
build-8.2.2: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --disable-tests --disable-benchmarks all
build-8.4.4: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --disable-tests --disable-benchmarks all
build-8.6.5: cabal.8.6.5.project
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --disable-tests --disable-benchmarks all
build-8.8.4: cabal.8.8.4.project
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --disable-tests --disable-benchmarks all
cabal.7.0.4.project: cabal.darkmatter
	darkmatter
cabal.7.10.3.project: cabal.darkmatter
	darkmatter
cabal.7.2.2.project: cabal.darkmatter
	darkmatter
cabal.7.4.2.project: cabal.darkmatter
	darkmatter
cabal.7.6.3.project: cabal.darkmatter
	darkmatter
cabal.7.8.4.project: cabal.darkmatter
	darkmatter
cabal.8.0.2.project: cabal.darkmatter
	darkmatter
cabal.8.10.3.project: cabal.darkmatter
	darkmatter
cabal.8.2.2.project: cabal.darkmatter
	darkmatter
cabal.8.4.4.project: cabal.darkmatter
	darkmatter
cabal.8.6.5.project: cabal.darkmatter
	darkmatter
cabal.8.8.4.project: cabal.darkmatter
	darkmatter
deps-7.0.4.png: cabal.7.0.4.project
	cabal new-build --builddir=dist-newstyle-7.0.4 --project-file cabal.7.0.4.project -w ghc-7.0.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.0.4 --tred --tred-weights | dot -Tpng -odeps-7.0.4.png
deps-7.10.3.png: cabal.7.10.3.project
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.10.3 --tred --tred-weights | dot -Tpng -odeps-7.10.3.png
deps-7.2.2.png: cabal.7.2.2.project
	cabal new-build --builddir=dist-newstyle-7.2.2 --project-file cabal.7.2.2.project -w ghc-7.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.2.2 --tred --tred-weights | dot -Tpng -odeps-7.2.2.png
deps-7.4.2.png: cabal.7.4.2.project
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.4.2 --tred --tred-weights | dot -Tpng -odeps-7.4.2.png
deps-7.6.3.png: cabal.7.6.3.project
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.6.3 --tred --tred-weights | dot -Tpng -odeps-7.6.3.png
deps-7.8.4.png: cabal.7.8.4.project
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-7.8.4 --tred --tred-weights | dot -Tpng -odeps-7.8.4.png
deps-8.0.2.png: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.0.2 --tred --tred-weights | dot -Tpng -odeps-8.0.2.png
deps-8.10.3.png: cabal.8.10.3.project
	cabal new-build --builddir=dist-newstyle-8.10.3 --project-file cabal.8.10.3.project -w ghc-8.10.3 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.10.3 --tred --tred-weights | dot -Tpng -odeps-8.10.3.png
deps-8.2.2.png: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.2.2 --tred --tred-weights | dot -Tpng -odeps-8.2.2.png
deps-8.4.4.png: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.4.4 --tred --tred-weights | dot -Tpng -odeps-8.4.4.png
deps-8.6.5.png: cabal.8.6.5.project
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.6.5 --tred --tred-weights | dot -Tpng -odeps-8.6.5.png
deps-8.8.4.png: cabal.8.8.4.project
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --disable-tests --disable-benchmarks all --dry-run
	cabal-plan --hide-builtin --hide-global dot --builddir=dist-newstyle-8.8.4 --tred --tred-weights | dot -Tpng -odeps-8.8.4.png
test-7.0.4: cabal.7.0.4.project test-build-7.0.4
	cabal new-test --builddir=dist-newstyle-7.0.4 --project-file cabal.7.0.4.project -w ghc-7.0.4 --enable-tests --enable-benchmarks all
test-7.10.3: cabal.7.10.3.project test-build-7.10.3
	cabal new-test --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --enable-tests --enable-benchmarks all
test-7.2.2: cabal.7.2.2.project test-build-7.2.2
	cabal new-test --builddir=dist-newstyle-7.2.2 --project-file cabal.7.2.2.project -w ghc-7.2.2 --enable-tests --enable-benchmarks all
test-7.4.2: cabal.7.4.2.project test-build-7.4.2
	cabal new-test --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --enable-tests --enable-benchmarks all
test-7.6.3: cabal.7.6.3.project test-build-7.6.3
	cabal new-test --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --enable-tests --enable-benchmarks all
test-7.8.4: cabal.7.8.4.project test-build-7.8.4
	cabal new-test --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --enable-tests --enable-benchmarks all
test-8.0.2: cabal.8.0.2.project test-build-8.0.2
	cabal new-test --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --enable-benchmarks all
test-8.10.3: cabal.8.10.3.project test-build-8.10.3
	cabal new-test --builddir=dist-newstyle-8.10.3 --project-file cabal.8.10.3.project -w ghc-8.10.3 --enable-tests --enable-benchmarks all
test-8.2.2: cabal.8.2.2.project test-build-8.2.2
	cabal new-test --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --enable-benchmarks all
test-8.4.4: cabal.8.4.4.project test-build-8.4.4
	cabal new-test --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --enable-benchmarks all
test-8.6.5: cabal.8.6.5.project test-build-8.6.5
	cabal new-test --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --enable-tests --enable-benchmarks all
test-8.8.4: cabal.8.8.4.project test-build-8.8.4
	cabal new-test --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --enable-tests --enable-benchmarks all
test-build-7.0.4: cabal.7.0.4.project test-dry-7.0.4
	cabal new-build --builddir=dist-newstyle-7.0.4 --project-file cabal.7.0.4.project -w ghc-7.0.4 --enable-tests --enable-benchmarks all
test-build-7.10.3: cabal.7.10.3.project test-dry-7.10.3
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --enable-tests --enable-benchmarks all
test-build-7.2.2: cabal.7.2.2.project test-dry-7.2.2
	cabal new-build --builddir=dist-newstyle-7.2.2 --project-file cabal.7.2.2.project -w ghc-7.2.2 --enable-tests --enable-benchmarks all
test-build-7.4.2: cabal.7.4.2.project test-dry-7.4.2
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --enable-tests --enable-benchmarks all
test-build-7.6.3: cabal.7.6.3.project test-dry-7.6.3
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --enable-tests --enable-benchmarks all
test-build-7.8.4: cabal.7.8.4.project test-dry-7.8.4
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --enable-tests --enable-benchmarks all
test-build-8.0.2: cabal.8.0.2.project test-dry-8.0.2
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --enable-benchmarks all
test-build-8.10.3: cabal.8.10.3.project test-dry-8.10.3
	cabal new-build --builddir=dist-newstyle-8.10.3 --project-file cabal.8.10.3.project -w ghc-8.10.3 --enable-tests --enable-benchmarks all
test-build-8.2.2: cabal.8.2.2.project test-dry-8.2.2
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --enable-benchmarks all
test-build-8.4.4: cabal.8.4.4.project test-dry-8.4.4
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --enable-benchmarks all
test-build-8.6.5: cabal.8.6.5.project test-dry-8.6.5
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --enable-tests --enable-benchmarks all
test-build-8.8.4: cabal.8.8.4.project test-dry-8.8.4
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --enable-tests --enable-benchmarks all
test-dry-7.0.4: cabal.7.0.4.project
	cabal new-build --builddir=dist-newstyle-7.0.4 --project-file cabal.7.0.4.project -w ghc-7.0.4 --enable-tests --enable-benchmarks --dry all
test-dry-7.10.3: cabal.7.10.3.project
	cabal new-build --builddir=dist-newstyle-7.10.3 --project-file cabal.7.10.3.project -w ghc-7.10.3 --enable-tests --enable-benchmarks --dry all
test-dry-7.2.2: cabal.7.2.2.project
	cabal new-build --builddir=dist-newstyle-7.2.2 --project-file cabal.7.2.2.project -w ghc-7.2.2 --enable-tests --enable-benchmarks --dry all
test-dry-7.4.2: cabal.7.4.2.project
	cabal new-build --builddir=dist-newstyle-7.4.2 --project-file cabal.7.4.2.project -w ghc-7.4.2 --enable-tests --enable-benchmarks --dry all
test-dry-7.6.3: cabal.7.6.3.project
	cabal new-build --builddir=dist-newstyle-7.6.3 --project-file cabal.7.6.3.project -w ghc-7.6.3 --enable-tests --enable-benchmarks --dry all
test-dry-7.8.4: cabal.7.8.4.project
	cabal new-build --builddir=dist-newstyle-7.8.4 --project-file cabal.7.8.4.project -w ghc-7.8.4 --enable-tests --enable-benchmarks --dry all
test-dry-8.0.2: cabal.8.0.2.project
	cabal new-build --builddir=dist-newstyle-8.0.2 --project-file cabal.8.0.2.project -w ghc-8.0.2 --enable-tests --enable-benchmarks --dry all
test-dry-8.10.3: cabal.8.10.3.project
	cabal new-build --builddir=dist-newstyle-8.10.3 --project-file cabal.8.10.3.project -w ghc-8.10.3 --enable-tests --enable-benchmarks --dry all
test-dry-8.2.2: cabal.8.2.2.project
	cabal new-build --builddir=dist-newstyle-8.2.2 --project-file cabal.8.2.2.project -w ghc-8.2.2 --enable-tests --enable-benchmarks --dry all
test-dry-8.4.4: cabal.8.4.4.project
	cabal new-build --builddir=dist-newstyle-8.4.4 --project-file cabal.8.4.4.project -w ghc-8.4.4 --enable-tests --enable-benchmarks --dry all
test-dry-8.6.5: cabal.8.6.5.project
	cabal new-build --builddir=dist-newstyle-8.6.5 --project-file cabal.8.6.5.project -w ghc-8.6.5 --enable-tests --enable-benchmarks --dry all
test-dry-8.8.4: cabal.8.8.4.project
	cabal new-build --builddir=dist-newstyle-8.8.4 --project-file cabal.8.8.4.project -w ghc-8.8.4 --enable-tests --enable-benchmarks --dry all
