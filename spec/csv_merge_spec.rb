# frozen_string_literal: true

require "spec_helper"
require "securerandom"
require "tmpdir"
require "tempfile"

RSpec.describe "csv-merge" do
  it "works" do
    headers = "id,name"
    first = Tempfile.create
    second = Tempfile.create
    output = Tempfile.create
    File.write(first, [headers, "1,Dorian"].join("\n"))
    File.write(second, [headers, "2,Damien"].join("\n"))
    `bin/csv-merge #{first.path} #{second.path} #{output.path}`
    expect(File.read(output)).to eq([headers, "1,Dorian", "2,Damien"].join("\n") + "\n")
  ensure
    begin
      File.delete(first)
    rescue StandardError
      nil
    end
    begin
      File.delete(second)
    rescue StandardError
      nil
    end
    begin
      File.delete(output)
    rescue StandardError
      nil
    end
  end
end
