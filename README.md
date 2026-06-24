# `dorian-csv-merge`

Merge multiple headered CSV files into one output file.

## Install

```bash
gem install dorian-csv-merge
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
csv-merge input1.csv input2.csv output.csv
```

Run `csv-merge -h` for generated option details and `csv-merge -v` for the installed version.

## Notes

- The last argument is the output path. Headers are taken from the first input and written once.

## Examples

### Merge two exports

```bash
csv-merge users-1.csv users-2.csv users.csv
```
