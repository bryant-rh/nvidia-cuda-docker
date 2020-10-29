PLATFORM := linux/amd64,linux/arm64

pull:
	docker pull nvidia/cuda:11.1-base-ubuntu18.04
	docker pull nvidia/cuda:11.1-runtime-ubuntu18.04
	docker pull nvidia/cuda:11.1-devel-ubuntu18.04
	docker pull nvidia/cuda-arm64:11.1-base-ubuntu18.04
	docker pull nvidia/cuda-arm64:11.1-runtime-ubuntu18.04
	docker pull nvidia/cuda-arm64:11.1-devel-ubuntu18.04

tag:
	docker tag nvidia/cuda:11.1-base-ubuntu18.04          bryantrh/cuda-amd64:11.1-base-ubuntu18.04
	docker tag nvidia/cuda:11.1-runtime-ubuntu18.04       bryantrh/cud-amd64:11.1-runtime-ubuntu18.04
	docker tag nvidia/cuda:11.1-devel-ubuntu18.04         bryantrh/cuda-amd64:11.1-devel-ubuntu18.04
	docker tag nvidia/cuda-arm64:11.1-base-ubuntu18.04    bryantrh/cuda-arm64:11.1-base-ubuntu18.04
	docker tag nvidia/cuda-arm64:11.1-runtime-ubuntu18.04 bryantrh/cuda-arm64:11.1-runtime-ubuntu18.04
	docker tag nvidia/cuda-arm64:11.1-devel-ubuntu18.04   bryantrh/cuda-arm64:11.1-devel-ubuntu18.0

push:
	docker push  bryantrh/cuda-amd64:11.1-base-ubuntu18.04
	docker push  bryantrh/cud-amd64:11.1-runtime-ubuntu18.04
	docker push  bryantrh/cuda-amd64:11.1-devel-ubuntu18.04
	docker push  bryantrh/cuda-arm64:11.1-base-ubuntu18.04
	docker push  bryantrh/cuda-arm64:11.1-runtime-ubuntu18.04
	docker push  bryantrh/cuda-arm64:11.1-devel-ubuntu18.0
	
	
manifest:
	docker manifest create  bryantrh/cuda:11.1-base-ubuntu18.04 bryantrh/cuda-amd64:11.1-base-ubuntu18.04 bryantrh/cuda-arm64:11.1-base-ubuntu18.04
	docker manifest create  bryantrh/cuda:11.1-runtime-ubuntu18.04 bryantrh/cuda-amd64:11.1-runtime-ubuntu18.04 bryantrh/cuda-arm64:11.1-runtime-ubuntu18.04
	docker manifest create  bryantrh/cuda:11.1-devel-ubuntu18.04 bryantrh/cuda-amd64:11.1-devel-ubuntu18.04 bryantrh/cuda-arm64:11.1-devel-ubuntu18.04


inspect-manifest:
	docker manifest inspect bryantrh/cuda:11.1-base-ubuntu18.04
	docker manifest inspect bryantrh/cuda:11.1-runtime-ubuntu18.04
	docker manifest inspect bryantrh/cuda:11.1-devel-ubuntu18.04

push-manifest:
	docker manifest push bryantrh/cuda:11.1-base-ubuntu18.04
	docker manifest push bryantrh/cuda:11.1-runtime-ubuntu18.04
	docker manifest push bryantrh/cuda:11.1-devel-ubuntu18.04

