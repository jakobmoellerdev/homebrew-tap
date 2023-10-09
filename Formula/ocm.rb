# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.1/ocm-0.4.1-darwin-arm64.tar.gz"
      sha256 "92c1d5b0acc8c43ba4d180ba14c93081fba567c4bbe45433a2be0392c9473849"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.1/ocm-0.4.1-darwin-amd64.tar.gz"
      sha256 "2f8cf3b96b374bacd47d5b9025381cfe4b26d0f6ebdbd8fc2f7984cb08944410"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.1/ocm-0.4.1-linux-arm64.tar.gz"
      sha256 "39e5bd2b0e8b6e6e59faa625459ec456f82261523f09e3c882210ca7170f79f0"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.1/ocm-0.4.1-linux-amd64.tar.gz"
      sha256 "3dc3fff0e24d37bef9aef1506a602d9202504ba2c8a6415663e0adaf7d6603e2"

      def install
        bin.install "ocm"
      end
    end
  end

  test do
    system "#{bin}/ocm --version"
  end
end
