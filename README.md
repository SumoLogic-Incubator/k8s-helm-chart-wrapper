# SumoLogic wrapper chart

This chart wraps [SumoLogic kubernetess collection chart][sumologic_kubernetes_collection]
so that it can be deployed to a cluster with an existing Prometheus Operator deployed.

[sumologic_kubernetes_collection]: https://github.com/SumoLogic/sumologic-kubernetes-collection

## Required configuration options

| Option                                      | Description                                       |
|---------------------------------------------|---------------------------------------------------|
| `prometheusSpec.kubeStateMetrics.namespace` | Namespace in which kube-state-metrics is deployed |
| `prometheusSpec.nodeExporter.namespace`     | Namespace in which node-exporter is deployed      |
