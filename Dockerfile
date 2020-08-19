FROM rust:1.45.0

RUN rustup component add rustfmt

ENV USER=$USER

RUN rustc --version
RUN cargo --version
