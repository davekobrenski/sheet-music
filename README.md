# LilyPond Scores

### Output file to PNG:

```sh
lilypond -fpng -dresolution=300 --output=filename file.ly
```

### With transparency:

```sg
lilypond --png -dresolution=300 -dpixmap-format=pngalpha file.ly
```