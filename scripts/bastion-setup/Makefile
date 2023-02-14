##@ Bastion Host

.PHONY: help
help: ## This help message
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^(\s|[a-zA-Z_0-9-])+:.*?##/ { printf "  \033[36m%-35s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)

##@ Setup Tasks
.PHONY: bastion
bastion: ## Configured the bastion host (run this locally as root from the bastion host)
	ansible-playbook -e base_dir=$$(pwd) bastion-setup.yaml

##@ Additional Tasks
.PHONY: lint
lint: ## Runs ansible-lint
	ansible-lint ansible-lint *yaml roles vars
