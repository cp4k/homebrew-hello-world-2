class SdlImage < Formula
  desc "Image file loading library"
  homepage "https://www.libsdl.org/projects/SDL_image"
  
  # Note: this is an older version than Homebrew installs by default. 1.2.12 has issues on El Capitan.
  url "https://www.libsdl.org/projects/SDL_image/release/SDL_image-1.2.10.tar.gz"
  version "1.2.10"
  sha256 "75e05d1e95f6277b44797157d9e25a908ba8d08a393216ffb019b0d74de11876"

  # Require the image libraries, so Hello World! examples are guaranteed to work.
  depends_on "pkg-config" => :build
  depends_on "sdl"
  depends_on "jpeg"
  depends_on "libpng"
  depends_on "libtiff"
  depends_on "webp"    => :recommended

  option :universal

  def install
    ENV.universal_binary if build.universal?
    inreplace "SDL_image.pc.in", "@prefix@", HOMEBREW_PREFIX

    system "./configure", "--prefix=#{prefix}",
                          "--disable-dependency-tracking",
                          "--disable-sdltest"
    system "make", "install"
  end
end
