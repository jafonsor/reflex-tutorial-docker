IMAGE_NAME ?= reflex-tutorial
IMAGE_TAG ?= $(CI_BUILD_REF_NAME)

# Defaults to current git tag, or branch if no tag
CI_BUILD_REF_NAME ?= $(shell (cd reflex-tutorial; git describe --tags --exact-match 2>/dev/null) || (cd reflex-tutorial; git name-rev --name-only HEAD))


build: reflex-tutorial
	docker build --rm -t "$(IMAGE_NAME):$(IMAGE_TAG)" .

reflex-tutorial:
	git clone https://github.com/qfpl/reflex-tutorial