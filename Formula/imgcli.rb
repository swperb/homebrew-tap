class Imgcli < Formula
  desc "Lightweight ffmpeg-style image conversion & processing CLI (no deps)"
  homepage "https://github.com/swperb/imgcli"
  url "https://github.com/swperb/imgcli/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "3eedde19ddfa25dc3ed453a94f491b561f92d3e1af6fb2c66929db48e530f644"
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
