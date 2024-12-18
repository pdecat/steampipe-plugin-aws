STEAMPIPE_INSTALL_DIR ?= ~/.steampipe
STEAMPIPE_PLUGIN_VERSION ?= latest
BUILD_TAGS = netgo
install:
	go build -o $(STEAMPIPE_INSTALL_DIR)/plugins/hub.steampipe.io/plugins/turbot/aws@$(STEAMPIPE_PLUGIN_VERSION)/steampipe-plugin-aws.plugin -tags "${BUILD_TAGS}" *.go

# Exclude Parliament IAM permissions
dev:
	go build -o $(STEAMPIPE_INSTALL_DIR)/plugins/hub.steampipe.io/plugins/turbot/aws@$(STEAMPIPE_PLUGIN_VERSION)/steampipe-plugin-aws.plugin -tags "dev ${BUILD_TAGS}" *.go
