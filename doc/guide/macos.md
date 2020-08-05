# Macos Specific Items

## Performance

## Static compilation
In static we mean the linkage to external libraries. (e.g. zlib, openssl)

Macos can statically link all external libraries with the exception of libsystem.

The requirements for this are that you must use Clang.
While it is generally not recommended to use Clang on macos, as it does take a significant amount
of time to compile.

The other requirement is that you have to 'hide' the dynamic libs to force static linkage.
See https://dropline.net/2015/10/static-linking-on-mac-os-x/ for an example script to do this,
and the rationale behind it.

### Using raw gxc examples
```
gxc -o slack -cc-options "-Bstatic -DOPENSSL_NO_KRB5 -I/usr/local/include -I/usr/local/opt/openssl@1.1/include" -static -ld-options "-static -lpthread -L/usr/lib64 -L/usr/local/opt/openssl@1.1/lib -lssl -L/usr/local/lib -ldl -lyaml -lz" -exe slack/slack.ss
```

### Homebrew examples
As an example Makefile, I use the script from above to hide the dynamic libraries for the primary
libraries this app uses. This also is how using homebrew brew formulae one can deliver static binaries.

```makefile
hide-shared:
	@./hide-shared-libs -d /usr/local/opt/openssl@1.1 -m
	@./hide-shared-libs -d /usr/local/opt/libyaml -m
	@./hide-shared-libs -d /usr/local/opt/zlib -m
	@./hide-shared-libs -d /usr/local/opt/lmdb -m
	@./hide-shared-libs -d /usr/local/opt/leveldb -m

restore-shared:
	@./hide-shared-libs -d /usr/local/opt/openssl@1.1 -r
	@./hide-shared-libs -d /usr/local/opt/libyaml -r
	@./hide-shared-libs -d /usr/local/opt/zlib -r
	@./hide-shared-libs -d /usr/local/opt/lmdb -r
	@./hide-shared-libs -d /usr/local/opt/leveldb -r


app:
	@brew remove -f --ignore-dependencies $(space) || true
	brew install --verbose --build-bottle $(space)
	brew bottle $(space)
	$(MAKE) restore-shared

slack:
	$(MAKE) app space=slack
```

Then with the slack.rb, one can package up static binaries for Homebrew.

```ruby
class Slack < Formula
  desc "Slack command line helper"
  homepage "https://github.com/ober/slack"
  url "https://github.com/ober/slack.git"
  version "0.06"

  bottle do
    root_url "https://github.com/ober/homebrew-artifacts/raw/master"
    sha256 "670974d34f99f8332850c21a30a7f342afcb3aee9982f20f8e4ed2c25991ff01" => :mojave
  end

  depends_on "gerbil-scheme-ober" => :build

  def install
    ENV['CC'] = Formula['gcc'].opt_bin/Formula['gcc'].aliases.first.gsub("@","-")
    gxpkg_dir = Dir.mktmpdir

    gambit = Formula["gambit-scheme-ober"]
    ENV.append_path "PATH", "#{gambit.opt_prefix}/current/bin"

    gerbil = Formula["gerbil-scheme-ober"]
    ENV['GERBIL_HOME'] = "#{gerbil.libexec}"

    ENV['GERBIL_PATH'] = gxpkg_dir
    mkdir_p "#{gxpkg_dir}/bin" # hack to get around gerbil not making ~/.gxpkg/bin
    mkdir_p "#{gxpkg_dir}/pkg" # ditto
    system "gxpkg", "install", "github.com/ober/slack"
    bin.install Dir["#{gxpkg_dir}/bin/slack"]
  end

  test do
    output = `#{bin}/slack`
    assert_equal 0, $CHILD_STATUS.exitstatus
  end
end

```
Additional examples at https://github.com/ober/homebrew-brew



###
