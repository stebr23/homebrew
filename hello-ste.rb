class HelloSte < Formula
  desc ""
  homepage ""
  url "https://github.com/stebr23/homebrew/releases/tag/v1.0.0"
  sha256 "e8fa9529cd186ddcd5eb8ee5bd9e71f502daf43994bb0c2032615229072c62b5"
  license "default"

  # depends_on "cmake" => :build

  def install
    # move 'hello-ste' under #{prefix}/bin/
    bin.install "hello-ste"

    ## OR move 'myscript.sh' to #{prefix}/bin/mybettername
    #bin.install "myscript.sh" => "mybettername"

    ## OR move *.sh under bin/
    #bin.install Dir["*.sh"]
  end

  test do
    hello-ste test
  end
end
