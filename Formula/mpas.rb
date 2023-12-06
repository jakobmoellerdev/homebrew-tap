# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpas < Formula
  desc "Mpas CLI"
  homepage ""
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.6.1/mpas_0.6.1_darwin_arm64.tar.gz"
      sha256 "5821ff83efe49ee8fc234533f3a819c796994d961f60195e6849123631c6b92b"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.6.1/mpas_0.6.1_darwin_amd64.tar.gz"
      sha256 "500456f1ac413376a9025918feefc3a93d846292b5450ca857f7d9255496ef74"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.6.1/mpas_0.6.1_linux_amd64.tar.gz"
      sha256 "4d44c31ebb6096e88d1ad73994a04a8608d328c188fbc15a7fd25a6373b65cfc"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.6.1/mpas_0.6.1_linux_arm64.tar.gz"
      sha256 "a5f26810401e57a077592810c032c45d92a23b584b0b4e8a8eb11c267e6f34b5"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
  end

  test do
    system "#{bin}/mpas --version"
  end
end
