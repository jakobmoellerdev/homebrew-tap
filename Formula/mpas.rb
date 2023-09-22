# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Mpas < Formula
  desc "Mpas CLI"
  homepage ""
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.3.0/mpas_0.3.0_darwin_arm64.tar.gz"
      sha256 "da4e0d69e394a9ede219af5e8449139bc9f33c8a894a2b98205f6541f92beca0"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.3.0/mpas_0.3.0_darwin_amd64.tar.gz"
      sha256 "f7b0c91daac62082e711ababdd1678ce470cdfc8d77f4c588a39c6e43b34cac7"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.3.0/mpas_0.3.0_linux_arm64.tar.gz"
      sha256 "a0622a0ef792bb3a9cc959e5c09767429429b2dc8a8ef5dca61c091dca1c026f"

      def install
        bin.install "mpas"

        generate_completions_from_executable(bin/"mpas", "completion")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/open-component-model/MPAS/releases/download/v0.3.0/mpas_0.3.0_linux_amd64.tar.gz"
      sha256 "f0f62f8ff8d6aad7803e293b8812f445e7ce19ac14f2e7a7b2576cbc318a2469"

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
