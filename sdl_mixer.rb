class SdlMixer < Formula
  desc "Sample multi-channel audio mixer library"
  homepage "https://www.libsdl.org/projects/SDL_mixer/"
  url "https://www.libsdl.org/projects/SDL_mixer/release/SDL_mixer-1.2.12.tar.gz"
  sha256 "1644308279a975799049e4826af2cfc787cad2abb11aa14562e402521f86992a"

  option :universal

  # Require more of the codecs by default, so Hello World! examples work.
  depends_on "pkg-config" => :build
  depends_on "sdl"
  depends_on "flac"
  depends_on "fluid-synth"
  depends_on "smpeg"
  depends_on "libmikmod" => :optional
  depends_on "libvorbis" => :optional

  def install
    inreplace "SDL_mixer.pc.in", "@prefix@", HOMEBREW_PREFIX

    ENV.universal_binary if build.universal?

    system "./configure", "--prefix=#{prefix}",
                          "--disable-dependency-tracking"
    system "make", "install"
  end
end
