cask "termagitchi" do
  version "0.2.9"

  on_macos do
    on_intel do
      sha256 "2fe4bfe2e6545330d7f099a86eb2abca79813c6cd6797c151a056b206e1c3cb4"
      url "https://github.com/TevvvB/termagitchi/releases/download/v#{version}/termagitchi_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "0aa85299a5c738e2fd2aa2c8b9a45d2c26f9d4c9bd57a2fa4682c6624f19d082"
      url "https://github.com/TevvvB/termagitchi/releases/download/v#{version}/termagitchi_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "3a20b4b987b0852345667f5bb5291337da1861e2c42352fb201e03a0250bf29a"
      url "https://github.com/TevvvB/termagitchi/releases/download/v#{version}/termagitchi_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "41e692a7aa4ee5edb9ae4e4a25f5b9fe1fe6703c329fffaeefc7f108e46004b2"
      url "https://github.com/TevvvB/termagitchi/releases/download/v#{version}/termagitchi_#{version}_linux_arm64.tar.gz"
    end
  end

  name "termagitchi"
  desc "A creature for every worktree, in your agent's status line"
  homepage "https://github.com/TevvvB/termagitchi"

  binary "pets"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{staged_path}/pets"],
                   must_succeed: false
  end
end
