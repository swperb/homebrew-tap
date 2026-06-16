class Imgcli < Formula
  desc "Lightweight ffmpeg-style image conversion & processing CLI (no deps)"
  homepage "https://github.com/swperb/imgcli"
  url "https://github.com/swperb/imgcli/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "4d1b2b4458787502ae651a8f9d798e8b949df22f37bc711658e7939a5c1e7789"
  license "MIT"
  head "https://github.com/swperb/imgcli.git", branch: "main"

  def install
    system "make"
    bin.install "imgcli"
    man1.install "man/imgcli.1"
  end

  test do
    system bin/"imgcli", "-y", "-i", "testsrc=32x32", testpath/"o.png"
    assert_path_exists testpath/"o.png"
  end
end
