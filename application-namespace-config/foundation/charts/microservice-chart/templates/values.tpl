{{/*
Generate an MD5 hash of the values file
*/}}
{{- define "microservice-chart.valuesHash" -}}
{{- include (print $.Template.BasePath "/values.tpl") . | sha256sum | trunc 10 -}}
{{- end }}