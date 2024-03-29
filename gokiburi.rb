# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gokiburi < Formula
  desc "Automatic test runs for Go projects"
  homepage "https://github.com/michenriksen/gokiburi"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/michenriksen/gokiburi/releases/download/v0.2.1/gokiburi_Darwin_arm64.tar.gz"
      sha256 "eadd422c1ce9bd4e093bf1aa730f92360160afb9fe7260d6abc648750288e4e4"

      def install
        bin.install "gokiburi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/michenriksen/gokiburi/releases/download/v0.2.1/gokiburi_Darwin_x86_64.tar.gz"
      sha256 "232b50b08d78d0f08a0b083e8e5fd7d4fe106001f279b7e9ab7b3605cd2ba143"

      def install
        bin.install "gokiburi"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/michenriksen/gokiburi/releases/download/v0.2.1/gokiburi_Linux_arm64.tar.gz"
      sha256 "a43ea186f43437cce4586bfaa551b866330ccd06dc81bb6bb6f9a1ee761e66ae"

      def install
        bin.install "gokiburi"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/michenriksen/gokiburi/releases/download/v0.2.1/gokiburi_Linux_x86_64.tar.gz"
      sha256 "a302185e41fdd5a089d490e726b278418c3e2391d4fcd20b7500563c6bcbc7c6"

      def install
        bin.install "gokiburi"
      end
    end
  end

  test do
    system "#{bin}/gokiburi --version"
  end
end
