# acme-kmett

A collection of Edward Kmett's packages in a single repository.

Also known as *Kmettverse* or *Kmettoshpere*.

```bash
git clone --recursive ...
make build
```

## Dependency graphs

### GHC-9.0.1

![deps-9.0](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-9.0.1.png)

### GHC-8.10.4

![deps-8.10](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.10.4.png)

### GHC-8.8.4

![deps-8.8](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.8.4.png)

### GHC-8.6.5

![deps-8.6](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.6.5.png)

### GHC-8.4.4

![deps-8.4](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.4.4.png)

### GHC-8.2.2

![deps](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.2.2.png)

### GHC-8.0.2

![deps](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-8.0.2.png)

### GHC-7.8.4

![deps-7.8](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-7.8.4.png)

### GHC-7.6.3

![deps-7.6](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-7.6.3.png)

### GHC-7.4.2

![deps-7.4](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-7.4.2.png)

### GHC-7.2.2 and GHC-7.0.2

![deps-7.2](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-7.2.2.png)
![deps-7.0](https://raw.githubusercontent.com/phadej/acme-kmett/master/deps-7.0.4.png)

## Spells

### restrictive upper bounds

```bash
packdeps */*.cabal
```

### Update

```bash
git submodule foreach git checkout master
git submodule foreach git pull
```
