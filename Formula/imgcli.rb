class Imgcli < Formula
  desc "Lightweight ffmpeg-style image conversion & processing CLI (no deps)"
  homepage "https://github.com/swperb/imgcli"
  url "https://github.com/swperb/imgcli/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "ed0ec9e323ceb7c0e68c727a23587c2e1544857de3ad3878875edf679a825bb3"
  license "MIT"
  head "https://github.com/swperb/imgcli.git", branch: "main"

  def install
    system "make"
    bin.install "imgcli"
  end

  test do
    system bin/"imgcli", "-y", "-i", "testsrc=32x32", testpath/"o.png"
    assert_path_exists testpath/"o.png"
  end
end
