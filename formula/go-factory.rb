# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoFactory < Formula
  desc "A factory code autogenator for Go."
  homepage "https://github.com/jotadrilo/go-factory"
  version "1.0.0"

  on_macos do
    on_intel do
      url "https://github.com/jotadrilo/go-factory/releases/download/1.0.0/go-factory_1.0.0_darwin_x86_64.tar.gz"
      sha256 "6fe7ccc397a0cc39164cf7be5dd904d889ea59b0d39b4c8754fc9f51a8934d12"

      def install
        bin.install "go-factory"
      end
    end
    on_arm do
      url "https://github.com/jotadrilo/go-factory/releases/download/1.0.0/go-factory_1.0.0_darwin_arm64.tar.gz"
      sha256 "a6effaa683547e415c30b5366d7c44b9b888700d73435ec307897306c8779a36"

      def install
        bin.install "go-factory"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jotadrilo/go-factory/releases/download/1.0.0/go-factory_1.0.0_linux_x86_64.tar.gz"
        sha256 "d964031fd3c8f13f7a93c609e22293d01eb4b564cc880f172dcaa4610ad396d3"

        def install
          bin.install "go-factory"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jotadrilo/go-factory/releases/download/1.0.0/go-factory_1.0.0_linux_arm64.tar.gz"
        sha256 "f435b4b1bae4cb1f1600bd1cc23b91ab9c732aae862094ae188b27d86c1d44ea"

        def install
          bin.install "go-factory"
        end
      end
    end
  end

  test do
    system bin/"go-factory", "-version"
  end
end
