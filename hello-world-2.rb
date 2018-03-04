class HelloWorld2 < Formula
  desc "All the software you need to use Hello World!"
  homepage "http://helloworldbookblog.com"
  url "https://github.com/cp4k/homebrew-hello-world-2.git", :using => :git, :revision => "5bd00ef661045a97c26f51c42d75a7b56418d2f7"
  version "source"
  revision 6
  
  depends_on "python@2"
  depends_on "cartr/qt4/pyqt@4"
  
  def install
    bin.install "finish-hello-world-2-installation.py"
  end
  
  def caveats
    "Make sure to run `finish-hello-world-2-installation.py`!"
  end
end
