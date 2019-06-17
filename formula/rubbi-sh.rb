# This file was generated by GoReleaser. DO NOT EDIT.
class RubbiSh < Formula
  desc "Go and Shell helpers to provide a sandbox directory for rubbish."
  homepage "https://github.com/jotadrilo/rubbi-sh"
  version "0.0.11"

  if OS.mac?
    url "https://github.com/jotadrilo/rubbi-sh/releases/download/0.0.11/rubbi-sh_0.0.11_darwin_x86_64.tar.gz"
    sha256 "441169074fa76e3371c849cd40b9640d9d0807b1043994e5202162773e43c34b"
  elsif OS.linux?
    url "https://github.com/jotadrilo/rubbi-sh/releases/download/0.0.11/rubbi-sh_0.0.11_linux_x86_64.tar.gz"
    sha256 "fa398c2b3adc5b79d515933bf97249533ab4794af6664566daeff1e488828aab"
  end

  def install
    bin.install "rubbi-sh"
    (share/"alias").install "dotfiles/.rubbi.sh"
  end

  def caveats; <<~EOS
    Please import the .rubbi.sh file in your profile configuration or add its content directly
    
     . #{(share/"alias")}/.rubbi.sh
    
    or the .rubbi.minimal.sh for a minimal setup (rbsh shell function only)
    
     . #{(share/"alias")}/.rubbi.minimal.sh
    
    This tool is based on some alias and shell functions that are core to work.
  EOS
  end

  test do
    system bin/"rubbi-sh", "-version"
  end
end
