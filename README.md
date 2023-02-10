# vp-workshop

This repository contains exercises for the Validated Patterns enablement.

## Section 10 Exercises

This is the directory that contains the Section 10 exercises.

exercises/
└── section10
    ├── helm
    │   ├── helm-buildconfig-example
    │   │   ├── Chart.yaml
    │   │   ├── templates
    │   │   │   ├── buildconfig-docker-build.yaml
    │   │   │   ├── imagestream-s2i-example.yaml
    │   │   │   └── ns-buildconfig-example.yaml
    │   │   └── values.yaml
    │   └── helm-http-example
    │       ├── Chart.yaml
    │       ├── templates
    │       │   ├── configmap-httpd.yaml
    │       │   ├── deployment-httpd.yaml
    │       │   ├── ns-httpd.yaml
    │       │   ├── route-httpd.yaml
    │       │   ├── service-https.yaml
    │       │   └── service-http.yaml
    │       └── values.yaml
    └── kustomize
        ├── kustomize-buildconfig-example
        │   ├── base
        │   │   ├── buildconfig-docker-build.yaml
        │   │   ├── deployment-cli-tools.yaml
        │   │   ├── imagestream-s2i-example.yaml
        │   │   ├── kustomization.yaml
        │   │   └── ns-buildconfig-example.yaml
        │   └── kustomization.yaml
        └── kustomize-http-example
            ├── base
            │   ├── configmap-httpd.yaml
            │   ├── deployment-httpd.yaml
            │   ├── kustomization.yaml
            │   ├── ns-httpd.yaml
            │   ├── route-httpd.yaml
            │   ├── service-https.yaml
            │   └── service-http.yaml
            ├── delete-resources.sh
            └── kustomization.yaml

