# Performance Test Tool (PTT)

First, install this tool:

```
$ GO111MODULE=on go install .
```

## Benchmarking OPA

1. [Install OPA](https://www.openpolicyagent.org/docs/latest/get-started)
1. Run the server: `opa run --server --log-level error`
2. Import the rego policies: `./opa-policies.sh`

The rego policies support different "flavors" (`exact`, `regex`, `glob`). You can test the
performance of each of those flavors with:

```
$ opa-bench opa <flavor> --workers 25 --policies 30000
```

For example:

```
$ opa-bench opa exact --workers 1 --policies 30000
$ opa-bench opa regex --workers 25 --policies 30000
$ opa-bench opa glob --workers 25 --policies 30000
```

### Benchmarking `exact`

```shell
opa-bench opa exact --workers 1 --policies 10
opa-bench opa exact --workers 1 --policies 100
opa-bench opa exact --workers 1 --policies 1000
opa-bench opa exact --workers 1 --policies 10000
opa-bench opa exact --workers 1 --policies 20000
opa-bench opa exact --workers 1 --policies 30000
opa-bench opa exact --workers 5 --policies 30000
opa-bench opa exact --workers 10 --policies 30000
opa-bench opa exact --workers 20 --policies 30000
opa-bench opa exact --workers 25 --policies 30000
```

```shell
opa-bench opa glob --workers 1 --policies 10
opa-bench opa glob --workers 1 --policies 100
opa-bench opa glob --workers 1 --policies 1000
opa-bench opa glob --workers 1 --policies 10000
opa-bench opa glob --workers 1 --policies 20000
opa-bench opa glob --workers 1 --policies 30000
opa-bench opa glob --workers 5 --policies 30000
opa-bench opa glob --workers 10 --policies 30000
opa-bench opa glob --workers 20 --policies 30000
opa-bench opa glob --workers 25 --policies 30000
```

```shell
opa-bench opa regex --workers 1 --policies 10
opa-bench opa regex --workers 1 --policies 100
opa-bench opa regex --workers 1 --policies 1000
opa-bench opa regex --workers 1 --policies 10000
opa-bench opa regex --workers 1 --policies 20000
opa-bench opa regex --workers 1 --policies 30000
opa-bench opa regex --workers 5 --policies 30000
opa-bench opa regex --workers 10 --policies 30000
opa-bench opa regex --workers 20 --policies 30000
opa-bench opa regex --workers 25 --policies 30000

```

```shell
opa-bench opa regex --workers 1 --policies 100
opa-bench opa regex --workers 10 --policies 100
opa-bench opa regex --workers 25 --policies 100
opa-bench opa regex --workers 50 --policies 100
```