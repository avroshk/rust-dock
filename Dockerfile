FROM rust:1.45.0

RUN rustup component add rustfmt
RUN rustup target add wasm32-unknown-unknown

RUN cargo install wasm-pack
RUN cargo install wasm-gc
# For serving static content
RUN cargo install https

ENV USER=$USER

RUN rustc --version
RUN cargo --version
