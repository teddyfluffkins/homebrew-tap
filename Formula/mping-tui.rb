class MpingTui < Formula
  desc "Minimal TUI to ping-monitor multiple hosts"
  homepage "https://github.com/teddyfluffkins/mping-tui"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/teddyfluffkins/mping-tui/releases/download/v0.1.1/mping_0.1.1_darwin_arm64.tar.gz"
      sha256 "36bab254f23c3fdc56914a1637cce8a7ab23e562d20807a6783dbc3decb0d837"
    else
      url "https://github.com/teddyfluffkins/mping-tui/releases/download/v0.1.1/mping_0.1.1_darwin_amd64.tar.gz"
      sha256 "166cfc13aaea7163fe8a40bf48e228092cb2b1a5e26e528f9aebdc6965ea5c26"
    end
  end

  def install
    bin.install "mping-tui"
  end

  test do
    assert_match "mping", shell_output("#{bin}/mping-tui --help 2>&1")
  end
end

