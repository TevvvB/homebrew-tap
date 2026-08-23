cask "parallel-harness-pets" do
  version "0.2.6"

  on_macos do
    on_intel do
      sha256 "f344c8ac82c751eedd2899fdcf9854de1c0a3db9fec048e4478077ac50554a4e"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "9e6bb26a85d0c8bff91e6df52d90de2a16ecd6a9070dd02458eb6e9222f33919"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "2d0e370c9a107ca0aa61c7404c81cebde914f72e762db9f5ce84f76e21ee2cf7"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "ebd7e0ba3a3976913788d1ca1b0ad49e65db521a49a84444e6e4c214506b5c08"
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
