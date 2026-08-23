cask "parallel-harness-pets" do
  version "0.2.7"

  on_macos do
    on_intel do
      sha256 "ca5fbc8b23562bb292d087dd6cee3ec0546802ad78abbef7aca6071554c854a7"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_amd64.tar.gz"
    end
    on_arm do
      sha256 "b8642d175ee3c2c2f10d0f9dd79e7ffde0cf6339709ca82ea65132e62c97cd14"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_darwin_arm64.tar.gz"
    end
  end

  on_linux do
    on_intel do
      sha256 "a1f2c87e76a006dc210682f090f100042937f34a7fce27a1b17f0abdead7a202"
      url "https://github.com/TevvvB/parallel-harness-pets/releases/download/v#{version}/parallel-harness-pets_#{version}_linux_amd64.tar.gz"
    end
    on_arm do
      sha256 "88993ce5d80005923613f18c05df97087cc43a4fe13dd913a03b9d3028bb3ec7"
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
