curl --create-dirs --output-dir ~/Library/Java/JavaVirtualMachines -OL https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.0.0.2/graalvm-ce-java17-darwin-amd64-22.0.0.2.tar.gz

tar xvzf graalvm-ce-java17-darwin-amd64-22.0.0.2.tar.gz

export GRAALVM_HOME="$HOME/Library/Java/JavaVirtualMachines/graalvm-ce-java17-22.0.0.2/Contents/Home"

export PATH="$GRAALVM_HOME/bin:$PATH"
