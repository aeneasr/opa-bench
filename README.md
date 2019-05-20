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
