class Tillns < Formula

	desc "Switch faster between tiller namespaces in helm"
	homepage "https://github.com/null93/tillns"
	url "https://github.com/null93/tillns/archive/1.0.0.tar.gz"
	sha256 "cdbfe4300de99495763e17435f03e1aed8437add81ead011f7e73ebc37e4c248"
	version "1.0.0"

	def install
		bin.install "bin/tillns"
	end

	def caveats
		"Alias helm command to go through tillns via --exec flag\n\n" +
		"    echo -e \"alias helm='tillns --exec'\" >> ~/.bash_profile\n\n"
	end

end
