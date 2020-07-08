# Squib Template

This repository is a template for [squib](https://squib.rocks) projects. There are some nice features built-in that
can be re-used:

- Docker container! Run using `docker-compose up` to auto-build whenever you make changes.
- [Guard](https://github.com/guard/guard) does the aforementioned auto-building.
- Google sheets data extension. (See how-to section below)
- Built-in sprues for Tabletop Simulator and Print & Play games.

## How to use google sheets

1. Go to Google Sheets and create your game data.
2. Choose File > Publish to the web...
3. Pick the format (you want csv)
4. Click Publish
5. Copy the link generated. It _must_ be in the format https://docs.google.com/spreadsheets/d/e/...
6. The ID of your sheet is what you'll use to import the data:

```ruby
deck = Squib.gsheet '2DutFXPxYEXlaBmd5ML2MsBKtUvWeVbeSKMCGT-7WKMw'
```

## Contributing

Submit an issue or pull request to add any features you'd like to see.
