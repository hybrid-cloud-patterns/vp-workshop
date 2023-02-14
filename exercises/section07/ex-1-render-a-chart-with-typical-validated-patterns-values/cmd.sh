#!/bin/bash

helm template charts/all/config-demo -f values-global.yaml -f values-hub.yaml --set global.localClusterDomain='spoke.mycluster.com' --set global.hubClusterDomain='hub.mycluster.com'
