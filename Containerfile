FROM scratch AS ctx
COPY build_files /

FROM ghcr.io/ublue-os/bluefin:latest

### IMMUTABLE /opt
RUN rm /opt && mkdir /opt

RUN --mount=type=tmpfs,dst=/tmp \
	--mount=type=bind,from=ctx,source=/,target=/ctx \
	/ctx/00_build.sh
    
RUN bootc container lint
