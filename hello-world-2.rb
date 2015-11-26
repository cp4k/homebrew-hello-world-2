class HelloWorldSoftware < Formula
  desc "All the software you need to use Hello World!"
  homepage "http://helloworldbookblog.com"
  url "https://manning-content.s3.amazonaws.com/download/3/8282dda-9631-46db-b9b1-0c6fecb2e43a/HelloWorld2_source_code.zip"
  version "source"
  sha256 "6b62de3eb93c649fb06c2a65fcc91106f62c85160ad1586a91bf53eeae9e882f"
  
  depends_on :python
  depends_on "cp4k/hello-world-software/sdl_image"
  depends_on "cp4k/hello-world-software/sdl_mixer"
  depends_on "homebrew/python/pygame"
  depends_on "pyqt"
  
  resource "easygui" do
    url "https://pypi.python.org/packages/source/e/easygui/easygui-0.97.4.tar.gz"
    sha256 "7f5646f3e44c368b444231c599e0c0be696ef192783713be7e59ab6238dc1ce6"
  end
  
  def install
    resource("easygui").stage { system "python", *Language::Python.setup_install_args(libexec/"vendor") }
  end
  
  def caveats
    "The Hello World! sample code was not installed. You can get it at http://helloworldbookblog.com/downloads/#. Also, make sure to run `brew linkapps`!"
  end
end
