# WJTB Show Data

# API

## playing.json

This file contains information about the currently playing show, or, if no show is playing, it will contain information about the show that is up next.

If a show is currently playing, playing.json will look like this:

```json
{
    "error":"",
    "name":"The name of the currently playing show.",
    "end_time":50400, // the time that the show ends, in seconds from the start of the current day
}
```

If there is no show playing, playing.json will look like this:
```json
{
    "error":"no-show",
    "name":"Name of the show that is up next",
    "end_time":50400, // the time when the next show starts, in seconds from the start of the current day
}
```

## \<day\>.json

Where \<day\> is monday, tuesday, wednesday, thursday, or friday.

These files contain information about the shows that happen on a particular day.

Example file contents:
```json
{
    "day":"monday",
    "shows":
    [
        {
            "name":"Music Time!",
            "desc":"Music Time! is a show where DJ Music Man plays some music!<br>This is a new line!",
            "hosts":"DJ Music Man",
            "poster":"https://website-we-are-hotlinking.com/poster5.jpg",
            "start_time":50400, // in seconds from the start of the day
            "end_time":54000,
            "is_running":1, // 1 means true
        },
        {
            "name":"Talking Time!",
            "desc":"Talking Time! is a show where Jose and Maria talk about their feelings!<br>This is a new line!",
            "hosts":"Jose and Maria",
            "poster":"https://website-we-are-hotlinking.com/poster8.jpg",
            "start_time":54000, // in seconds from the start of the day
            "end_time":57600,
            "is_running":0, // 0 means false
        }
    ]
}
```
