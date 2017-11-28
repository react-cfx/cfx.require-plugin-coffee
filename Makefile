pjName := cfx.require-plugin-coffee

docker:

	docker run \
		--name ${pjName} \
		--rm \
		-ti \
		-v $$(pwd):/root/${pjName} \
		-v $$(pwd)/../cfx.require:/root/cfx.require \
		mooxe/node \
		/bin/bash
