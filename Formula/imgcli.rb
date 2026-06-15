class Imgcli < Formula
  desc "Dependency-free CLI to convert, resize, crop, filter & composite images (ffmpeg-style)"
  homepage "https://github.com/swperb/imgcli"
  url "https://github.com/swperb/imgcli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "1126075c9cc674b69ec45a7a30eb01c858c481ea0fef21f520f6021b0303fa25"
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
