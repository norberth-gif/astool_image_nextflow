FROM perl:5.40-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        git \
    && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/zzd-lab/ASTool.git /opt/ASTool

RUN chmod +x /opt/ASTool/*.pl

ENV PATH="/opt/ASTool:${PATH}"
