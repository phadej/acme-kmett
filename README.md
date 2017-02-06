# acme-kmett

A collection of Edward Kmett's packages in a single repository.

```bash
git clone --recursive ...
cabal new-build
```

![deps](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps.png)

## Spells

### restrictive upper bounds

```bash
packdeps */*.cabal
```

### run all doctests

```bash
cabal new-build --enable-tests --disable-benchmarks
for exe in $(find dist-newstyle -type f -name doctests | sort); do echo '=====' $exe; $exe || echo '===== FAIL!'; done
```
