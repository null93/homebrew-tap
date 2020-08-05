class KubeSwitch < Formula

	desc "Switch between Kubernetes context & namespace using an interactive menu."
	homepage "https://github.com/null93/kube-switch"
	url "https://github.com/null93/kube-switch/archive/1.0.1.tar.gz"
	sha256 "c5256b166109f2d88d29a1c43f89f61eaa9cad7a8720578af83c0cd7d64bd0ae"
	version "1.0.1"

	depends_on "python3"

	resource "kubernetes" do
		url "https://files.pythonhosted.org/packages/60/3f/2fef94fb65e8f94d768356e5fb9be222d18027e6167ccc65e2090917a771/kubernetes-11.0.1.tar.gz"
		sha256 "1a2472f8b01bc6aa87e3a34781f859bded5a5c8ff791a53d889a8bd6cc550430"
	end

	resource "PyYAML" do
		url "https://files.pythonhosted.org/packages/64/c2/b80047c7ac2478f9501676c988a5411ed5572f35d1beff9cae07d321512c/PyYAML-5.3.1.tar.gz"
		sha256 "b8eac752c5e14d3eca0e6dd9199cd627518cb5ec06add0de9d32baeee6fe645d"
	end

	def install
		bin.install "bin/kube-switch"
	end

	def caveats
		"Optionally bind program to CTRL+K & ideally append to .bash_profile\n\n" +
		"    $ bind -x '\"\\C-k\":\"kube-switch\"'\n\n"
	end

end
