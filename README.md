# Stardew Valley Data

An R package containing one data set compiled from the [Stardew Valley Wiki](https://stardewvalleywiki.com/Stardew_Valley_Wiki) (8 January 2024) on Stardew Valley items. 

## Installation

Install using:

```
remotes::install_github("rbolt13/StardewData")
```

Load the data with:

```
data(items, package = "StardewData")
```

## Data Dictionary

### `items`

| Variable | Class     | Description                                           |
|----------|-----------|-------------------------------------------------------|
| name     | character | The name of the item.                                 |
| type     | character | The category of the item.                             |
| season   | character | The season in which the item is available or can be harvested. |
