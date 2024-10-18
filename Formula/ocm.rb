# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Ocm < Formula
  desc "The OCM CLI makes it easy to create component versions and embed them in build processes."
  homepage "https://ocm.software/"
  version "0.16.2"

  on_macos do
    on_intel do
      url "https://github.com/open-component-model/ocm/releases/download/v0.16.2/ocm-0.16.2-darwin-amd64.tar.gz"
      sha256 "363d2f3835ed0a9921dcab1cd21ca201a9166b1d83ccb5d87284739930154268"

      def install
        bin.install "ocm"
      end
    end
    on_arm do
      url "https://github.com/open-component-model/ocm/releases/download/v0.16.2/ocm-0.16.2-darwin-arm64.tar.gz"
      sha256 "4c62072a2544a1db9a0f5f7ade4d7c0cc7c4fa7a034f480a56c26359ea1ff1c5"

      def install
        bin.install "ocm"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.16.2/ocm-0.16.2-linux-amd64.tar.gz"
        sha256 "42f6f536f8e1956f507022d95d0a165cfde08363ba289bba8849b548e04354e9"

        def install
          bin.install "ocm"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/open-component-model/ocm/releases/download/v0.16.2/ocm-0.16.2-linux-arm64.tar.gz"
        sha256 "94f650137eb65c6c664fd64501374224d0f38f66e25940daa65190b2ccfb52eb"

        def install
          bin.install "ocm"
        end
      end
    end
  end

  test do
    system "#{bin}/ocm --version"
  end
end
