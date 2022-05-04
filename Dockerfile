FROM brigadecore/go-tools:v0.9.0 as builder

ARG LIBGIT2_VERSION=v1.2.0

# git2go provides official Go language bindings for the libgit2 library and each
# version of git2go is compatible with a specific range of libgit2 versions.
# Building libgit2 from source seems to be the easiest way to install a specific
# version at the system level.
RUN apt-get update \
    && apt-get install -y \
      cmake \
      libgcrypt20-dev \
      libgpg-error-dev \
      libhttp-parser-dev \
      libpcre3-dev \
      libssh2-1-dev \
      libssl-dev \
      zlib1g-dev \
    && git clone --branch $LIBGIT2_VERSION --single-branch https://github.com/libgit2/libgit2.git ~/libgit2 \
    && mkdir -p ~/libgit2/build \
    && cd ~/libgit2/build \
    && cmake .. \
      -DBUILD_CLAR=0 \
      -DBUILD_SHARED_LIBS=0 \
    && cmake --build . --target install
