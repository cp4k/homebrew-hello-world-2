class HelloWorld2 < Formula
  desc "All the software you need to use Hello World!"
  homepage "http://helloworldbookblog.com"
  url "https://github.com/cp4k/homebrew-hello-world-2.git", :using => :git, :revision => "308c311d700674ee93b19e713862d1224d186f4d"
  version "source"
  revision 4
  
  depends_on "python"
  depends_on "cartr/qt4/pyqt@4"
  
  def install
    bin.install "finish-hello-world-2-installation.py"
  end
  
  def caveats
    "Make sure to run `finish-hello-world-2-installation.py`!"
  end
end
