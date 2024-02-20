#import "../template/template.typ": *

#cvSection("Projects & Associations")

#cvEntry(
  title: [VRCX Insights],
  society: [Personal Project],
  date: [2023 - Present],
  location: [https://github.com/pawarherschel/vrcx-insights],
  description: list(
    [A simple program to find out the various friend circles which might exist via the data collected by VRCX],
    [Written in Rust, it uses the SQLite database created by VRCX to find out the friend circles],
    [It then generates a graph and sorts the friend circles by size]
  )
)

#cvEntry(
  title: [Booth Archiver],
  society: [Personal Project],
  date: [2023 - Present],
  location: [https://github.com/pawarherschel/booth_archiver],
  description: list(
    [A simple CLI tool to archive the contents of your booth wishlist],
    [Written in Rust, it scrapes the Booth website and downloads images for each item],
    [It then converts the data into an Excel spreadsheet and writes markdown files for each item]
  )
)

#cvEntry(
  title: [Tachiyomi Backup to AniList],
  society: [Personal Project],
  date: [2024 - Present],
  location: [https://github.com/pawarherschel/tachiyomi-backup-to-anilist],
  description: list(
    [A simple CLI tool to sync manga from Tachiyomi backup to AniList],
    [Tachiyomi's backup is a gzipped protobuf file, this tool reads the file and syncs the manga to AniList],
  )
)

#cvEntry(
  title: [Stock Crasher],
  society: [Personal Project],
  date: [2023],
  location: [https://github.com/SakuraKat/stock-crasher],
  description: list(
    [A silly cli tool to show the current price of a stock in VRChat using OSC],
    [It gets the stock price from Yahoo Finance and sends it to VRChat via the OSC protocol],
    [Name given by a friend, written in Python]
  )
)

#cvEntry(
  title: [Cosmos Conquerors (GMTK2023)],
  society: [GMTK2023 Game Jam],
  date: [2023],
  location: [https://github.com/pawarherschel/GMTK2023],
  description: list(
    [A game made for the GMTK Game Jam 2023, the theme was 'Roles Reverse'.],
    [This is a simple game where the roles from the game Space Invaders are reversed.],
    [Available on itch.io (https://pawarherschel.itch.io/cosmos-conquerors)]
  )
)

#cvEntry(
  title: [Various Simple Games made in Godot],
  society: [Personal Projects],
  date: [2021],
  location: [https://github.com/SakuraKat],
  description: list(
    [Various simple games made in Godot as Proof of Concepts],
    [Jump Cat, Meme Invaders, Maze Generation, Pop The Lock, Magical Marshmellow, Game Of Life, Minesweeper, Pong, Snake]
  )
)
