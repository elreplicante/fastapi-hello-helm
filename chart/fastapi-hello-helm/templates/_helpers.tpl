{{- define "fastapi-hello-helm.fullname" -}}
{{ .Release.Name }}
{{- end }}

{{- define "fastapi-hello-helm.labels" -}}
app.kubernetes.io/name: {{ include "fastapi-hello-helm.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{- define "fastapi-hello-helm.selectorLabels" -}}
app.kubernetes.io/name: {{ include "fastapi-hello-helm.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}