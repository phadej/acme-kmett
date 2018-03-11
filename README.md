# acme-kmett

A collection of Edward Kmett's packages in a single repository.

```bash
git clone --recursive ...
cabal new-build
```

## Dependency graphs

### GHC-8.4.1

![deps-8.4](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.4.png)

### GHC-8.2.2

*Note:* aeson the only inplace dependency:

![deps](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.2.png)

### GHC-8.0.2

![deps](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.0.png)

### GHC-7.8.4

*Note:* without `discrimination` and `ersatz`

![deps-7.8](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-7.8.png)

## Spells

### restrictive upper bounds

```bash
packdeps */*.cabal
```
