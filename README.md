# busybox-wget-with-retries

A busybox Docker image containing a wget wrapper script that adds a configurable `-t` (retries) option with the ability to override using `WGET_TRIES` environment

## Why?

As a dirty hack to let the [fluent-bit](https://github.com/fluent/helm-charts/blob/main/charts/fluent-bit/templates/tests/test-connection.yaml) Helm charts pass its test since it assumes the `test-connection` test will always find `fluent-bit` running within a second or two ¯\\_(ツ)_/¯

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: "{{ include "fluent-bit.fullname" . }}-test-connection"
  labels:
    {{- include "fluent-bit.labels" . | nindent 4 }}
  annotations:
    "helm.sh/hook": test-success
spec:
  containers:
    - name: wget
      image: "{{ .Values.testFramework.image.repository }}:{{ .Values.testFramework.image.tag }}"
      imagePullPolicy: {{ .Values.testFramework.image.pullPolicy }}
      command: ['wget']
      args: ['{{ include "fluent-bit.fullname" . }}:{{ .Values.service.port }}']
  {{- with .Values.imagePullSecrets }}
  imagePullSecrets:
    {{- toYaml . | nindent 4 }}
  {{- end }}
  restartPolicy: Never
```

## License

License is MIT
