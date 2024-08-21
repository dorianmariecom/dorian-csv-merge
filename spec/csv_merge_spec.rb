# frozen_string_literal: true

require "spec_helper"
require "tempfile"

RSpec.describe "csv-merge" do
  it "works" do
    a = Tempfile.create
    b = Tempfile.create
    c = Tempfile.create
    csv = <<~CSV
      id,name
      1,Dorian
      2,Damien
      3,Laurie
    CSV
    File.write(a, csv)
    File.write(b, csv)
    `bin/csv-merge #{a.path} #{b.path} #{c.path}`
    expect(File.read(c)).to eq(<<~CSV)
      id,name
      1,Dorian
      2,Damien
      3,Laurie
      1,Dorian
      2,Damien
      3,Laurie
    CSV
  end
end
