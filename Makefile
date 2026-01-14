.PHONY: renovate-validate

RENOVATE_IMAGE := renovate/renovate:latest
RENOVATE_CONFIGS := default.json private.json

renovate-validate:
	@set -e; \
	for config in $(RENOVATE_CONFIGS); do \
		echo "🔍 Validating $$config"; \
		docker run --rm \
			-v "$(PWD)/$$config:/config/$$config:ro" \
			--tty \
			$(RENOVATE_IMAGE) \
			renovate-config-validator /config/$$config; \
	done