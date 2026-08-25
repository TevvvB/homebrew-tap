cask "parallel-harness-pets" do
  version "0.2.8"

  on_macos do
    on_intel do
      sha256 "ca0fca6513eb59be0a7b9f66e6b8aa6a57ba75e993e9dc62c492e25740cc3bd9"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "0043f8f334723f5efe593d381f5595b674f64cb54f038074289d7f91721e4993"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "617210c0cacefcf01275578e409ff8ca4492102c55fb3247a2edfb348c4930a9"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "a3ad97ed33c3f35e510c3af12ff19eee42f813cdb68b1e02d81b470e0f639094"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_arm64.tar.gz"
    end
  end

  name "parallel-harness-pets"
  desc "A creature for every worktree, in your agent's status line"
  homepage "https://github.com/TevvvB/parallel-harness-pets"

  binary "pets"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/pets"],
                   must_succeed: false
  end
end
