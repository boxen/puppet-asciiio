require "spec_helper"

describe "asciiio" do
  let(:facts) { default_test_facts }

  it do
    should include_class("boxen::config")

    should contain_exec("install asciiio").with({
      :command => "curl -O asciiio https://raw.github.com/sickill/ascii.io-cli/master/bin/asciiio && chmod a+x asciiio",
      :creates => "/test/boxen/bin/asciiio",
      :cwd     => "/test/boxen/bin"
    })
  end
end
