init:
	git init
	git add .
	git commit -m "init"
	git branch -M main
	git remote add origin git@github.com:rust-learn-days/first.git
	pip install pre-commit
	cargo install --locked cargo-deny
	cargo install typos-cli
	cargo install git-cliff
	cargo install cargo-nextest --locked
	pre-commit install
	sed -i '' 's#rust-learn-days/template#rust-learn-days/first#g' cliff.toml

install:
	rustup override set nightly
	rustup toolchain list
	rustup target add x86_64-unknown-linux-musl

build:
	cargo build --release --target x86_64-unknown-linux-musl
