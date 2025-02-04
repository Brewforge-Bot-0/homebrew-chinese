class Reportgen < Formula
  desc "生成报告"
  homepage "https://github.com/Mrered/Gobin"
  url "https://github.com/Mrered/Gobin/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "52d807b878a4259b68e4a4f8c5980c0c6c9036349c0b63b6c7144a1330539b09"
  license "MIT"
  head "https://github.com/Mrered/Gobin.git", branch: "main"

  depends_on "go" => :build
  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/reportgen"
  end

  test do
    system bin/"reportgen", "-v"
  end
end
