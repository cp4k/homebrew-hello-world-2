class HelloWorld2 < Formula
  desc "All the software you need to use Hello World!"
  homepage "http://helloworldbookblog.com"
  url "https://github.com/cp4k/homebrew-hello-world-2.git", :using => :git, :revision => "5bd55d5bf1464b91ef6095885f9df978e0ba26c7"
  version "source"
  revision 2
  
  depends_on "python"
  depends_on "sdl_image"
  depends_on "cp4k/hello-world-2/sdl_mixer"
  depends_on "cp4k/hello-world-2/pygame"
  depends_on "cartr/qt4/pyqt@4"
  
  def install
    bin.install "finish-hello-world-2-installation.py"
  end
  
  def caveats
    "Make sure to run `finish-hello-world-2-installation.py`!"
  end
end
