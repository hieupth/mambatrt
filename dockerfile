ARG TRT_VERSION=24.12
ARG BASE_IMG=nvcr.io/nvidia/tensorrt:${TRT_VERSION}-py3
ARG TARGET_IMG=hieupth/mamba

FROM ${BASE_IMG} as builder

FROM ${TARGET_IMG}
COPY --from=builder /opt/tensorrt /opt/tensorrt