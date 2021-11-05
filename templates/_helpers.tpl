{{/*
Kubelet metrics regex

Example Usage:
{{- include "regex.metric.kubelet" . }}

*/}}
{{- define "regex.metric.kubelet" -}}
(?:kubelet_docker_operations_errors(?:|_total)|kubelet_(?:docker|runtime)_operations_duration_seconds_(?:count|sum)|kubelet_running_(?:container|pod)(?:_count|s)|kubelet_(:?docker|runtime)_operations_latency_microseconds(?:|_count|_sum))
{{- end -}}

{{/*
Cadvisor container metrics regex

Example Usage:
{{- include "regex.metric.cadvisor.container" . }}

*/}}
{{- define "regex.metric.cadvisor.container" -}}
(?:container_cpu_usage_seconds_total|container_memory_working_set_bytes|container_fs_usage_bytes|container_fs_limit_bytes)
{{- end -}}

{{/*
Cadvisor container aggregate metrics regex

Example Usage:
{{- include "regex.metric.cadvisor.aggregate" . }}

*/}}
{{- define "regex.metric.cadvisor.aggregate" -}}
(?:container_network_receive_bytes_total|container_network_transmit_bytes_total)
{{- end -}}

{{/*
Cadvisor all container metrics regex

Example Usage:
{{- include "regex.metric.cadvisor.all" . }}

*/}}
{{- define "regex.metric.cadvisor.all" -}}
(?:container_cpu_usage_seconds_total|container_memory_working_set_bytes|container_fs_usage_bytes|container_fs_limit_bytes|container_cpu_cfs_throttled_seconds_total|container_network_receive_bytes_total|container_network_transmit_bytes_total)
{{- end -}}

{{/*
KubeStateMetrics metrics regex

Example Usage:
{{- include "regex.metric.kubeStateMetrics" . }}

*/}}
{{- define "regex.metric.kubeStateMetrics" -}}
(?:kube_statefulset_status_observed_generation|kube_statefulset_status_replicas|kube_statefulset_replicas|kube_statefulset_metadata_generation|kube_daemonset_status_current_number_scheduled|kube_daemonset_status_desired_number_scheduled|kube_daemonset_status_number_misscheduled|kube_daemonset_status_number_unavailable|kube_deployment_spec_replicas|kube_deployment_status_replicas_available|kube_deployment_status_replicas_unavailable|kube_node_info|kube_node_status_allocatable|kube_node_status_capacity|kube_node_status_condition|kube_pod_container_info|kube_pod_container_resource_requests|kube_pod_container_resource_limits|kube_pod_container_status_ready|kube_pod_container_status_terminated_reason|kube_pod_container_status_waiting_reason|kube_pod_container_status_restarts_total|kube_pod_status_phase)
{{- end -}}

{{- define "kubeStateMetrics.namespace" -}}
{{- if .Values.prometheusSpec.kubeStateMetrics.namespace }}
{{- .Values.prometheusSpec.kubeStateMetrics.namespace }}
{{- else }}
{{ fail "\nPlease provide .Values.prometheusSpec.kubeStateMetrics.namespace to indicate where Prometheus can scrape kube-state-metrics" }}
{{- end -}}
{{- end -}}