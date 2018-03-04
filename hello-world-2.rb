class HelloWorld2 < Formula
  desc "All the software you need to use Hello World!"
  homepage "http://helloworldbookblog.com"
  url "https://github.com/cp4k/homebrew-hello-world-2.git", :using => :git, :revision => "3994ee69e6447ebfb8204d47018b310cc95b43a0"
  version "source"
  revision 5
  
  depends_on "python@2"
  depends_on "cartr/qt4/pyqt@4"
  
  def install
    bin.install "finish-hello-world-2-installation.py"
  end
  
  def caveats
    "Make sure to run `finish-hello-world-2-installation.py`!"
  end
end
