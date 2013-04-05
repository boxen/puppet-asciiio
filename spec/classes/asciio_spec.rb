require "spec_helper"

describe "asciiio" do
  let(:facts) { default_test_facts }

  it do
    should contain_file("/test/boxen/bin/asciiio").with({
      :mode   => "0755",
      :source => "https://raw.github.com/sickill/ascii.io-cli/master/bin/asciiio"
    })
  end
end
