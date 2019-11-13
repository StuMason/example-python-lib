install:
	pip3 install -r requirements.txt
	pip3 install -r requirements-dev.txt

test: ## Run pytest with 80% coverage
	pytest ./tests --cov=src -vvv --cov-fail-under=80

.SILENT: help
help: ## Show this help message
	set -x
	echo "Usage: make [target] ..."
	echo ""
	echo "Available targets:"
	grep ':.* ##\ ' ${MAKEFILE_LIST} | awk '{gsub(":[^#]*##","\t"); print}' | column -t -c 2 -s $$'\t' | sort
