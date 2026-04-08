class Maip < Formula
  desc "Machine Agent Identity Protocol CLI — manage identities, receipts, and trust scores"
  homepage "https://github.com/truthlocks/maip"
  version "1.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/truthlocks/maip/releases/download/v1.0.0/maip-darwin-arm64"
      sha256 "096bf25e4100e7bfb11c9c8fa24f7bcc22f4533b72d1431bb7e43d5eb994de01"
    end
    on_intel do
      url "https://github.com/truthlocks/maip/releases/download/v1.0.0/maip-darwin-amd64"
      sha256 "97465efc1c8145be2cc33cac6395d43c8016212ec5347478390ad7ae6c087bcd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/truthlocks/maip/releases/download/v1.0.0/maip-linux-arm64"
      sha256 "92a999bf147fb16ea7366710d8cc397a7e4bed21b11702885c1f1aefd97f05de"
    end
    on_intel do
      url "https://github.com/truthlocks/maip/releases/download/v1.0.0/maip-linux-amd64"
      sha256 "42a1dbe1eb1a122d8430f46d69ee1d74484a931599a49905ee392eac7dd2b57f"
    end
  end

  def install
    binary = Dir["maip*"].first
    mv binary, "maip"
    chmod 0755, "maip"
    bin.install "maip"
  end

  test do
    assert_match "1.0.0", shell_output("#{bin}/maip --version")
  end
end
