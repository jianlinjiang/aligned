set -euxo pipefail

main() {
    cargo check --target $TARGET

    if [ $TRAVIS_RUST_VERSION = nightly ]; then
        cargo check --target $TARGET
    fi
}

main
