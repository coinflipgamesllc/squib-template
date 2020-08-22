# Squib Template

This repository is a template for [squib](https://squib.rocks) projects. There are some nice features built-in that
can be re-used:

- Docker container! Run using `docker-compose run app` to auto-build whenever you make changes.
- [Guard](https://github.com/guard/guard) does the aforementioned auto-building.
- Google sheets data extension. (See how-to section below)
- Built-in sprues for Tabletop Simulator and Print & Play games.

## How to use google sheets

1. Go to Google Sheets and create your game data.
2. Enter share settings and change to 'Anyone with the link can view'
3. Choose File > Publish to the web...
4. Pick the format (you want csv)
5. Click Publish
6. Copy the link from the _Share_ popup _not_ the publish popup. It _must_ be in the format https://docs.google.com/spreadsheets/d/... (*not* /d/e/)
7. The ID of your sheet is what you'll use to import the data. It's after the /d/ in the URL

```ruby
deck = Squib.gsheet '123qqq9Tbw9c1GOQmdQodQOxCnF9sSav_iBgOdY0J4zI'
```

## Contributing

Submit an issue or pull request to add any features you'd like to see.
