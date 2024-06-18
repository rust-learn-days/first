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
	cargo install cross --git https://github.com/cross-rs/cross
	pre-commit install
	sed -i '' 's#rust-learn-days/template#rust-learn-days/first#g' cliff.toml


build:
    rustup target add ${target}
    cargo build --target  ${target}

build-release:
    rustup target add ${target}
    cargo build --release --target  ${target}


cross-build:
    rustup target add ${target}
    cargo build --target  ${target}

cross-build-release:
    rustup target add ${target}
    cargo build --release --target  ${target}
