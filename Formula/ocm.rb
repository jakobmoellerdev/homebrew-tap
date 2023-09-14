# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.0/ocm-0.4.0-darwin-arm64.tar.gz"
      sha256 "27d773bb6bff0827e6e8e20badc3615c139dcea43d7e34ed6031d0a838addb84"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.0/ocm-0.4.0-darwin-amd64.tar.gz"
      sha256 "eaf2275eba7fa81b208262bbd782ffd6983898540583ee649412a2e34ed7086e"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.0/ocm-0.4.0-linux-arm64.tar.gz"
      sha256 "2826a14cbe24704f8e34de37b2af126d3b715da995cd4ae584e5f0b75b6636ec"

      def install
        bin.install "ocm"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/ocm/releases/download/v0.4.0/ocm-0.4.0-linux-amd64.tar.gz"
      sha256 "8d648af70e0df320d68c7b6116cd825ed784a3a96f6cdfb0587f74f1348930ad"

      def install
        bin.install "ocm"
      end
    end
  end

  test do
    system "#{bin}/ocm --version"
  end
end
