# frozen_string_literal: true

Gem::Specification.new do |s|
  s.name = "dorian-csv-all"
  s.version = "0.0.1"
  s.summary = "Evaluates some code all lines of the csv input"
  s.description =
    "#{s.summary}\n\ne.g. `cat users.csv | csv-all --headers \"puts it.first[:name]\"`"
  s.authors = ["Dorian Marié"]
  s.email = "dorian@dorianmarie.com"
  s.files = ["bin/csv-all"]
  s.executables << "csv-all"
  s.homepage = "https://github.com/dorianmariecom/dorian-csv-all"
  s.license = "MIT"
  s.metadata = { "rubygems_mfa_required" => "true" }
  s.add_dependency "csv"
  s.add_dependency "activesupport"
end
