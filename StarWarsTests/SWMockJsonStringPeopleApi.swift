//
//  SWMockJsonStringPeopleApi.swift
//  StarWarsTests
//
//  Created by Quinto Technologies on 06/03/18.
//  Copyright © 2018 HarpreetSingh. All rights reserved.
//

import Foundation

struct SWMockJsonStringPeopleApi {
    
    static let page1 = """
        {
            "count": 87,
            "next": "https://swapi.co/api/people/?page=2",
            "previous": null,
            "results": [
            {
            "name": "Luke Skywalker",
            "height": "172",
            "mass": "77",
            "hair_color": "blond",
            "skin_color": "fair",
            "eye_color": "blue",
            "birth_year": "19BBY",
            "gender": "male",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/2/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/3/",
            "https://swapi.co/api/films/1/",
            "https://swapi.co/api/films/7/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [
            "https://swapi.co/api/vehicles/14/",
            "https://swapi.co/api/vehicles/30/"
            ],
            "starships": [
            "https://swapi.co/api/starships/12/",
            "https://swapi.co/api/starships/22/"
            ],
            "created": "2014-12-09T13:50:51.644000Z",
            "edited": "2014-12-20T21:17:56.891000Z",
            "url": "https://swapi.co/api/people/1/"
            },
            {
            "name": "C-3PO",
            "height": "167",
            "mass": "75",
            "hair_color": "n/a",
            "skin_color": "gold",
            "eye_color": "yellow",
            "birth_year": "112BBY",
            "gender": "n/a",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/2/",
            "https://swapi.co/api/films/5/",
            "https://swapi.co/api/films/4/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/3/",
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/2/"
            ],
            "vehicles": [],
            "starships": [],
            "created": "2014-12-10T15:10:51.357000Z",
            "edited": "2014-12-20T21:17:50.309000Z",
            "url": "https://swapi.co/api/people/2/"
            },
            {
            "name": "R2-D2",
            "height": "96",
            "mass": "32",
            "hair_color": "n/a",
            "skin_color": "white, blue",
            "eye_color": "red",
            "birth_year": "33BBY",
            "gender": "n/a",
            "homeworld": "https://swapi.co/api/planets/8/",
            "films": [
            "https://swapi.co/api/films/2/",
            "https://swapi.co/api/films/5/",
            "https://swapi.co/api/films/4/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/3/",
            "https://swapi.co/api/films/1/",
            "https://swapi.co/api/films/7/"
            ],
            "species": [
            "https://swapi.co/api/species/2/"
            ],
            "vehicles": [],
            "starships": [],
            "created": "2014-12-10T15:11:50.376000Z",
            "edited": "2014-12-20T21:17:50.311000Z",
            "url": "https://swapi.co/api/people/3/"
            },
            {
            "name": "Darth Vader",
            "height": "202",
            "mass": "136",
            "hair_color": "none",
            "skin_color": "white",
            "eye_color": "yellow",
            "birth_year": "41.9BBY",
            "gender": "male",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/2/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/3/",
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [],
            "starships": [
            "https://swapi.co/api/starships/13/"
            ],
            "created": "2014-12-10T15:18:20.704000Z",
            "edited": "2014-12-20T21:17:50.313000Z",
            "url": "https://swapi.co/api/people/4/"
            },
            {
            "name": "Leia Organa",
            "height": "150",
            "mass": "49",
            "hair_color": "brown",
            "skin_color": "light",
            "eye_color": "brown",
            "birth_year": "19BBY",
            "gender": "female",
            "homeworld": "https://swapi.co/api/planets/2/",
            "films": [
            "https://swapi.co/api/films/2/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/3/",
            "https://swapi.co/api/films/1/",
            "https://swapi.co/api/films/7/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [
            "https://swapi.co/api/vehicles/30/"
            ],
            "starships": [],
            "created": "2014-12-10T15:20:09.791000Z",
            "edited": "2014-12-20T21:17:50.315000Z",
            "url": "https://swapi.co/api/people/5/"
            },
            {
            "name": "Owen Lars",
            "height": "178",
            "mass": "120",
            "hair_color": "brown, grey",
            "skin_color": "light",
            "eye_color": "blue",
            "birth_year": "52BBY",
            "gender": "male",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/5/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [],
            "starships": [],
            "created": "2014-12-10T15:52:14.024000Z",
            "edited": "2014-12-20T21:17:50.317000Z",
            "url": "https://swapi.co/api/people/6/"
            },
            {
            "name": "Beru Whitesun lars",
            "height": "165",
            "mass": "75",
            "hair_color": "brown",
            "skin_color": "light",
            "eye_color": "blue",
            "birth_year": "47BBY",
            "gender": "female",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/5/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [],
            "starships": [],
            "created": "2014-12-10T15:53:41.121000Z",
            "edited": "2014-12-20T21:17:50.319000Z",
            "url": "https://swapi.co/api/people/7/"
            },
            {
            "name": "R5-D4",
            "height": "97",
            "mass": "32",
            "hair_color": "n/a",
            "skin_color": "white, red",
            "eye_color": "red",
            "birth_year": "unknown",
            "gender": "n/a",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/2/"
            ],
            "vehicles": [],
            "starships": [],
            "created": "2014-12-10T15:57:50.959000Z",
            "edited": "2014-12-20T21:17:50.321000Z",
            "url": "https://swapi.co/api/people/8/"
            },
            {
            "name": "Biggs Darklighter",
            "height": "183",
            "mass": "84",
            "hair_color": "black",
            "skin_color": "light",
            "eye_color": "brown",
            "birth_year": "24BBY",
            "gender": "male",
            "homeworld": "https://swapi.co/api/planets/1/",
            "films": [
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [],
            "starships": [
            "https://swapi.co/api/starships/12/"
            ],
            "created": "2014-12-10T15:59:50.509000Z",
            "edited": "2014-12-20T21:17:50.323000Z",
            "url": "https://swapi.co/api/people/9/"
            },
            {
            "name": "Obi-Wan Kenobi",
            "height": "182",
            "mass": "77",
            "hair_color": "auburn, white",
            "skin_color": "fair",
            "eye_color": "blue-gray",
            "birth_year": "57BBY",
            "gender": "male",
            "homeworld": "https://swapi.co/api/planets/20/",
            "films": [
            "https://swapi.co/api/films/2/",
            "https://swapi.co/api/films/5/",
            "https://swapi.co/api/films/4/",
            "https://swapi.co/api/films/6/",
            "https://swapi.co/api/films/3/",
            "https://swapi.co/api/films/1/"
            ],
            "species": [
            "https://swapi.co/api/species/1/"
            ],
            "vehicles": [
            "https://swapi.co/api/vehicles/38/"
            ],
            "starships": [
            "https://swapi.co/api/starships/48/",
            "https://swapi.co/api/starships/59/",
            "https://swapi.co/api/starships/64/",
            "https://swapi.co/api/starships/65/",
            "https://swapi.co/api/starships/74/"
            ],
            "created": "2014-12-10T16:16:29.192000Z",
            "edited": "2014-12-20T21:17:50.325000Z",
            "url": "https://swapi.co/api/people/10/"
            }
            ]
        }
        """
    static let page2 =  """
    {
    "count": 87,
    "next": "https://swapi.co/api/people/?page=3",
    "previous": "https://swapi.co/api/people/?page=1",
    "results": [
    {
    "name": "Anakin Skywalker",
    "height": "188",
    "mass": "84",
    "hair_color": "blond",
    "skin_color": "fair",
    "eye_color": "blue",
    "birth_year": "41.9BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/1/",
    "films": [
    "https://swapi.co/api/films/5/",
    "https://swapi.co/api/films/4/",
    "https://swapi.co/api/films/6/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [
    "https://swapi.co/api/vehicles/44/",
    "https://swapi.co/api/vehicles/46/"
    ],
    "starships": [
    "https://swapi.co/api/starships/59/",
    "https://swapi.co/api/starships/65/",
    "https://swapi.co/api/starships/39/"
    ],
    "created": "2014-12-10T16:20:44.310000Z",
    "edited": "2014-12-20T21:17:50.327000Z",
    "url": "https://swapi.co/api/people/11/"
    },
    {
    "name": "Wilhuff Tarkin",
    "height": "180",
    "mass": "unknown",
    "hair_color": "auburn, grey",
    "skin_color": "fair",
    "eye_color": "blue",
    "birth_year": "64BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/21/",
    "films": [
    "https://swapi.co/api/films/6/",
    "https://swapi.co/api/films/1/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2014-12-10T16:26:56.138000Z",
    "edited": "2014-12-20T21:17:50.330000Z",
    "url": "https://swapi.co/api/people/12/"
    },
    {
    "name": "Chewbacca",
    "height": "228",
    "mass": "112",
    "hair_color": "brown",
    "skin_color": "unknown",
    "eye_color": "blue",
    "birth_year": "200BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/14/",
    "films": [
    "https://swapi.co/api/films/2/",
    "https://swapi.co/api/films/6/",
    "https://swapi.co/api/films/3/",
    "https://swapi.co/api/films/1/",
    "https://swapi.co/api/films/7/"
    ],
    "species": [
    "https://swapi.co/api/species/3/"
    ],
    "vehicles": [
    "https://swapi.co/api/vehicles/19/"
    ],
    "starships": [
    "https://swapi.co/api/starships/10/",
    "https://swapi.co/api/starships/22/"
    ],
    "created": "2014-12-10T16:42:45.066000Z",
    "edited": "2014-12-20T21:17:50.332000Z",
    "url": "https://swapi.co/api/people/13/"
    },
    {
    "name": "Han Solo",
    "height": "180",
    "mass": "80",
    "hair_color": "brown",
    "skin_color": "fair",
    "eye_color": "brown",
    "birth_year": "29BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/22/",
    "films": [
    "https://swapi.co/api/films/2/",
    "https://swapi.co/api/films/3/",
    "https://swapi.co/api/films/1/",
    "https://swapi.co/api/films/7/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [
    "https://swapi.co/api/starships/10/",
    "https://swapi.co/api/starships/22/"
    ],
    "created": "2014-12-10T16:49:14.582000Z",
    "edited": "2014-12-20T21:17:50.334000Z",
    "url": "https://swapi.co/api/people/14/"
    },
    {
    "name": "Greedo",
    "height": "173",
    "mass": "74",
    "hair_color": "n/a",
    "skin_color": "green",
    "eye_color": "black",
    "birth_year": "44BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/23/",
    "films": [
    "https://swapi.co/api/films/1/"
    ],
    "species": [
    "https://swapi.co/api/species/4/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2014-12-10T17:03:30.334000Z",
    "edited": "2014-12-20T21:17:50.336000Z",
    "url": "https://swapi.co/api/people/15/"
    },
    {
    "name": "Jabba Desilijic Tiure",
    "height": "175",
    "mass": "1,358",
    "hair_color": "n/a",
    "skin_color": "green-tan, brown",
    "eye_color": "orange",
    "birth_year": "600BBY",
    "gender": "hermaphrodite",
    "homeworld": "https://swapi.co/api/planets/24/",
    "films": [
    "https://swapi.co/api/films/4/",
    "https://swapi.co/api/films/3/",
    "https://swapi.co/api/films/1/"
    ],
    "species": [
    "https://swapi.co/api/species/5/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2014-12-10T17:11:31.638000Z",
    "edited": "2014-12-20T21:17:50.338000Z",
    "url": "https://swapi.co/api/people/16/"
    },
    {
    "name": "Wedge Antilles",
    "height": "170",
    "mass": "77",
    "hair_color": "brown",
    "skin_color": "fair",
    "eye_color": "hazel",
    "birth_year": "21BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/22/",
    "films": [
    "https://swapi.co/api/films/2/",
    "https://swapi.co/api/films/3/",
    "https://swapi.co/api/films/1/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [
    "https://swapi.co/api/vehicles/14/"
    ],
    "starships": [
    "https://swapi.co/api/starships/12/"
    ],
    "created": "2014-12-12T11:08:06.469000Z",
    "edited": "2014-12-20T21:17:50.341000Z",
    "url": "https://swapi.co/api/people/18/"
    },
    {
    "name": "Jek Tono Porkins",
    "height": "180",
    "mass": "110",
    "hair_color": "brown",
    "skin_color": "fair",
    "eye_color": "blue",
    "birth_year": "unknown",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/26/",
    "films": [
    "https://swapi.co/api/films/1/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [
    "https://swapi.co/api/starships/12/"
    ],
    "created": "2014-12-12T11:16:56.569000Z",
    "edited": "2014-12-20T21:17:50.343000Z",
    "url": "https://swapi.co/api/people/19/"
    },
    {
    "name": "Yoda",
    "height": "66",
    "mass": "17",
    "hair_color": "white",
    "skin_color": "green",
    "eye_color": "brown",
    "birth_year": "896BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/28/",
    "films": [
    "https://swapi.co/api/films/2/",
    "https://swapi.co/api/films/5/",
    "https://swapi.co/api/films/4/",
    "https://swapi.co/api/films/6/",
    "https://swapi.co/api/films/3/"
    ],
    "species": [
    "https://swapi.co/api/species/6/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2014-12-15T12:26:01.042000Z",
    "edited": "2014-12-20T21:17:50.345000Z",
    "url": "https://swapi.co/api/people/20/"
    },
    {
    "name": "Palpatine",
    "height": "170",
    "mass": "75",
    "hair_color": "grey",
    "skin_color": "pale",
    "eye_color": "yellow",
    "birth_year": "82BBY",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/8/",
    "films": [
    "https://swapi.co/api/films/2/",
    "https://swapi.co/api/films/5/",
    "https://swapi.co/api/films/4/",
    "https://swapi.co/api/films/6/",
    "https://swapi.co/api/films/3/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2014-12-15T12:48:05.971000Z",
    "edited": "2014-12-20T21:17:50.347000Z",
    "url": "https://swapi.co/api/people/21/"
    }
    ]
    }
    """
    
    static let lastPage = """
    {
    "count": 87,
    "next": null,
    "previous": "https://swapi.co/api/people/?page=8",
    "results": [
    {
    "name": "Tion Medon",
    "height": "206",
    "mass": "80",
    "hair_color": "none",
    "skin_color": "grey",
    "eye_color": "black",
    "birth_year": "unknown",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/12/",
    "films": [
    "https://swapi.co/api/films/6/"
    ],
    "species": [
    "https://swapi.co/api/species/37/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2014-12-20T20:35:04.260000Z",
    "edited": "2014-12-20T21:17:50.498000Z",
    "url": "https://swapi.co/api/people/83/"
    },
    {
    "name": "Finn",
    "height": "unknown",
    "mass": "unknown",
    "hair_color": "black",
    "skin_color": "dark",
    "eye_color": "dark",
    "birth_year": "unknown",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/28/",
    "films": [
    "https://swapi.co/api/films/7/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2015-04-17T06:52:40.793621Z",
    "edited": "2015-04-17T06:52:40.793674Z",
    "url": "https://swapi.co/api/people/84/"
    },
    {
    "name": "Rey",
    "height": "unknown",
    "mass": "unknown",
    "hair_color": "brown",
    "skin_color": "light",
    "eye_color": "hazel",
    "birth_year": "unknown",
    "gender": "female",
    "homeworld": "https://swapi.co/api/planets/28/",
    "films": [
    "https://swapi.co/api/films/7/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2015-04-17T06:54:01.495077Z",
    "edited": "2015-04-17T06:54:01.495128Z",
    "url": "https://swapi.co/api/people/85/"
    },
    {
    "name": "Poe Dameron",
    "height": "unknown",
    "mass": "unknown",
    "hair_color": "brown",
    "skin_color": "light",
    "eye_color": "brown",
    "birth_year": "unknown",
    "gender": "male",
    "homeworld": "https://swapi.co/api/planets/28/",
    "films": [
    "https://swapi.co/api/films/7/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [
    "https://swapi.co/api/starships/77/"
    ],
    "created": "2015-04-17T06:55:21.622786Z",
    "edited": "2015-04-17T06:55:21.622835Z",
    "url": "https://swapi.co/api/people/86/"
    },
    {
    "name": "BB8",
    "height": "unknown",
    "mass": "unknown",
    "hair_color": "none",
    "skin_color": "none",
    "eye_color": "black",
    "birth_year": "unknown",
    "gender": "none",
    "homeworld": "https://swapi.co/api/planets/28/",
    "films": [
    "https://swapi.co/api/films/7/"
    ],
    "species": [
    "https://swapi.co/api/species/2/"
    ],
    "vehicles": [],
    "starships": [],
    "created": "2015-04-17T06:57:38.061346Z",
    "edited": "2015-04-17T06:57:38.061453Z",
    "url": "https://swapi.co/api/people/87/"
    },
    {
    "name": "Captain Phasma",
    "height": "unknown",
    "mass": "unknown",
    "hair_color": "unknown",
    "skin_color": "unknown",
    "eye_color": "unknown",
    "birth_year": "unknown",
    "gender": "female",
    "homeworld": "https://swapi.co/api/planets/28/",
    "films": [
    "https://swapi.co/api/films/7/"
    ],
    "species": [],
    "vehicles": [],
    "starships": [],
    "created": "2015-10-13T10:35:39.229823Z",
    "edited": "2015-10-13T10:35:39.229894Z",
    "url": "https://swapi.co/api/people/88/"
    },
    {
    "name": "Padmé Amidala",
    "height": "165",
    "mass": "45",
    "hair_color": "brown",
    "skin_color": "light",
    "eye_color": "brown",
    "birth_year": "46BBY",
    "gender": "female",
    "homeworld": "https://swapi.co/api/planets/8/",
    "films": [
    "https://swapi.co/api/films/5/",
    "https://swapi.co/api/films/4/",
    "https://swapi.co/api/films/6/"
    ],
    "species": [
    "https://swapi.co/api/species/1/"
    ],
    "vehicles": [],
    "starships": [
    "https://swapi.co/api/starships/49/",
    "https://swapi.co/api/starships/64/",
    "https://swapi.co/api/starships/39/"
    ],
    "created": "2014-12-19T17:28:26.926000Z",
    "edited": "2016-04-20T17:06:31.502555Z",
    "url": "https://swapi.co/api/people/35/"
    }
    ]
    }
    """
}
