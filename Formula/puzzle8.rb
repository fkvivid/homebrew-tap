class Puzzle8 < Formula
  desc "Terminal sliding-puzzle game and solver"
  homepage "https://github.com/fkvivid/puzzle8"
  url "https://github.com/fkvivid/puzzle8/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"
  license "MIT"
  head "https://github.com/fkvivid/puzzle8.git", branch: "main"

  depends_on "go" => :build

  def install
    ssytem "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/puzzle8"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/puzzle8 help")
  end
end
