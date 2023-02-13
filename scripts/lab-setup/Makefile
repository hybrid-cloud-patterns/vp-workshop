##@ Lab


.PHONY: help
help: ## This help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^(\s|[a-zA-Z_0-9-])+:.*?##/ { printf "  \033[36m%-35s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Lab Setup Tasks
.PHONY: install
install: ## Deploys the clusters
	@echo "Deploy"
	ansible-playbook -e base_dir=$$(pwd) deploy-clusters.yaml

.PHONY: resize
resize: ## Increase the number of clusters, while leaving the running ones still
	@echo "Deploy"
	ansible-playbook -e base_dir=$$(pwd) resize-clusters.yaml

##@ Lab Teardown Tasks
.PHONY: destroy
destroy: ## Destroys all already deployed the clusters
	@echo "Destroy"
	ansible-playbook -e base_dir=$$(pwd) destroy-clusters.yaml

##@Additional Tasks
.PHONY: lint
lint: ## Runs ansible-lint
	ansible-lint ansible-lint *yaml roles vars
