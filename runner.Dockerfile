ARG BASE_IMAGE
FROM $BASE_IMAGE

ARG TOFU_VERSION=0.1.3

# Switch to root to have permissions for operations
USER root

# COPY tofu /usr/local/bin/terraform
# RUN chmod +x /usr/local/bin/terraform
ADD https://github.com/liatrio/opentofu/releases/download/v${TOFU_VERSION}/tofu_${TOFU_VERSION}_linux_amd64.zip tofu_${TOFU_VERSION}_linux_amd64.zip
RUN unzip -q tofu_${TOFU_VERSION}_linux_amd64.zip -d /usr/local/bin/ && \
    rm tofu_${TOFU_VERSION}_linux_amd64.zip && \
    chmod +x /usr/local/bin/tofu

# Switch back to the non-root user after operations
USER 65532:65532
