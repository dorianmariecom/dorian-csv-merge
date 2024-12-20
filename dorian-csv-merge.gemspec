# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-csv-merge"
  s.version = File.read("VERSION").strip
  s.summary = "merges multiple csv files with headers"
  s.description =
    "#{s.summary}\n\ne.g. `csv-merge users_1.csv users_2.csv users.csv`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/csv-merge"]
  s.executables << "csv-merge"
  s.homepage = "https://github.com/dorianmariecom/dorian-csv-merge"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "csv"
  s.add_dependency "dorian-arguments"
  s.required_ruby_version = ">= 3.1"
end
