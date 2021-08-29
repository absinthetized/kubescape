FROM google/cloud-sdk

COPY ./kubescape /

CMD ["./kubescape", "scan", "framework", "nsa", "--exclude-namespaces", "kube-system,kube-public"]