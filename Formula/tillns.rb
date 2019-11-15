class Tillns < Formula

	desc "Switch faster between tiller namespaces in helm"
	homepage "https://github.com/null93/tillns"
	url "https://github.com/null93/tillns/archive/1.1.0.tar.gz"
	sha256 "b8704971af0ccf434c1596fe85c6ca6918006acdcc96485302c14e8072198c5e"
	version "1.1.0"

	def install
		bin.install "bin/tillns"
	end

	def caveats
		"Alias helm command to go through tillns\n\n" +
		"    $ echo -e \"alias helm='tillns'\" >> ~/.bash_profile\n\n" +
		"Use helm normally, change tiller namespace with kubectx/kubens\n\n" +
		"    # Passing -- will disable this program and run helm normally\n" +
		"    $ helm -- ls -a \n\n"
	end

end
