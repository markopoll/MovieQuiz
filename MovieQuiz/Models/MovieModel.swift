//
//  MovieModel.swift
//  MovieQuiz
//
//  Created by Mark Balikoti on 05.06.2024.
//

import Foundation
let jsonString = """
{
    "id": "tt1375666",
    "title": "Inception",
    "year": "2010",
    "image": "https://imdb-api.com/images/original/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_Ratio0.6751_AL_.jpg",
    "releaseDate": "2010-07-16",
    "runtimeMins": "148",
    "directors": "Christopher Nolan",
    "director": {
            "id": "nm0634240",
            "name": "Christopher Nolan"
        },
    "actorList": [
        {
            "id": "nm0000138",
            "image": "https://imdb-api.com/images/original/MV5BMjI0MTg3MzI0M15BMl5BanBnXkFtZTcwMzQyODU2Mw@@._V1_Ratio1.0000_AL_.jpg",
            "name": "Leonardo DiCaprio",
            "asCharacter": "Cobb"
        },
        {
            "id": "nm0330687",
            "image": "https://imdb-api.com/images/original/MV5BMTY3NTk0NDI3Ml5BMl5BanBnXkFtZTgwNDA3NjY0MjE@._V1_Ratio1.0000_AL_.jpg",
            "name": "Joseph Gordon-Levitt",
            "asCharacter": "Arthur"
        },
        {
            "id": "nm0680983",
            "image": "https://imdb-api.com/images/original/MV5BNmNhZmFjM2ItNTlkNi00ZTQ4LTk3NzYtYTgwNTJiMTg4OWQzXkEyXkFqcGdeQXVyMTM1MjAxMDc3._V1_Ratio1.0000_AL_.jpg",
            "name": "Elliot Page",
            "asCharacter": "Ariadne"
        }
    ]
}
"""
//
//struct Actor {
//    let id: String
//    let image: String
//    let name: String
//    let asCharacter: String
//}
//
//struct Movie {
//    let id: String
//    let title: String
//    let year: Int
//    let image: String
//    let releaseDate: String
//    let runtimeMins: Int
//    let directors: String
//    let actorList: [Actor]
//}
//
//func getMovie(from jsonString: String) -> Movie? {
//    var movie: Movie? = nil
//
//    do {
//        guard let data = jsonString.data(using: .utf8) else {
//            return nil
//        }
//
//        let json = try JSONSerialization.jsonObject(with: data, options: []) as? [String: Any]
//
//        guard
//            let json = json,
//            let id = json["id"] as? String,
//            let title = json["title"] as? String,
//            let jsonYear = json["year"] as? String,
//            let year = Int(jsonYear),
//            let image = json["image"] as? String,
//            let releaseDate = json["releaseDate"] as? String,
//            let jsonRuntimeMins = json["runtimeMins"] as? String,
//            let runtimeMins = Int(jsonRuntimeMins),
//            let directors = json["directors"] as? String,
//            let actorList = json["actorList"] as? [Any]
//        else {
//            return nil
//        }
//
//        var actors: [Actor] = []
//
//        for actor in actorList {
//            guard
//                let actor = actor as? [String: Any],
//                let id = actor["id"] as? String,
//                let image = actor["image"] as? String,
//                let name = actor["name"] as? String,
//                let asCharacter = actor["asCharacter"] as? String
//            else {
//                return nil
//            }
//
//            let mainActor = Actor(
//                id: id,
//                image: image,
//                name: name,
//                asCharacter: asCharacter
//            )
//
//            actors.append(mainActor)
//        }
//        movie = Movie(
//            id: id,
//            title: title,
//            year: year,
//            image: image,
//            releaseDate: releaseDate,
//            runtimeMins: runtimeMins,
//            directors: directors,
//            actorList: actors
//        )
//    } catch {
//        print("Failed to parse: \(jsonString)")
//    }
//
//    return movie
//}


struct Actor: Codable {
    let id: String
    let image: String
    let name: String
    let asCharacter: String
}

struct Movie: Codable {
  let id: String
  let rank: String
  let title: String
  let fullTitle: String
  let year: String
  let image: String
  let crew: String
  let imDbRating: String
  let imDbRatingCount: String
}

struct Top: Decodable {
    let items: [Movie]
}



//// Распарсить JSON с помощью кода
//guard let data = topMoviesJson.data(using: .utf8) else { return }
//let result = try? JSONDecoder().decode(Top.self, from: data)
let topMoviesJson = """
{
    "items": [
        {
            "id": "tt0111161",
            "rank": "1",
            "title": "The Shawshank Redemption",
            "fullTitle": "The Shawshank Redemption (1994)",
            "year": "1994",
            "image": "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Frank Darabont (dir.), Tim Robbins, Morgan Freeman",
            "imDbRating": "9.2",
            "imDbRatingCount": "2619254"
        },
        {
            "id": "tt0068646",
            "rank": "2",
            "title": "The Godfather",
            "fullTitle": "The Godfather (1972)",
            "year": "1972",
            "image": "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Francis Ford Coppola (dir.), Marlon Brando, Al Pacino",
            "imDbRating": "9.2",
            "imDbRatingCount": "1813829"
        },
        {
            "id": "tt0468569",
            "rank": "3",
            "title": "The Dark Knight",
            "fullTitle": "The Dark Knight (2008)",
            "year": "2008",
            "image": "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Christian Bale, Heath Ledger",
            "imDbRating": "9.0",
            "imDbRatingCount": "2591141"
        },
        {
            "id": "tt0071562",
            "rank": "4",
            "title": "The Godfather Part II",
            "fullTitle": "The Godfather Part II (1974)",
            "year": "1974",
            "image": "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Francis Ford Coppola (dir.), Al Pacino, Robert De Niro",
            "imDbRating": "9.0",
            "imDbRatingCount": "1246171"
        },
        {
            "id": "tt0050083",
            "rank": "5",
            "title": "12 Angry Men",
            "fullTitle": "12 Angry Men (1957)",
            "year": "1957",
            "image": "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sidney Lumet (dir.), Henry Fonda, Lee J. Cobb",
            "imDbRating": "8.9",
            "imDbRatingCount": "773820"
        },
        {
            "id": "tt0108052",
            "rank": "6",
            "title": "Schindler's List",
            "fullTitle": "Schindler's List (1993)",
            "year": "1993",
            "image": "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Liam Neeson, Ralph Fiennes",
            "imDbRating": "8.9",
            "imDbRatingCount": "1330453"
        },
        {
            "id": "tt0167260",
            "rank": "7",
            "title": "The Lord of the Rings: The Return of the King",
            "fullTitle": "The Lord of the Rings: The Return of the King (2003)",
            "year": "2003",
            "image": "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Peter Jackson (dir.), Elijah Wood, Viggo Mortensen",
            "imDbRating": "8.9",
            "imDbRatingCount": "1797180"
        },
        {
            "id": "tt0110912",
            "rank": "8",
            "title": "Pulp Fiction",
            "fullTitle": "Pulp Fiction (1994)",
            "year": "1994",
            "image": "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Quentin Tarantino (dir.), John Travolta, Uma Thurman",
            "imDbRating": "8.9",
            "imDbRatingCount": "2006010"
        },
        {
            "id": "tt0120737",
            "rank": "9",
            "title": "The Lord of the Rings: The Fellowship of the Ring",
            "fullTitle": "The Lord of the Rings: The Fellowship of the Ring (2001)",
            "year": "2001",
            "image": "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Peter Jackson (dir.), Elijah Wood, Ian McKellen",
            "imDbRating": "8.8",
            "imDbRatingCount": "1818489"
        },
        {
            "id": "tt0060196",
            "rank": "10",
            "title": "The Good, the Bad and the Ugly",
            "fullTitle": "The Good, the Bad and the Ugly (1966)",
            "year": "1966",
            "image": "https://m.media-amazon.com/images/M/MV5BNjJlYmNkZGItM2NhYy00MjlmLTk5NmQtNjg1NmM2ODU4OTMwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sergio Leone (dir.), Clint Eastwood, Eli Wallach",
            "imDbRating": "8.8",
            "imDbRatingCount": "749685"
        },
        {
            "id": "tt0109830",
            "rank": "11",
            "title": "Forrest Gump",
            "fullTitle": "Forrest Gump (1994)",
            "year": "1994",
            "image": "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Robert Zemeckis (dir.), Tom Hanks, Robin Wright",
            "imDbRating": "8.8",
            "imDbRatingCount": "2025239"
        },
        {
            "id": "tt0137523",
            "rank": "12",
            "title": "Fight Club",
            "fullTitle": "Fight Club (1999)",
            "year": "1999",
            "image": "https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Fincher (dir.), Brad Pitt, Edward Norton",
            "imDbRating": "8.7",
            "imDbRatingCount": "2064594"
        },
        {
            "id": "tt1375666",
            "rank": "13",
            "title": "Inception",
            "fullTitle": "Inception (2010)",
            "year": "2010",
            "image": "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Leonardo DiCaprio, Joseph Gordon-Levitt",
            "imDbRating": "8.7",
            "imDbRatingCount": "2298204"
        },
        {
            "id": "tt0167261",
            "rank": "14",
            "title": "The Lord of the Rings: The Two Towers",
            "fullTitle": "The Lord of the Rings: The Two Towers (2002)",
            "year": "2002",
            "image": "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Peter Jackson (dir.), Elijah Wood, Ian McKellen",
            "imDbRating": "8.7",
            "imDbRatingCount": "1622960"
        },
        {
            "id": "tt0080684",
            "rank": "15",
            "title": "Star Wars: Episode V - The Empire Strikes Back",
            "fullTitle": "Star Wars: Episode V - The Empire Strikes Back (1980)",
            "year": "1980",
            "image": "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Irvin Kershner (dir.), Mark Hamill, Harrison Ford",
            "imDbRating": "8.7",
            "imDbRatingCount": "1267720"
        },
        {
            "id": "tt0133093",
            "rank": "16",
            "title": "The Matrix",
            "fullTitle": "The Matrix (1999)",
            "year": "1999",
            "image": "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Lana Wachowski (dir.), Keanu Reeves, Laurence Fishburne",
            "imDbRating": "8.7",
            "imDbRatingCount": "1877428"
        },
        {
            "id": "tt0099685",
            "rank": "17",
            "title": "Goodfellas",
            "fullTitle": "Goodfellas (1990)",
            "year": "1990",
            "image": "https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Robert De Niro, Ray Liotta",
            "imDbRating": "8.7",
            "imDbRatingCount": "1134212"
        },
        {
            "id": "tt0073486",
            "rank": "18",
            "title": "One Flew Over the Cuckoo's Nest",
            "fullTitle": "One Flew Over the Cuckoo's Nest (1975)",
            "year": "1975",
            "image": "https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Milos Forman (dir.), Jack Nicholson, Louise Fletcher",
            "imDbRating": "8.6",
            "imDbRatingCount": "992205"
        },
        {
            "id": "tt0114369",
            "rank": "19",
            "title": "Se7en",
            "fullTitle": "Se7en (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Fincher (dir.), Morgan Freeman, Brad Pitt",
            "imDbRating": "8.6",
            "imDbRatingCount": "1609596"
        },
        {
            "id": "tt0047478",
            "rank": "20",
            "title": "Seven Samurai",
            "fullTitle": "Seven Samurai (1954)",
            "year": "1954",
            "image": "https://m.media-amazon.com/images/M/MV5BNWQ3OTM4ZGItMWEwZi00MjI5LWI3YzgtNTYwNWRkNmIzMGI5XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Toshirô Mifune, Takashi Shimura",
            "imDbRating": "8.6",
            "imDbRatingCount": "341918"
        },
        {
            "id": "tt0038650",
            "rank": "21",
            "title": "It's a Wonderful Life",
            "fullTitle": "It's a Wonderful Life (1946)",
            "year": "1946",
            "image": "https://m.media-amazon.com/images/M/MV5BZjc4NDZhZWMtNGEzYS00ZWU2LThlM2ItNTA0YzQ0OTExMTE2XkEyXkFqcGdeQXVyNjUwMzI2NzU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Frank Capra (dir.), James Stewart, Donna Reed",
            "imDbRating": "8.6",
            "imDbRatingCount": "449104"
        },
        {
            "id": "tt0102926",
            "rank": "22",
            "title": "The Silence of the Lambs",
            "fullTitle": "The Silence of the Lambs (1991)",
            "year": "1991",
            "image": "https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Jonathan Demme (dir.), Jodie Foster, Anthony Hopkins",
            "imDbRating": "8.6",
            "imDbRatingCount": "1401009"
        },
        {
            "id": "tt0317248",
            "rank": "23",
            "title": "City of God",
            "fullTitle": "City of God (2002)",
            "year": "2002",
            "image": "https://m.media-amazon.com/images/M/MV5BOTMwYjc5ZmItYTFjZC00ZGQ3LTlkNTMtMjZiNTZlMWQzNzI5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Fernando Meirelles (dir.), Alexandre Rodrigues, Leandro Firmino",
            "imDbRating": "8.6",
            "imDbRatingCount": "746956"
        },
        {
            "id": "tt0120815",
            "rank": "24",
            "title": "Saving Private Ryan",
            "fullTitle": "Saving Private Ryan (1998)",
            "year": "1998",
            "image": "https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Tom Hanks, Matt Damon",
            "imDbRating": "8.6",
            "imDbRatingCount": "1363097"
        },
        {
            "id": "tt0118799",
            "rank": "25",
            "title": "Life Is Beautiful",
            "fullTitle": "Life Is Beautiful (1997)",
            "year": "1997",
            "image": "https://m.media-amazon.com/images/M/MV5BYmJmM2Q4NmMtYThmNC00ZjRlLWEyZmItZTIwOTBlZDQ3NTQ1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Roberto Benigni (dir.), Roberto Benigni, Nicoletta Braschi",
            "imDbRating": "8.6",
            "imDbRatingCount": "683091"
        },
        {
            "id": "tt0120689",
            "rank": "26",
            "title": "The Green Mile",
            "fullTitle": "The Green Mile (1999)",
            "year": "1999",
            "image": "https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_Ratio0.6716_AL_.jpg",
            "crew": "Frank Darabont (dir.), Tom Hanks, Michael Clarke Duncan",
            "imDbRating": "8.6",
            "imDbRatingCount": "1272909"
        },
        {
            "id": "tt0816692",
            "rank": "27",
            "title": "Interstellar",
            "fullTitle": "Interstellar (2014)",
            "year": "2014",
            "image": "https://m.media-amazon.com/images/M/MV5BZjdkOTU3MDktN2IxOS00OGEyLWFmMjktY2FiMmZkNWIyODZiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Matthew McConaughey, Anne Hathaway",
            "imDbRating": "8.6",
            "imDbRatingCount": "1761562"
        },
        {
            "id": "tt0076759",
            "rank": "28",
            "title": "Star Wars",
            "fullTitle": "Star Wars (1977)",
            "year": "1977",
            "image": "https://m.media-amazon.com/images/M/MV5BNzg4MjQxNTQtZmI5My00YjMwLWJlMjUtMmJlY2U2ZWFlNzY1XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "George Lucas (dir.), Mark Hamill, Harrison Ford",
            "imDbRating": "8.6",
            "imDbRatingCount": "1340433"
        },
        {
            "id": "tt0103064",
            "rank": "29",
            "title": "Terminator 2: Judgment Day",
            "fullTitle": "Terminator 2: Judgment Day (1991)",
            "year": "1991",
            "image": "https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "James Cameron (dir.), Arnold Schwarzenegger, Linda Hamilton",
            "imDbRating": "8.5",
            "imDbRatingCount": "1079060"
        },
        {
            "id": "tt0088763",
            "rank": "30",
            "title": "Back to the Future",
            "fullTitle": "Back to the Future (1985)",
            "year": "1985",
            "image": "https://m.media-amazon.com/images/M/MV5BZmU0M2Y1OGUtZjIxNi00ZjBkLTg1MjgtOWIyNThiZWIwYjRiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Robert Zemeckis (dir.), Michael J. Fox, Christopher Lloyd",
            "imDbRating": "8.5",
            "imDbRatingCount": "1176362"
        },
        {
            "id": "tt0245429",
            "rank": "31",
            "title": "Spirited Away",
            "fullTitle": "Spirited Away (2001)",
            "year": "2001",
            "image": "https://m.media-amazon.com/images/M/MV5BMjlmZmI5MDctNDE2YS00YWE0LWE5ZWItZDBhYWQ0NTcxNWRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Hayao Miyazaki (dir.), Daveigh Chase, Suzanne Pleshette",
            "imDbRating": "8.5",
            "imDbRatingCount": "743480"
        },
        {
            "id": "tt0054215",
            "rank": "32",
            "title": "Psycho",
            "fullTitle": "Psycho (1960)",
            "year": "1960",
            "image": "https://m.media-amazon.com/images/M/MV5BNTQwNDM1YzItNDAxZC00NWY2LTk0M2UtNDIwNWI5OGUyNWUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Alfred Hitchcock (dir.), Anthony Perkins, Janet Leigh",
            "imDbRating": "8.5",
            "imDbRatingCount": "660079"
        },
        {
            "id": "tt0253474",
            "rank": "33",
            "title": "The Pianist",
            "fullTitle": "The Pianist (2002)",
            "year": "2002",
            "image": "https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.7313_AL_.jpg",
            "crew": "Roman Polanski (dir.), Adrien Brody, Thomas Kretschmann",
            "imDbRating": "8.5",
            "imDbRatingCount": "814629"
        },
        {
            "id": "tt0110413",
            "rank": "34",
            "title": "Léon: The Professional",
            "fullTitle": "Léon: The Professional (1994)",
            "year": "1994",
            "image": "https://m.media-amazon.com/images/M/MV5BODllNWE0MmEtYjUwZi00ZjY3LThmNmQtZjZlMjI2YTZjYmQ0XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Luc Besson (dir.), Jean Reno, Gary Oldman",
            "imDbRating": "8.5",
            "imDbRatingCount": "1138917"
        },
        {
            "id": "tt6751668",
            "rank": "35",
            "title": "Parasite",
            "fullTitle": "Parasite (2019)",
            "year": "2019",
            "image": "https://m.media-amazon.com/images/M/MV5BYWZjMjk3ZTItODQ2ZC00NTY5LWE0ZDYtZTI3MjcwN2Q5NTVkXkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Bong Joon Ho (dir.), Song Kang-ho, Sun-kyun Lee",
            "imDbRating": "8.5",
            "imDbRatingCount": "763490"
        },
        {
            "id": "tt0110357",
            "rank": "36",
            "title": "The Lion King",
            "fullTitle": "The Lion King (1994)",
            "year": "1994",
            "image": "https://m.media-amazon.com/images/M/MV5BYTYxNGMyZTYtMjE3MS00MzNjLWFjNmYtMDk3N2FmM2JiM2M1XkEyXkFqcGdeQXVyNjY5NDU4NzI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Roger Allers (dir.), Matthew Broderick, Jeremy Irons",
            "imDbRating": "8.5",
            "imDbRatingCount": "1037237"
        },
        {
            "id": "tt0172495",
            "rank": "37",
            "title": "Gladiator",
            "fullTitle": "Gladiator (2000)",
            "year": "2000",
            "image": "https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ridley Scott (dir.), Russell Crowe, Joaquin Phoenix",
            "imDbRating": "8.5",
            "imDbRatingCount": "1470087"
        },
        {
            "id": "tt0120586",
            "rank": "38",
            "title": "American History X",
            "fullTitle": "American History X (1998)",
            "year": "1998",
            "image": "https://m.media-amazon.com/images/M/MV5BZTJhN2FkYWEtMGI0My00YWM4LWI2MjAtM2UwNjY4MTI2ZTQyXkEyXkFqcGdeQXVyNjc3MjQzNTI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Tony Kaye (dir.), Edward Norton, Edward Furlong",
            "imDbRating": "8.5",
            "imDbRatingCount": "1105678"
        },
        {
            "id": "tt0407887",
            "rank": "39",
            "title": "The Departed",
            "fullTitle": "The Departed (2006)",
            "year": "2006",
            "image": "https://m.media-amazon.com/images/M/MV5BMTI1MTY2OTIxNV5BMl5BanBnXkFtZTYwNjQ4NjY3._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Leonardo DiCaprio, Matt Damon",
            "imDbRating": "8.5",
            "imDbRatingCount": "1300655"
        },
        {
            "id": "tt0114814",
            "rank": "40",
            "title": "The Usual Suspects",
            "fullTitle": "The Usual Suspects (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BYTViNjMyNmUtNDFkNC00ZDRlLThmMDUtZDU2YWE4NGI2ZjVmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Bryan Singer (dir.), Kevin Spacey, Gabriel Byrne",
            "imDbRating": "8.5",
            "imDbRatingCount": "1069443"
        },
        {
            "id": "tt0482571",
            "rank": "41",
            "title": "The Prestige",
            "fullTitle": "The Prestige (2006)",
            "year": "2006",
            "image": "https://m.media-amazon.com/images/M/MV5BMjA4NDI0MTIxNF5BMl5BanBnXkFtZTYwNTM0MzY2._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Christian Bale, Hugh Jackman",
            "imDbRating": "8.5",
            "imDbRatingCount": "1307543"
        },
        {
            "id": "tt0034583",
            "rank": "42",
            "title": "Casablanca",
            "fullTitle": "Casablanca (1942)",
            "year": "1942",
            "image": "https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Michael Curtiz (dir.), Humphrey Bogart, Ingrid Bergman",
            "imDbRating": "8.5",
            "imDbRatingCount": "564364"
        },
        {
            "id": "tt2582802",
            "rank": "43",
            "title": "Whiplash",
            "fullTitle": "Whiplash (2014)",
            "year": "2014",
            "image": "https://m.media-amazon.com/images/M/MV5BOTA5NDZlZGUtMjAxOS00YTRkLTkwYmMtYWQ0NWEwZDZiNjEzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Damien Chazelle (dir.), Miles Teller, J.K. Simmons",
            "imDbRating": "8.5",
            "imDbRatingCount": "826991"
        },
        {
            "id": "tt1675434",
            "rank": "44",
            "title": "The Intouchables",
            "fullTitle": "The Intouchables (2011)",
            "year": "2011",
            "image": "https://m.media-amazon.com/images/M/MV5BMTYxNDA3MDQwNl5BMl5BanBnXkFtZTcwNTU4Mzc1Nw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Olivier Nakache (dir.), François Cluzet, Omar Sy",
            "imDbRating": "8.5",
            "imDbRatingCount": "840854"
        },
        {
            "id": "tt0056058",
            "rank": "45",
            "title": "Harakiri",
            "fullTitle": "Harakiri (1962)",
            "year": "1962",
            "image": "https://m.media-amazon.com/images/M/MV5BYjBmYTQ1NjItZWU5MS00YjI0LTg2OTYtYmFkN2JkMmNiNWVkXkEyXkFqcGdeQXVyMTMxMTY0OTQ@._V1_Ratio0.7313_AL_.jpg",
            "crew": "Masaki Kobayashi (dir.), Tatsuya Nakadai, Akira Ishihama",
            "imDbRating": "8.5",
            "imDbRatingCount": "55321"
        },
        {
            "id": "tt0027977",
            "rank": "46",
            "title": "Modern Times",
            "fullTitle": "Modern Times (1936)",
            "year": "1936",
            "image": "https://m.media-amazon.com/images/M/MV5BYjJiZjMzYzktNjU0NS00OTkxLWEwYzItYzdhYWJjN2QzMTRlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Charles Chaplin (dir.), Charles Chaplin, Paulette Goddard",
            "imDbRating": "8.4",
            "imDbRatingCount": "239492"
        },
        {
            "id": "tt0095327",
            "rank": "47",
            "title": "Grave of the Fireflies",
            "fullTitle": "Grave of the Fireflies (1988)",
            "year": "1988",
            "image": "https://m.media-amazon.com/images/M/MV5BZmY2NjUzNDQtNTgxNC00M2Q4LTljOWQtMjNjNDBjNWUxNmJlXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Isao Takahata (dir.), Tsutomu Tatsumi, Ayano Shiraishi",
            "imDbRating": "8.4",
            "imDbRatingCount": "271095"
        },
        {
            "id": "tt0064116",
            "rank": "48",
            "title": "Once Upon a Time in the West",
            "fullTitle": "Once Upon a Time in the West (1968)",
            "year": "1968",
            "image": "https://m.media-amazon.com/images/M/MV5BODQ3NDExOGYtMzI3Mi00NWRlLTkwNjAtNjc4MDgzZGJiZTA1XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sergio Leone (dir.), Henry Fonda, Charles Bronson",
            "imDbRating": "8.4",
            "imDbRatingCount": "325806"
        },
        {
            "id": "tt1745960",
            "rank": "49",
            "title": "Top Gun: Maverick",
            "fullTitle": "Top Gun: Maverick (2022)",
            "year": "2022",
            "image": "https://m.media-amazon.com/images/M/MV5BOWQwOTA1ZDQtNzk3Yi00ZmVmLWFiZGYtNjdjNThiYjJhNzRjXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Joseph Kosinski (dir.), Tom Cruise, Jennifer Connelly",
            "imDbRating": "8.4",
            "imDbRatingCount": "255748"
        },
        {
            "id": "tt0047396",
            "rank": "50",
            "title": "Rear Window",
            "fullTitle": "Rear Window (1954)",
            "year": "1954",
            "image": "https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Alfred Hitchcock (dir.), James Stewart, Grace Kelly",
            "imDbRating": "8.4",
            "imDbRatingCount": "484886"
        },
        {
            "id": "tt0078748",
            "rank": "51",
            "title": "Alien",
            "fullTitle": "Alien (1979)",
            "year": "1979",
            "image": "https://m.media-amazon.com/images/M/MV5BOGQzZTBjMjQtOTVmMS00NGE5LWEyYmMtOGQ1ZGZjNmRkYjFhXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ridley Scott (dir.), Sigourney Weaver, Tom Skerritt",
            "imDbRating": "8.4",
            "imDbRatingCount": "863726"
        },
        {
            "id": "tt0021749",
            "rank": "52",
            "title": "City Lights",
            "fullTitle": "City Lights (1931)",
            "year": "1931",
            "image": "https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Charles Chaplin (dir.), Charles Chaplin, Virginia Cherrill",
            "imDbRating": "8.4",
            "imDbRatingCount": "182991"
        },
        {
            "id": "tt0095765",
            "rank": "53",
            "title": "Cinema Paradiso",
            "fullTitle": "Cinema Paradiso (1988)",
            "year": "1988",
            "image": "https://m.media-amazon.com/images/M/MV5BM2FhYjEyYmYtMDI1Yy00YTdlLWI2NWQtYmEzNzAxOGY1NjY2XkEyXkFqcGdeQXVyNTA3NTIyNDg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Giuseppe Tornatore (dir.), Philippe Noiret, Enzo Cannavale",
            "imDbRating": "8.4",
            "imDbRatingCount": "257270"
        },
        {
            "id": "tt0209144",
            "rank": "54",
            "title": "Memento",
            "fullTitle": "Memento (2000)",
            "year": "2000",
            "image": "https://m.media-amazon.com/images/M/MV5BZTcyNjk1MjgtOWI3Mi00YzQwLWI5MTktMzY4ZmI2NDAyNzYzXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Guy Pearce, Carrie-Anne Moss",
            "imDbRating": "8.4",
            "imDbRatingCount": "1217934"
        },
        {
            "id": "tt0078788",
            "rank": "55",
            "title": "Apocalypse Now",
            "fullTitle": "Apocalypse Now (1979)",
            "year": "1979",
            "image": "https://m.media-amazon.com/images/M/MV5BYmQyNTA1ZGItNjZjMi00NzFlLWEzMWEtNWMwN2Q2MjJhYzEyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Francis Ford Coppola (dir.), Martin Sheen, Marlon Brando",
            "imDbRating": "8.4",
            "imDbRatingCount": "657491"
        },
        {
            "id": "tt0082971",
            "rank": "56",
            "title": "Indiana Jones and the Raiders of the Lost Ark",
            "fullTitle": "Indiana Jones and the Raiders of the Lost Ark (1981)",
            "year": "1981",
            "image": "https://m.media-amazon.com/images/M/MV5BNTU2ODkyY2MtMjU1NC00NjE1LWEzYjgtMWQ3MzRhMTE0NDc0XkEyXkFqcGdeQXVyMjM4MzQ4OTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Harrison Ford, Karen Allen",
            "imDbRating": "8.4",
            "imDbRatingCount": "951922"
        },
        {
            "id": "tt1853728",
            "rank": "57",
            "title": "Django Unchained",
            "fullTitle": "Django Unchained (2012)",
            "year": "2012",
            "image": "https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Quentin Tarantino (dir.), Jamie Foxx, Christoph Waltz",
            "imDbRating": "8.4",
            "imDbRatingCount": "1515464"
        },
        {
            "id": "tt0910970",
            "rank": "58",
            "title": "WALL·E",
            "fullTitle": "WALL·E (2008)",
            "year": "2008",
            "image": "https://m.media-amazon.com/images/M/MV5BMjExMTg5OTU0NF5BMl5BanBnXkFtZTcwMjMxMzMzMw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Andrew Stanton (dir.), Ben Burtt, Elissa Knight",
            "imDbRating": "8.4",
            "imDbRatingCount": "1096243"
        },
        {
            "id": "tt0405094",
            "rank": "59",
            "title": "The Lives of Others",
            "fullTitle": "The Lives of Others (2006)",
            "year": "2006",
            "image": "https://m.media-amazon.com/images/M/MV5BNmQyNmJjM2ItNTQzYi00ZjMxLWFjMDYtZjUyN2YwZDk5YWQ2XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Florian Henckel von Donnersmarck (dir.), Ulrich Mühe, Martina Gedeck",
            "imDbRating": "8.4",
            "imDbRatingCount": "385901"
        },
        {
            "id": "tt0043014",
            "rank": "60",
            "title": "Sunset Blvd.",
            "fullTitle": "Sunset Blvd. (1950)",
            "year": "1950",
            "image": "https://m.media-amazon.com/images/M/MV5BMTU0NTkyNzYwMF5BMl5BanBnXkFtZTgwMDU0NDk5MTI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Billy Wilder (dir.), William Holden, Gloria Swanson",
            "imDbRating": "8.4",
            "imDbRatingCount": "219509"
        },
        {
            "id": "tt0050825",
            "rank": "61",
            "title": "Paths of Glory",
            "fullTitle": "Paths of Glory (1957)",
            "year": "1957",
            "image": "https://m.media-amazon.com/images/M/MV5BOTI5Nzc0OTMtYzBkMS00NjkxLThmM2UtNjM2ODgxN2M5NjNkXkEyXkFqcGdeQXVyNjQ2MjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Kirk Douglas, Ralph Meeker",
            "imDbRating": "8.4",
            "imDbRatingCount": "195171"
        },
        {
            "id": "tt0081505",
            "rank": "62",
            "title": "The Shining",
            "fullTitle": "The Shining (1980)",
            "year": "1980",
            "image": "https://m.media-amazon.com/images/M/MV5BZWFlYmY2MGEtZjVkYS00YzU4LTg0YjQtYzY1ZGE3NTA5NGQxXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Jack Nicholson, Shelley Duvall",
            "imDbRating": "8.4",
            "imDbRatingCount": "997680"
        },
        {
            "id": "tt0032553",
            "rank": "63",
            "title": "The Great Dictator",
            "fullTitle": "The Great Dictator (1940)",
            "year": "1940",
            "image": "https://m.media-amazon.com/images/M/MV5BMmExYWJjNTktNGUyZS00ODhmLTkxYzAtNWIzOGEyMGNiMmUwXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Charles Chaplin (dir.), Charles Chaplin, Paulette Goddard",
            "imDbRating": "8.4",
            "imDbRatingCount": "221851"
        },
        {
            "id": "tt0051201",
            "rank": "64",
            "title": "Witness for the Prosecution",
            "fullTitle": "Witness for the Prosecution (1957)",
            "year": "1957",
            "image": "https://m.media-amazon.com/images/M/MV5BNDQwODU5OWYtNDcyNi00MDQ1LThiOGMtZDkwNWJiM2Y3MDg0XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Billy Wilder (dir.), Tyrone Power, Marlene Dietrich",
            "imDbRating": "8.4",
            "imDbRatingCount": "123571"
        },
        {
            "id": "tt4154756",
            "rank": "65",
            "title": "Avengers: Infinity War",
            "fullTitle": "Avengers: Infinity War (2018)",
            "year": "2018",
            "image": "https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Anthony Russo (dir.), Robert Downey Jr., Chris Hemsworth",
            "imDbRating": "8.4",
            "imDbRatingCount": "1040563"
        },
        {
            "id": "tt0090605",
            "rank": "66",
            "title": "Aliens",
            "fullTitle": "Aliens (1986)",
            "year": "1986",
            "image": "https://m.media-amazon.com/images/M/MV5BZGU2OGY5ZTYtMWNhYy00NjZiLWI0NjUtZmNhY2JhNDRmODU3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "James Cameron (dir.), Sigourney Weaver, Michael Biehn",
            "imDbRating": "8.3",
            "imDbRatingCount": "706092"
        },
        {
            "id": "tt0169547",
            "rank": "67",
            "title": "American Beauty",
            "fullTitle": "American Beauty (1999)",
            "year": "1999",
            "image": "https://m.media-amazon.com/images/M/MV5BNTBmZWJkNjctNDhiNC00MGE2LWEwOTctZTk5OGVhMWMyNmVhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sam Mendes (dir.), Kevin Spacey, Annette Bening",
            "imDbRating": "8.3",
            "imDbRatingCount": "1139607"
        },
        {
            "id": "tt0057012",
            "rank": "68",
            "title": "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb",
            "fullTitle": "Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb (1964)",
            "year": "1964",
            "image": "https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Peter Sellers, George C. Scott",
            "imDbRating": "8.3",
            "imDbRatingCount": "484723"
        },
        {
            "id": "tt4633694",
            "rank": "69",
            "title": "Spider-Man: Into the Spider-Verse",
            "fullTitle": "Spider-Man: Into the Spider-Verse (2018)",
            "year": "2018",
            "image": "https://m.media-amazon.com/images/M/MV5BMjMwNDkxMTgzOF5BMl5BanBnXkFtZTgwNTkwNTQ3NjM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Bob Persichetti (dir.), Shameik Moore, Jake Johnson",
            "imDbRating": "8.3",
            "imDbRatingCount": "505526"
        },
        {
            "id": "tt1345836",
            "rank": "70",
            "title": "The Dark Knight Rises",
            "fullTitle": "The Dark Knight Rises (2012)",
            "year": "2012",
            "image": "https://m.media-amazon.com/images/M/MV5BMTk4ODQzNDY3Ml5BMl5BanBnXkFtZTcwODA0NTM4Nw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Christian Bale, Tom Hardy",
            "imDbRating": "8.3",
            "imDbRatingCount": "1671646"
        },
        {
            "id": "tt0364569",
            "rank": "71",
            "title": "Oldboy",
            "fullTitle": "Oldboy (2003)",
            "year": "2003",
            "image": "https://m.media-amazon.com/images/M/MV5BMTI3NTQyMzU5M15BMl5BanBnXkFtZTcwMTM2MjgyMQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Park Chan-wook (dir.), Choi Min-sik, Yoo Ji-tae",
            "imDbRating": "8.3",
            "imDbRatingCount": "568193"
        },
        {
            "id": "tt7286456",
            "rank": "72",
            "title": "Joker",
            "fullTitle": "Joker (2019)",
            "year": "2019",
            "image": "https://m.media-amazon.com/images/M/MV5BNGVjNWI4ZGUtNzE0MS00YTJmLWE0ZDctN2ZiYTk2YmI3NTYyXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Todd Phillips (dir.), Joaquin Phoenix, Robert De Niro",
            "imDbRating": "8.3",
            "imDbRatingCount": "1222107"
        },
        {
            "id": "tt0086879",
            "rank": "73",
            "title": "Amadeus",
            "fullTitle": "Amadeus (1984)",
            "year": "1984",
            "image": "https://m.media-amazon.com/images/M/MV5BNWJlNzUzNGMtYTAwMS00ZjI2LWFmNWQtODcxNWUxODA5YmU1XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Milos Forman (dir.), F. Murray Abraham, Tom Hulce",
            "imDbRating": "8.3",
            "imDbRatingCount": "396716"
        },
        {
            "id": "tt0112573",
            "rank": "74",
            "title": "Braveheart",
            "fullTitle": "Braveheart (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Mel Gibson (dir.), Mel Gibson, Sophie Marceau",
            "imDbRating": "8.3",
            "imDbRatingCount": "1024718"
        },
        {
            "id": "tt0114709",
            "rank": "75",
            "title": "Toy Story",
            "fullTitle": "Toy Story (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BMDU2ZWJlMjktMTRhMy00ZTA5LWEzNDgtYmNmZTEwZTViZWJkXkEyXkFqcGdeQXVyNDQ2OTk4MzI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John Lasseter (dir.), Tom Hanks, Tim Allen",
            "imDbRating": "8.3",
            "imDbRatingCount": "976256"
        },
        {
            "id": "tt2380307",
            "rank": "76",
            "title": "Coco",
            "fullTitle": "Coco (2017)",
            "year": "2017",
            "image": "https://m.media-amazon.com/images/M/MV5BYjQ5NjM0Y2YtNjZkNC00ZDhkLWJjMWItN2QyNzFkMDE3ZjAxXkEyXkFqcGdeQXVyODIxMzk5NjA@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Lee Unkrich (dir.), Anthony Gonzalez, Gael García Bernal",
            "imDbRating": "8.3",
            "imDbRatingCount": "488586"
        },
        {
            "id": "tt0082096",
            "rank": "77",
            "title": "The Boat",
            "fullTitle": "The Boat (1981)",
            "year": "1981",
            "image": "https://m.media-amazon.com/images/M/MV5BNDBjMWUxNTUtNjZiNi00YzJhLTgzNzUtMTRiY2FkZmMzYTNjXkEyXkFqcGdeQXVyMTUzMDUzNTI3._V1_Ratio0.6716_AL_.jpg",
            "crew": "Wolfgang Petersen (dir.), Jürgen Prochnow, Herbert Grönemeyer",
            "imDbRating": "8.3",
            "imDbRatingCount": "248789"
        },
        {
            "id": "tt0361748",
            "rank": "78",
            "title": "Inglourious Basterds",
            "fullTitle": "Inglourious Basterds (2009)",
            "year": "2009",
            "image": "https://m.media-amazon.com/images/M/MV5BOTJiNDEzOWYtMTVjOC00ZjlmLWE0NGMtZmE1OWVmZDQ2OWJhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Quentin Tarantino (dir.), Brad Pitt, Diane Kruger",
            "imDbRating": "8.3",
            "imDbRatingCount": "1413057"
        },
        {
            "id": "tt0119698",
            "rank": "79",
            "title": "Princess Mononoke",
            "fullTitle": "Princess Mononoke (1997)",
            "year": "1997",
            "image": "https://m.media-amazon.com/images/M/MV5BNGIzY2IzODQtNThmMi00ZDE4LWI5YzAtNzNlZTM1ZjYyYjUyXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Hayao Miyazaki (dir.), Yôji Matsuda, Yuriko Ishida",
            "imDbRating": "8.3",
            "imDbRatingCount": "387222"
        },
        {
            "id": "tt4154796",
            "rank": "80",
            "title": "Avengers: Endgame",
            "fullTitle": "Avengers: Endgame (2019)",
            "year": "2019",
            "image": "https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Anthony Russo (dir.), Robert Downey Jr., Chris Evans",
            "imDbRating": "8.3",
            "imDbRatingCount": "1083023"
        },
        {
            "id": "tt0087843",
            "rank": "81",
            "title": "Once Upon a Time in America",
            "fullTitle": "Once Upon a Time in America (1984)",
            "year": "1984",
            "image": "https://m.media-amazon.com/images/M/MV5BMGFkNWI4MTMtNGQ0OC00MWVmLTk3MTktOGYxN2Y2YWVkZWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sergio Leone (dir.), Robert De Niro, James Woods",
            "imDbRating": "8.3",
            "imDbRatingCount": "346897"
        },
        {
            "id": "tt0119217",
            "rank": "82",
            "title": "Good Will Hunting",
            "fullTitle": "Good Will Hunting (1997)",
            "year": "1997",
            "image": "https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Gus Van Sant (dir.), Robin Williams, Matt Damon",
            "imDbRating": "8.3",
            "imDbRatingCount": "948393"
        },
        {
            "id": "tt5311514",
            "rank": "83",
            "title": "Your Name.",
            "fullTitle": "Your Name. (2016)",
            "year": "2016",
            "image": "https://m.media-amazon.com/images/M/MV5BODRmZDVmNzUtZDA4ZC00NjhkLWI2M2UtN2M0ZDIzNDcxYThjL2ltYWdlXkEyXkFqcGdeQXVyNTk0MzMzODA@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Makoto Shinkai (dir.), Ryûnosuke Kamiki, Mone Kamishiraishi",
            "imDbRating": "8.3",
            "imDbRatingCount": "257690"
        },
        {
            "id": "tt0180093",
            "rank": "84",
            "title": "Requiem for a Dream",
            "fullTitle": "Requiem for a Dream (2000)",
            "year": "2000",
            "image": "https://m.media-amazon.com/images/M/MV5BOTdiNzJlOWUtNWMwNS00NmFlLWI0YTEtZmI3YjIzZWUyY2Y3XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Darren Aronofsky (dir.), Ellen Burstyn, Jared Leto",
            "imDbRating": "8.3",
            "imDbRatingCount": "828971"
        },
        {
            "id": "tt0435761",
            "rank": "85",
            "title": "Toy Story 3",
            "fullTitle": "Toy Story 3 (2010)",
            "year": "2010",
            "image": "https://m.media-amazon.com/images/M/MV5BMTgxOTY4Mjc0MF5BMl5BanBnXkFtZTcwNTA4MDQyMw@@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Lee Unkrich (dir.), Tom Hanks, Tim Allen",
            "imDbRating": "8.3",
            "imDbRatingCount": "823356"
        },
        {
            "id": "tt0045152",
            "rank": "86",
            "title": "Singin' in the Rain",
            "fullTitle": "Singin' in the Rain (1952)",
            "year": "1952",
            "image": "https://m.media-amazon.com/images/M/MV5BZDRjNGViMjQtOThlMi00MTA3LThkYzQtNzJkYjBkMGE0YzE1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Donen (dir.), Gene Kelly, Donald O'Connor",
            "imDbRating": "8.3",
            "imDbRatingCount": "239612"
        },
        {
            "id": "tt1187043",
            "rank": "87",
            "title": "3 Idiots",
            "fullTitle": "3 Idiots (2009)",
            "year": "2009",
            "image": "https://m.media-amazon.com/images/M/MV5BNTkyOGVjMGEtNmQzZi00NzFlLTlhOWQtODYyMDc2ZGJmYzFhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Rajkumar Hirani (dir.), Aamir Khan, Madhavan",
            "imDbRating": "8.3",
            "imDbRatingCount": "391455"
        },
        {
            "id": "tt0086190",
            "rank": "88",
            "title": "Star Wars: Episode VI - Return of the Jedi",
            "fullTitle": "Star Wars: Episode VI - Return of the Jedi (1983)",
            "year": "1983",
            "image": "https://m.media-amazon.com/images/M/MV5BOWZlMjFiYzgtMTUzNC00Y2IzLTk1NTMtZmNhMTczNTk0ODk1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Richard Marquand (dir.), Mark Hamill, Harrison Ford",
            "imDbRating": "8.3",
            "imDbRatingCount": "1035436"
        },
        {
            "id": "tt0057565",
            "rank": "89",
            "title": "High and Low",
            "fullTitle": "High and Low (1963)",
            "year": "1963",
            "image": "https://m.media-amazon.com/images/M/MV5BOTI4NTNhZDMtMWNkZi00MTRmLWJmZDQtMmJkMGVmZTEzODlhXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Toshirô Mifune, Yutaka Sada",
            "imDbRating": "8.3",
            "imDbRatingCount": "43898"
        },
        {
            "id": "tt0062622",
            "rank": "90",
            "title": "2001: A Space Odyssey",
            "fullTitle": "2001: A Space Odyssey (1968)",
            "year": "1968",
            "image": "https://m.media-amazon.com/images/M/MV5BMmNlYzRiNDctZWNhMi00MzI4LThkZTctMTUzMmZkMmFmNThmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Keir Dullea, Gary Lockwood",
            "imDbRating": "8.3",
            "imDbRatingCount": "658165"
        },
        {
            "id": "tt0338013",
            "rank": "91",
            "title": "Eternal Sunshine of the Spotless Mind",
            "fullTitle": "Eternal Sunshine of the Spotless Mind (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BMTY4NzcwODg3Nl5BMl5BanBnXkFtZTcwNTEwOTMyMw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Michel Gondry (dir.), Jim Carrey, Kate Winslet",
            "imDbRating": "8.3",
            "imDbRatingCount": "990607"
        },
        {
            "id": "tt0105236",
            "rank": "92",
            "title": "Reservoir Dogs",
            "fullTitle": "Reservoir Dogs (1992)",
            "year": "1992",
            "image": "https://m.media-amazon.com/images/M/MV5BZmExNmEwYWItYmQzOS00YjA5LTk2MjktZjEyZDE1Y2QxNjA1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Quentin Tarantino (dir.), Harvey Keitel, Tim Roth",
            "imDbRating": "8.3",
            "imDbRatingCount": "1000334"
        },
        {
            "id": "tt8267604",
            "rank": "93",
            "title": "Capernaum",
            "fullTitle": "Capernaum (2018)",
            "year": "2018",
            "image": "https://m.media-amazon.com/images/M/MV5BY2Y3OWNkMTctYzNjYS00NWVkLTg4OWEtY2YxN2I3NDhlYzE0XkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_Ratio0.7015_AL_.jpg",
            "crew": "Nadine Labaki (dir.), Zain Al Rafeea, Yordanos Shiferaw",
            "imDbRating": "8.3",
            "imDbRatingCount": "86842"
        },
        {
            "id": "tt0033467",
            "rank": "94",
            "title": "Citizen Kane",
            "fullTitle": "Citizen Kane (1941)",
            "year": "1941",
            "image": "https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Orson Welles (dir.), Orson Welles, Joseph Cotten",
            "imDbRating": "8.3",
            "imDbRatingCount": "437595"
        },
        {
            "id": "tt0056172",
            "rank": "95",
            "title": "Lawrence of Arabia",
            "fullTitle": "Lawrence of Arabia (1962)",
            "year": "1962",
            "image": "https://m.media-amazon.com/images/M/MV5BYWY5ZjhjNGYtZmI2Ny00ODM0LWFkNzgtZmI1YzA2N2MxMzA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Lean (dir.), Peter O'Toole, Alec Guinness",
            "imDbRating": "8.3",
            "imDbRatingCount": "290545"
        },
        {
            "id": "tt2106476",
            "rank": "96",
            "title": "The Hunt",
            "fullTitle": "The Hunt (2012)",
            "year": "2012",
            "image": "https://m.media-amazon.com/images/M/MV5BMTg2NDg3ODg4NF5BMl5BanBnXkFtZTcwNzk3NTc3Nw@@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Thomas Vinterberg (dir.), Mads Mikkelsen, Thomas Bo Larsen",
            "imDbRating": "8.3",
            "imDbRatingCount": "323657"
        },
        {
            "id": "tt0022100",
            "rank": "97",
            "title": "M",
            "fullTitle": "M (1931)",
            "year": "1931",
            "image": "https://m.media-amazon.com/images/M/MV5BODA4ODk3OTEzMF5BMl5BanBnXkFtZTgwMTQ2ODMwMzE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Fritz Lang (dir.), Peter Lorre, Ellen Widmann",
            "imDbRating": "8.3",
            "imDbRatingCount": "156525"
        },
        {
            "id": "tt0053125",
            "rank": "98",
            "title": "North by Northwest",
            "fullTitle": "North by Northwest (1959)",
            "year": "1959",
            "image": "https://m.media-amazon.com/images/M/MV5BZDA3NDExMTUtMDlhOC00MmQ5LWExZGUtYmI1NGVlZWI4OWNiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Alfred Hitchcock (dir.), Cary Grant, Eva Marie Saint",
            "imDbRating": "8.3",
            "imDbRatingCount": "324303"
        },
        {
            "id": "tt0052357",
            "rank": "99",
            "title": "Vertigo",
            "fullTitle": "Vertigo (1958)",
            "year": "1958",
            "image": "https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Alfred Hitchcock (dir.), James Stewart, Kim Novak",
            "imDbRating": "8.2",
            "imDbRatingCount": "397612"
        },
        {
            "id": "tt0091251",
            "rank": "100",
            "title": "Come and See",
            "fullTitle": "Come and See (1985)",
            "year": "1985",
            "image": "https://m.media-amazon.com/images/M/MV5BODM4Njg0NTAtYjI5Ny00ZjAxLTkwNmItZTMxMWU5M2U3M2RjXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Elem Klimov (dir.), Aleksey Kravchenko, Olga Mironova",
            "imDbRating": "8.2",
            "imDbRatingCount": "76957"
        },
        {
            "id": "tt0211915",
            "rank": "101",
            "title": "Amélie",
            "fullTitle": "Amélie (2001)",
            "year": "2001",
            "image": "https://m.media-amazon.com/images/M/MV5BNDg4NjM1YjMtYmNhZC00MjM0LWFiZmYtNGY1YjA3MzZmODc5XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Jean-Pierre Jeunet (dir.), Audrey Tautou, Mathieu Kassovitz",
            "imDbRating": "8.2",
            "imDbRatingCount": "748535"
        },
        {
            "id": "tt0066921",
            "rank": "102",
            "title": "A Clockwork Orange",
            "fullTitle": "A Clockwork Orange (1971)",
            "year": "1971",
            "image": "https://m.media-amazon.com/images/M/MV5BMTY3MjM1Mzc4N15BMl5BanBnXkFtZTgwODM0NzAxMDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Malcolm McDowell, Patrick Magee",
            "imDbRating": "8.2",
            "imDbRatingCount": "817222"
        },
        {
            "id": "tt0036775",
            "rank": "103",
            "title": "Double Indemnity",
            "fullTitle": "Double Indemnity (1944)",
            "year": "1944",
            "image": "https://m.media-amazon.com/images/M/MV5BOTdlNjgyZGUtOTczYi00MDdhLTljZmMtYTEwZmRiOWFkYjRhXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Billy Wilder (dir.), Fred MacMurray, Barbara Stanwyck",
            "imDbRating": "8.2",
            "imDbRatingCount": "155765"
        },
        {
            "id": "tt0093058",
            "rank": "104",
            "title": "Full Metal Jacket",
            "fullTitle": "Full Metal Jacket (1987)",
            "year": "1987",
            "image": "https://m.media-amazon.com/images/M/MV5BNzkxODk0NjEtYjc4Mi00ZDI0LTgyYjEtYzc1NDkxY2YzYTgyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Matthew Modine, R. Lee Ermey",
            "imDbRating": "8.2",
            "imDbRatingCount": "731470"
        },
        {
            "id": "tt0053604",
            "rank": "105",
            "title": "The Apartment",
            "fullTitle": "The Apartment (1960)",
            "year": "1960",
            "image": "https://m.media-amazon.com/images/M/MV5BNzkwODFjNzItMmMwNi00MTU5LWE2MzktM2M4ZDczZGM1MmViXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Billy Wilder (dir.), Jack Lemmon, Shirley MacLaine",
            "imDbRating": "8.2",
            "imDbRatingCount": "179784"
        },
        {
            "id": "tt0086250",
            "rank": "106",
            "title": "Scarface",
            "fullTitle": "Scarface (1983)",
            "year": "1983",
            "image": "https://m.media-amazon.com/images/M/MV5BNjdjNGQ4NDEtNTEwYS00MTgxLTliYzQtYzE2ZDRiZjFhZmNlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Brian De Palma (dir.), Al Pacino, Michelle Pfeiffer",
            "imDbRating": "8.2",
            "imDbRatingCount": "821587"
        },
        {
            "id": "tt0044741",
            "rank": "107",
            "title": "Ikiru",
            "fullTitle": "Ikiru (1952)",
            "year": "1952",
            "image": "https://m.media-amazon.com/images/M/MV5BZTdkN2E5OTYtN2FiMi00YWUwLWEzMGMtZTMzNjY0NjgzYzFiXkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_Ratio0.7015_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Takashi Shimura, Nobuo Kaneko",
            "imDbRating": "8.2",
            "imDbRatingCount": "77565"
        },
        {
            "id": "tt0070735",
            "rank": "108",
            "title": "The Sting",
            "fullTitle": "The Sting (1973)",
            "year": "1973",
            "image": "https://m.media-amazon.com/images/M/MV5BNGU3NjQ4YTMtZGJjOS00YTQ3LThmNmItMTI5MDE2ODI3NzY3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "George Roy Hill (dir.), Paul Newman, Robert Redford",
            "imDbRating": "8.2",
            "imDbRatingCount": "259440"
        },
        {
            "id": "tt0056592",
            "rank": "109",
            "title": "To Kill a Mockingbird",
            "fullTitle": "To Kill a Mockingbird (1962)",
            "year": "1962",
            "image": "https://m.media-amazon.com/images/M/MV5BNmVmYzcwNzMtMWM1NS00MWIyLThlMDEtYzUwZDgzODE1NmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Robert Mulligan (dir.), Gregory Peck, John Megna",
            "imDbRating": "8.2",
            "imDbRatingCount": "313935"
        },
        {
            "id": "tt0075314",
            "rank": "110",
            "title": "Taxi Driver",
            "fullTitle": "Taxi Driver (1976)",
            "year": "1976",
            "image": "https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Robert De Niro, Jodie Foster",
            "imDbRating": "8.2",
            "imDbRatingCount": "810623"
        },
        {
            "id": "tt1049413",
            "rank": "111",
            "title": "Up",
            "fullTitle": "Up (2009)",
            "year": "2009",
            "image": "https://m.media-amazon.com/images/M/MV5BMTk3NDE2NzI4NF5BMl5BanBnXkFtZTgwNzE1MzEyMTE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Pete Docter (dir.), Edward Asner, Jordan Nagai",
            "imDbRating": "8.2",
            "imDbRatingCount": "1025710"
        },
        {
            "id": "tt0113277",
            "rank": "112",
            "title": "Heat",
            "fullTitle": "Heat (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BYjZjNTJlZGUtZTE1Ny00ZDc4LTgwYjUtMzk0NDgwYzZjYTk1XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Michael Mann (dir.), Al Pacino, Robert De Niro",
            "imDbRating": "8.2",
            "imDbRatingCount": "642240"
        },
        {
            "id": "tt0119488",
            "rank": "113",
            "title": "L.A. Confidential",
            "fullTitle": "L.A. Confidential (1997)",
            "year": "1997",
            "image": "https://m.media-amazon.com/images/M/MV5BMDQ2YzEyZGItYWRhOS00MjBmLTkzMDUtMTdjYzkyMmQxZTJlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Curtis Hanson (dir.), Kevin Spacey, Russell Crowe",
            "imDbRating": "8.2",
            "imDbRatingCount": "576577"
        },
        {
            "id": "tt0017136",
            "rank": "114",
            "title": "Metropolis",
            "fullTitle": "Metropolis (1927)",
            "year": "1927",
            "image": "https://m.media-amazon.com/images/M/MV5BMTg5YWIyMWUtZDY5My00Zjc1LTljOTctYmI0MWRmY2M2NmRkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Fritz Lang (dir.), Brigitte Helm, Alfred Abel",
            "imDbRating": "8.2",
            "imDbRatingCount": "172752"
        },
        {
            "id": "tt1832382",
            "rank": "115",
            "title": "A Separation",
            "fullTitle": "A Separation (2011)",
            "year": "2011",
            "image": "https://m.media-amazon.com/images/M/MV5BN2JmMjViMjMtZTM5Mi00ZGZkLTk5YzctZDg5MjFjZDE4NjNkXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Asghar Farhadi (dir.), Payman Maadi, Leila Hatami",
            "imDbRating": "8.2",
            "imDbRatingCount": "243157"
        },
        {
            "id": "tt1255953",
            "rank": "116",
            "title": "Incendies",
            "fullTitle": "Incendies (2010)",
            "year": "2010",
            "image": "https://m.media-amazon.com/images/M/MV5BMWE3MGYzZjktY2Q5Mi00Y2NiLWIyYWUtMmIyNzA3YmZlMGFhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Denis Villeneuve (dir.), Lubna Azabal, Mélissa Désormeaux-Poulin",
            "imDbRating": "8.2",
            "imDbRatingCount": "174589"
        },
        {
            "id": "tt0095016",
            "rank": "117",
            "title": "Die Hard",
            "fullTitle": "Die Hard (1988)",
            "year": "1988",
            "image": "https://m.media-amazon.com/images/M/MV5BZjRlNDUxZjAtOGQ4OC00OTNlLTgxNmQtYTBmMDgwZmNmNjkxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John McTiernan (dir.), Bruce Willis, Alan Rickman",
            "imDbRating": "8.2",
            "imDbRatingCount": "864188"
        },
        {
            "id": "tt0208092",
            "rank": "118",
            "title": "Snatch",
            "fullTitle": "Snatch (2000)",
            "year": "2000",
            "image": "https://m.media-amazon.com/images/M/MV5BMTA2NDYxOGYtYjU1Mi00Y2QzLTgxMTQtMWI1MGI0ZGQ5MmU4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Guy Ritchie (dir.), Jason Statham, Brad Pitt",
            "imDbRating": "8.2",
            "imDbRatingCount": "843700"
        },
        {
            "id": "tt8503618",
            "rank": "119",
            "title": "Hamilton",
            "fullTitle": "Hamilton (2020)",
            "year": "2020",
            "image": "https://m.media-amazon.com/images/M/MV5BNjViNWRjYWEtZTI0NC00N2E3LTk0NGQtMjY4NTM3OGNkZjY0XkEyXkFqcGdeQXVyMjUxMTY3ODM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Thomas Kail (dir.), Lin-Manuel Miranda, Phillipa Soo",
            "imDbRating": "8.2",
            "imDbRatingCount": "90521"
        },
        {
            "id": "tt0097576",
            "rank": "120",
            "title": "Indiana Jones and the Last Crusade",
            "fullTitle": "Indiana Jones and the Last Crusade (1989)",
            "year": "1989",
            "image": "https://m.media-amazon.com/images/M/MV5BY2Q0ODg4ZmItNDZiYi00ZWY5LTg2NzctNmYwZjA5OThmNzE1XkEyXkFqcGdeQXVyMjM4MzQ4OTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Harrison Ford, Sean Connery",
            "imDbRating": "8.2",
            "imDbRatingCount": "744504"
        },
        {
            "id": "tt0040522",
            "rank": "121",
            "title": "Bicycle Thieves",
            "fullTitle": "Bicycle Thieves (1948)",
            "year": "1948",
            "image": "https://m.media-amazon.com/images/M/MV5BNmI1ODdjODctMDlmMC00ZWViLWI5MzYtYzRhNDdjYmM3MzFjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Vittorio De Sica (dir.), Lamberto Maggiorani, Enzo Staiola",
            "imDbRating": "8.2",
            "imDbRatingCount": "162024"
        },
        {
            "id": "tt8579674",
            "rank": "122",
            "title": "1917",
            "fullTitle": "1917 (2019)",
            "year": "2019",
            "image": "https://m.media-amazon.com/images/M/MV5BOTdmNTFjNDEtNzg0My00ZjkxLTg1ZDAtZTdkMDc2ZmFiNWQ1XkEyXkFqcGdeQXVyNTAzNzgwNTg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sam Mendes (dir.), Dean-Charles Chapman, George MacKay",
            "imDbRating": "8.2",
            "imDbRatingCount": "564088"
        },
        {
            "id": "tt0986264",
            "rank": "123",
            "title": "Like Stars on Earth",
            "fullTitle": "Like Stars on Earth (2007)",
            "year": "2007",
            "image": "https://m.media-amazon.com/images/M/MV5BMDhjZWViN2MtNzgxOS00NmI4LThiZDQtZDI3MzM4MDE4NTc0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Aamir Khan (dir.), Darsheel Safary, Aamir Khan",
            "imDbRating": "8.2",
            "imDbRatingCount": "190652"
        },
        {
            "id": "tt0363163",
            "rank": "124",
            "title": "Downfall",
            "fullTitle": "Downfall (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BMTU0NTU5NTAyMl5BMl5BanBnXkFtZTYwNzYwMDg2._V1_Ratio0.6716_AL_.jpg",
            "crew": "Oliver Hirschbiegel (dir.), Bruno Ganz, Alexandra Maria Lara",
            "imDbRating": "8.2",
            "imDbRatingCount": "352664"
        },
        {
            "id": "tt0059578",
            "rank": "125",
            "title": "For a Few Dollars More",
            "fullTitle": "For a Few Dollars More (1965)",
            "year": "1965",
            "image": "https://m.media-amazon.com/images/M/MV5BMzJlZTNkYjQtMTE1OS00YTJlLTgxNjItYzg4NTllODdkMzBiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sergio Leone (dir.), Clint Eastwood, Lee Van Cleef",
            "imDbRating": "8.2",
            "imDbRatingCount": "253837"
        },
        {
            "id": "tt0372784",
            "rank": "126",
            "title": "Batman Begins",
            "fullTitle": "Batman Begins (2005)",
            "year": "2005",
            "image": "https://m.media-amazon.com/images/M/MV5BOTY4YjI2N2MtYmFlMC00ZjcyLTg3YjEtMDQyM2ZjYzQ5YWFkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Christopher Nolan (dir.), Christian Bale, Michael Caine",
            "imDbRating": "8.2",
            "imDbRatingCount": "1442720"
        },
        {
            "id": "tt5074352",
            "rank": "127",
            "title": "Dangal",
            "fullTitle": "Dangal (2016)",
            "year": "2016",
            "image": "https://m.media-amazon.com/images/M/MV5BMTQ4MzQzMzM2Nl5BMl5BanBnXkFtZTgwMTQ1NzU3MDI@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Nitesh Tiwari (dir.), Aamir Khan, Sakshi Tanwar",
            "imDbRating": "8.2",
            "imDbRatingCount": "186058"
        },
        {
            "id": "tt0012349",
            "rank": "128",
            "title": "The Kid",
            "fullTitle": "The Kid (1921)",
            "year": "1921",
            "image": "https://m.media-amazon.com/images/M/MV5BZjhhMThhNDItNTY2MC00MmU1LTliNDEtNDdhZjdlNTY5ZDQ1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Charles Chaplin (dir.), Charles Chaplin, Edna Purviance",
            "imDbRating": "8.2",
            "imDbRatingCount": "125478"
        },
        {
            "id": "tt0053291",
            "rank": "129",
            "title": "Some Like It Hot",
            "fullTitle": "Some Like It Hot (1959)",
            "year": "1959",
            "image": "https://m.media-amazon.com/images/M/MV5BNzAyOGIxYjAtMGY2NC00ZTgyLWIwMWEtYzY0OWQ4NDFjOTc5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Billy Wilder (dir.), Marilyn Monroe, Tony Curtis",
            "imDbRating": "8.2",
            "imDbRatingCount": "264406"
        },
        {
            "id": "tt10872600",
            "rank": "130",
            "title": "Spider-Man: No Way Home",
            "fullTitle": "Spider-Man: No Way Home (2021)",
            "year": "2021",
            "image": "https://m.media-amazon.com/images/M/MV5BZWMyYzFjYTYtNTRjYi00OGExLWE2YzgtOGRmYjAxZTU3NzBiXkEyXkFqcGdeQXVyMzQ0MzA0NTM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Jon Watts (dir.), Tom Holland, Zendaya",
            "imDbRating": "8.2",
            "imDbRatingCount": "694477"
        },
        {
            "id": "tt0042192",
            "rank": "131",
            "title": "All About Eve",
            "fullTitle": "All About Eve (1950)",
            "year": "1950",
            "image": "https://m.media-amazon.com/images/M/MV5BMTY2MTAzODI5NV5BMl5BanBnXkFtZTgwMjM4NzQ0MjE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Joseph L. Mankiewicz (dir.), Bette Davis, Anne Baxter",
            "imDbRating": "8.2",
            "imDbRatingCount": "130484"
        },
        {
            "id": "tt10272386",
            "rank": "132",
            "title": "The Father",
            "fullTitle": "The Father (2020)",
            "year": "2020",
            "image": "https://m.media-amazon.com/images/M/MV5BZGJhNWRiOWQtMjI4OS00ZjcxLTgwMTAtMzQ2ODkxY2JkOTVlXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Florian Zeller (dir.), Anthony Hopkins, Olivia Colman",
            "imDbRating": "8.2",
            "imDbRatingCount": "142502"
        },
        {
            "id": "tt6966692",
            "rank": "133",
            "title": "Green Book",
            "fullTitle": "Green Book (2018)",
            "year": "2018",
            "image": "https://m.media-amazon.com/images/M/MV5BYzIzYmJlYTYtNGNiYy00N2EwLTk4ZjItMGYyZTJiOTVkM2RlXkEyXkFqcGdeQXVyODY1NDk1NjE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Peter Farrelly (dir.), Viggo Mortensen, Mahershala Ali",
            "imDbRating": "8.2",
            "imDbRatingCount": "473538"
        },
        {
            "id": "tt0993846",
            "rank": "134",
            "title": "The Wolf of Wall Street",
            "fullTitle": "The Wolf of Wall Street (2013)",
            "year": "2013",
            "image": "https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Leonardo DiCaprio, Jonah Hill",
            "imDbRating": "8.2",
            "imDbRatingCount": "1364348"
        },
        {
            "id": "tt0055031",
            "rank": "135",
            "title": "Judgment at Nuremberg",
            "fullTitle": "Judgment at Nuremberg (1961)",
            "year": "1961",
            "image": "https://m.media-amazon.com/images/M/MV5BNDc2ODQ5NTE2MV5BMl5BanBnXkFtZTcwODExMjUyNA@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kramer (dir.), Spencer Tracy, Burt Lancaster",
            "imDbRating": "8.2",
            "imDbRatingCount": "77033"
        },
        {
            "id": "tt0089881",
            "rank": "136",
            "title": "Ran",
            "fullTitle": "Ran (1985)",
            "year": "1985",
            "image": "https://m.media-amazon.com/images/M/MV5BMmU1NGYwZWYtOWExNi00ZTEyLTgwMmUtM2ZlMDVjNWM4YjVlXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Tatsuya Nakadai, Akira Terao",
            "imDbRating": "8.2",
            "imDbRatingCount": "124427"
        },
        {
            "id": "tt0105695",
            "rank": "137",
            "title": "Unforgiven",
            "fullTitle": "Unforgiven (1992)",
            "year": "1992",
            "image": "https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Clint Eastwood (dir.), Clint Eastwood, Gene Hackman",
            "imDbRating": "8.2",
            "imDbRatingCount": "407405"
        },
        {
            "id": "tt0112641",
            "rank": "138",
            "title": "Casino",
            "fullTitle": "Casino (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BMTcxOWYzNDYtYmM4YS00N2NkLTk0NTAtNjg1ODgwZjAxYzI3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Robert De Niro, Sharon Stone",
            "imDbRating": "8.2",
            "imDbRatingCount": "511583"
        },
        {
            "id": "tt0457430",
            "rank": "139",
            "title": "Pan's Labyrinth",
            "fullTitle": "Pan's Labyrinth (2006)",
            "year": "2006",
            "image": "https://m.media-amazon.com/images/M/MV5BYzFjMThiMGItOWRlMC00MDI4LThmOGUtYTNlZGZiYWI1YjMyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Guillermo del Toro (dir.), Ivana Baquero, Ariadna Gil",
            "imDbRating": "8.2",
            "imDbRatingCount": "661153"
        },
        {
            "id": "tt0469494",
            "rank": "140",
            "title": "There Will Be Blood",
            "fullTitle": "There Will Be Blood (2007)",
            "year": "2007",
            "image": "https://m.media-amazon.com/images/M/MV5BMjAxODQ4MDU5NV5BMl5BanBnXkFtZTcwMDU4MjU1MQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Paul Thomas Anderson (dir.), Daniel Day-Lewis, Paul Dano",
            "imDbRating": "8.2",
            "imDbRatingCount": "576764"
        },
        {
            "id": "tt0167404",
            "rank": "141",
            "title": "The Sixth Sense",
            "fullTitle": "The Sixth Sense (1999)",
            "year": "1999",
            "image": "https://m.media-amazon.com/images/M/MV5BMWM4NTFhYjctNzUyNi00NGMwLTk3NTYtMDIyNTZmMzRlYmQyXkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "M. Night Shyamalan (dir.), Bruce Willis, Haley Joel Osment",
            "imDbRating": "8.2",
            "imDbRatingCount": "977788"
        },
        {
            "id": "tt0120382",
            "rank": "142",
            "title": "The Truman Show",
            "fullTitle": "The Truman Show (1998)",
            "year": "1998",
            "image": "https://m.media-amazon.com/images/M/MV5BMDIzODcyY2EtMmY2MC00ZWVlLTgwMzAtMjQwOWUyNmJjNTYyXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Peter Weir (dir.), Jim Carrey, Ed Harris",
            "imDbRating": "8.2",
            "imDbRatingCount": "1052928"
        },
        {
            "id": "tt0268978",
            "rank": "143",
            "title": "A Beautiful Mind",
            "fullTitle": "A Beautiful Mind (2001)",
            "year": "2001",
            "image": "https://m.media-amazon.com/images/M/MV5BMzcwYWFkYzktZjAzNC00OGY1LWI4YTgtNzc5MzVjMDVmNjY0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ron Howard (dir.), Russell Crowe, Ed Harris",
            "imDbRating": "8.2",
            "imDbRatingCount": "919337"
        },
        {
            "id": "tt0071853",
            "rank": "144",
            "title": "Monty Python and the Holy Grail",
            "fullTitle": "Monty Python and the Holy Grail (1975)",
            "year": "1975",
            "image": "https://m.media-amazon.com/images/M/MV5BN2IyNTE4YzUtZWU0Mi00MGIwLTgyMmQtMzQ4YzQxYWNlYWE2XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Terry Gilliam (dir.), Graham Chapman, John Cleese",
            "imDbRating": "8.2",
            "imDbRatingCount": "535721"
        },
        {
            "id": "tt0055630",
            "rank": "145",
            "title": "Yojimbo",
            "fullTitle": "Yojimbo (1961)",
            "year": "1961",
            "image": "https://m.media-amazon.com/images/M/MV5BZThiZjAzZjgtNDU3MC00YThhLThjYWUtZGRkYjc2ZWZlOTVjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Toshirô Mifune, Eijirô Tôno",
            "imDbRating": "8.2",
            "imDbRatingCount": "121921"
        },
        {
            "id": "tt0040897",
            "rank": "146",
            "title": "The Treasure of the Sierra Madre",
            "fullTitle": "The Treasure of the Sierra Madre (1948)",
            "year": "1948",
            "image": "https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John Huston (dir.), Humphrey Bogart, Walter Huston",
            "imDbRating": "8.1",
            "imDbRatingCount": "124113"
        },
        {
            "id": "tt1130884",
            "rank": "147",
            "title": "Shutter Island",
            "fullTitle": "Shutter Island (2010)",
            "year": "2010",
            "image": "https://m.media-amazon.com/images/M/MV5BYzhiNDkyNzktNTZmYS00ZTBkLTk2MDAtM2U0YjU1MzgxZjgzXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Leonardo DiCaprio, Emily Mortimer",
            "imDbRating": "8.1",
            "imDbRatingCount": "1276687"
        },
        {
            "id": "tt0107290",
            "rank": "148",
            "title": "Jurassic Park",
            "fullTitle": "Jurassic Park (1993)",
            "year": "1993",
            "image": "https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Sam Neill, Laura Dern",
            "imDbRating": "8.1",
            "imDbRatingCount": "970500"
        },
        {
            "id": "tt0042876",
            "rank": "149",
            "title": "Rashomon",
            "fullTitle": "Rashomon (1950)",
            "year": "1950",
            "image": "https://m.media-amazon.com/images/M/MV5BMjEzMzA4NDE2OF5BMl5BanBnXkFtZTcwNTc5MDI2NQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Toshirô Mifune, Machiko Kyô",
            "imDbRating": "8.1",
            "imDbRatingCount": "166852"
        },
        {
            "id": "tt0057115",
            "rank": "150",
            "title": "The Great Escape",
            "fullTitle": "The Great Escape (1963)",
            "year": "1963",
            "image": "https://m.media-amazon.com/images/M/MV5BNzA2NmYxMWUtNzBlMC00MWM2LTkwNmQtYTFlZjQwODNhOWE0XkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John Sturges (dir.), Steve McQueen, James Garner",
            "imDbRating": "8.1",
            "imDbRatingCount": "242572"
        },
        {
            "id": "tt0266697",
            "rank": "151",
            "title": "Kill Bill: Vol. 1",
            "fullTitle": "Kill Bill: Vol. 1 (2003)",
            "year": "2003",
            "image": "https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Quentin Tarantino (dir.), Uma Thurman, David Carradine",
            "imDbRating": "8.1",
            "imDbRatingCount": "1095505"
        },
        {
            "id": "tt0477348",
            "rank": "152",
            "title": "No Country for Old Men",
            "fullTitle": "No Country for Old Men (2007)",
            "year": "2007",
            "image": "https://m.media-amazon.com/images/M/MV5BMjA5Njk3MjM4OV5BMl5BanBnXkFtZTcwMTc5MTE1MQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ethan Coen (dir.), Tommy Lee Jones, Javier Bardem",
            "imDbRating": "8.1",
            "imDbRatingCount": "952616"
        },
        {
            "id": "tt0266543",
            "rank": "153",
            "title": "Finding Nemo",
            "fullTitle": "Finding Nemo (2003)",
            "year": "2003",
            "image": "https://m.media-amazon.com/images/M/MV5BZTAzNWZlNmUtZDEzYi00ZjA5LWIwYjEtZGM1NWE1MjE4YWRhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Andrew Stanton (dir.), Albert Brooks, Ellen DeGeneres",
            "imDbRating": "8.1",
            "imDbRatingCount": "1027770"
        },
        {
            "id": "tt0080678",
            "rank": "154",
            "title": "The Elephant Man",
            "fullTitle": "The Elephant Man (1980)",
            "year": "1980",
            "image": "https://m.media-amazon.com/images/M/MV5BMDVjNjIwOGItNDE3Ny00OThjLWE0NzQtZTU3YjMzZTZjMzhkXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Lynch (dir.), Anthony Hopkins, John Hurt",
            "imDbRating": "8.1",
            "imDbRatingCount": "238812"
        },
        {
            "id": "tt0071315",
            "rank": "155",
            "title": "Chinatown",
            "fullTitle": "Chinatown (1974)",
            "year": "1974",
            "image": "https://m.media-amazon.com/images/M/MV5BMjJkMDZhYzItZTFhMi00ZGI4LThlNTAtZDNlYmEwNjFkNDYzXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Roman Polanski (dir.), Jack Nicholson, Faye Dunaway",
            "imDbRating": "8.1",
            "imDbRatingCount": "322950"
        },
        {
            "id": "tt0081398",
            "rank": "156",
            "title": "Raging Bull",
            "fullTitle": "Raging Bull (1980)",
            "year": "1980",
            "image": "https://m.media-amazon.com/images/M/MV5BYjRmODkzNDItMTNhNi00YjJlLTg0ZjAtODlhZTM0YzgzYThlXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin Scorsese (dir.), Robert De Niro, Cathy Moriarty",
            "imDbRating": "8.1",
            "imDbRatingCount": "349556"
        },
        {
            "id": "tt0031381",
            "rank": "157",
            "title": "Gone with the Wind",
            "fullTitle": "Gone with the Wind (1939)",
            "year": "1939",
            "image": "https://m.media-amazon.com/images/M/MV5BYjUyZWZkM2UtMzYxYy00ZmQ3LWFmZTQtOGE2YjBkNjA3YWZlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Victor Fleming (dir.), Clark Gable, Vivien Leigh",
            "imDbRating": "8.1",
            "imDbRatingCount": "312641"
        },
        {
            "id": "tt0084787",
            "rank": "158",
            "title": "The Thing",
            "fullTitle": "The Thing (1982)",
            "year": "1982",
            "image": "https://m.media-amazon.com/images/M/MV5BNGViZWZmM2EtNGYzZi00ZDAyLTk3ODMtNzIyZTBjN2Y1NmM1XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John Carpenter (dir.), Kurt Russell, Wilford Brimley",
            "imDbRating": "8.1",
            "imDbRatingCount": "415452"
        },
        {
            "id": "tt0434409",
            "rank": "159",
            "title": "V for Vendetta",
            "fullTitle": "V for Vendetta (2006)",
            "year": "2006",
            "image": "https://m.media-amazon.com/images/M/MV5BOTI5ODc3NzExNV5BMl5BanBnXkFtZTcwNzYxNzQzMw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "James McTeigue (dir.), Hugo Weaving, Natalie Portman",
            "imDbRating": "8.1",
            "imDbRatingCount": "1107233"
        },
        {
            "id": "tt2096673",
            "rank": "160",
            "title": "Inside Out",
            "fullTitle": "Inside Out (2015)",
            "year": "2015",
            "image": "https://m.media-amazon.com/images/M/MV5BOTgxMDQwMDk0OF5BMl5BanBnXkFtZTgwNjU5OTg2NDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Pete Docter (dir.), Amy Poehler, Bill Hader",
            "imDbRating": "8.1",
            "imDbRatingCount": "698030"
        },
        {
            "id": "tt0120735",
            "rank": "161",
            "title": "Lock, Stock and Two Smoking Barrels",
            "fullTitle": "Lock, Stock and Two Smoking Barrels (1998)",
            "year": "1998",
            "image": "https://m.media-amazon.com/images/M/MV5BMTAyN2JmZmEtNjAyMy00NzYwLThmY2MtYWQ3OGNhNjExMmM4XkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Guy Ritchie (dir.), Jason Flemyng, Dexter Fletcher",
            "imDbRating": "8.1",
            "imDbRatingCount": "575520"
        },
        {
            "id": "tt0046912",
            "rank": "162",
            "title": "Dial M for Murder",
            "fullTitle": "Dial M for Murder (1954)",
            "year": "1954",
            "image": "https://m.media-amazon.com/images/M/MV5BOWIwODIxYWItZDI4MS00YzhhLWE3MmYtMzlhZDIwOTMzZmE5L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Alfred Hitchcock (dir.), Ray Milland, Grace Kelly",
            "imDbRating": "8.1",
            "imDbRatingCount": "174074"
        },
        {
            "id": "tt1305806",
            "rank": "163",
            "title": "The Secret in Their Eyes",
            "fullTitle": "The Secret in Their Eyes (2009)",
            "year": "2009",
            "image": "https://m.media-amazon.com/images/M/MV5BY2FhZGI5M2QtZWFiZS00NjkwLWE4NWQtMzg3ZDZjNjdkYTJiXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Juan José Campanella (dir.), Ricardo Darín, Soledad Villamil",
            "imDbRating": "8.1",
            "imDbRatingCount": "207961"
        },
        {
            "id": "tt0347149",
            "rank": "164",
            "title": "Howl's Moving Castle",
            "fullTitle": "Howl's Moving Castle (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BNmM4YTFmMmItMGE3Yy00MmRkLTlmZGEtMzZlOTQzYjk3MzA2XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Hayao Miyazaki (dir.), Chieko Baishô, Takuya Kimura",
            "imDbRating": "8.1",
            "imDbRatingCount": "385776"
        },
        {
            "id": "tt0050212",
            "rank": "165",
            "title": "The Bridge on the River Kwai",
            "fullTitle": "The Bridge on the River Kwai (1957)",
            "year": "1957",
            "image": "https://m.media-amazon.com/images/M/MV5BOGY5NmNlMmQtYzRlYy00NGQ5LWFkYjYtNzExZmQyMTg0ZDA0XkEyXkFqcGdeQXVyNDIzMzcwNjc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Lean (dir.), William Holden, Alec Guinness",
            "imDbRating": "8.1",
            "imDbRatingCount": "218977"
        },
        {
            "id": "tt5027774",
            "rank": "166",
            "title": "Three Billboards Outside Ebbing, Missouri",
            "fullTitle": "Three Billboards Outside Ebbing, Missouri (2017)",
            "year": "2017",
            "image": "https://m.media-amazon.com/images/M/MV5BMjI0ODcxNzM1N15BMl5BanBnXkFtZTgwMzIwMTEwNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Martin McDonagh (dir.), Frances McDormand, Woody Harrelson",
            "imDbRating": "8.1",
            "imDbRatingCount": "496129"
        },
        {
            "id": "tt0117951",
            "rank": "167",
            "title": "Trainspotting",
            "fullTitle": "Trainspotting (1996)",
            "year": "1996",
            "image": "https://m.media-amazon.com/images/M/MV5BMzA5Zjc3ZTMtMmU5YS00YTMwLWI4MWUtYTU0YTVmNjVmODZhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Danny Boyle (dir.), Ewan McGregor, Ewen Bremner",
            "imDbRating": "8.1",
            "imDbRatingCount": "679274"
        },
        {
            "id": "tt6710474",
            "rank": "168",
            "title": "Everything Everywhere All at Once",
            "fullTitle": "Everything Everywhere All at Once (2022)",
            "year": "2022",
            "image": "https://m.media-amazon.com/images/M/MV5BYTdiOTIyZTQtNmQ1OS00NjZlLWIyMTgtYzk5Y2M3ZDVmMDk1XkEyXkFqcGdeQXVyMTAzMDg4NzU0._V1_Ratio0.6716_AL_.jpg",
            "crew": "Dan Kwan (dir.), Michelle Yeoh, Stephanie Hsu",
            "imDbRating": "8.1",
            "imDbRatingCount": "166052"
        },
        {
            "id": "tt1291584",
            "rank": "169",
            "title": "Warrior",
            "fullTitle": "Warrior (2011)",
            "year": "2011",
            "image": "https://m.media-amazon.com/images/M/MV5BMTk4ODk5MTMyNV5BMl5BanBnXkFtZTcwMDMyNTg0Ng@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Gavin O'Connor (dir.), Tom Hardy, Nick Nolte",
            "imDbRating": "8.1",
            "imDbRatingCount": "467419"
        },
        {
            "id": "tt1205489",
            "rank": "170",
            "title": "Gran Torino",
            "fullTitle": "Gran Torino (2008)",
            "year": "2008",
            "image": "https://m.media-amazon.com/images/M/MV5BMTc5NTk2OTU1Nl5BMl5BanBnXkFtZTcwMDc3NjAwMg@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Clint Eastwood (dir.), Clint Eastwood, Bee Vang",
            "imDbRating": "8.1",
            "imDbRatingCount": "767414"
        },
        {
            "id": "tt0116282",
            "rank": "171",
            "title": "Fargo",
            "fullTitle": "Fargo (1996)",
            "year": "1996",
            "image": "https://m.media-amazon.com/images/M/MV5BNDJiZDgyZjctYmRjMS00ZjdkLTkwMTEtNGU1NDg3NDQ0Yzk1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Joel Coen (dir.), William H. Macy, Frances McDormand",
            "imDbRating": "8.1",
            "imDbRatingCount": "669718"
        },
        {
            "id": "tt1392214",
            "rank": "172",
            "title": "Prisoners",
            "fullTitle": "Prisoners (2013)",
            "year": "2013",
            "image": "https://m.media-amazon.com/images/M/MV5BMTg0NTIzMjQ1NV5BMl5BanBnXkFtZTcwNDc3MzM5OQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Denis Villeneuve (dir.), Hugh Jackman, Jake Gyllenhaal",
            "imDbRating": "8.1",
            "imDbRatingCount": "691577"
        },
        {
            "id": "tt0096283",
            "rank": "173",
            "title": "My Neighbor Totoro",
            "fullTitle": "My Neighbor Totoro (1988)",
            "year": "1988",
            "image": "https://m.media-amazon.com/images/M/MV5BYzJjMTYyMjQtZDI0My00ZjE2LTkyNGYtOTllNGQxNDMyZjE0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Hayao Miyazaki (dir.), Hitoshi Takagi, Noriko Hidaka",
            "imDbRating": "8.1",
            "imDbRatingCount": "332264"
        },
        {
            "id": "tt0405159",
            "rank": "174",
            "title": "Million Dollar Baby",
            "fullTitle": "Million Dollar Baby (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BMTkxNzA1NDQxOV5BMl5BanBnXkFtZTcwNTkyMTIzMw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Clint Eastwood (dir.), Hilary Swank, Clint Eastwood",
            "imDbRating": "8.1",
            "imDbRatingCount": "680519"
        },
        {
            "id": "tt0015864",
            "rank": "175",
            "title": "The Gold Rush",
            "fullTitle": "The Gold Rush (1925)",
            "year": "1925",
            "image": "https://m.media-amazon.com/images/M/MV5BZjEyOTE4MzMtNmMzMy00Mzc3LWJlOTQtOGJiNDE0ZmJiOTU4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.7313_AL_.jpg",
            "crew": "Charles Chaplin (dir.), Charles Chaplin, Mack Swain",
            "imDbRating": "8.1",
            "imDbRatingCount": "110543"
        },
        {
            "id": "tt0264464",
            "rank": "176",
            "title": "Catch Me If You Can",
            "fullTitle": "Catch Me If You Can (2002)",
            "year": "2002",
            "image": "https://m.media-amazon.com/images/M/MV5BMTY5MzYzNjc5NV5BMl5BanBnXkFtZTYwNTUyNTc2._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Leonardo DiCaprio, Tom Hanks",
            "imDbRating": "8.1",
            "imDbRatingCount": "954763"
        },
        {
            "id": "tt0083658",
            "rank": "177",
            "title": "Blade Runner",
            "fullTitle": "Blade Runner (1982)",
            "year": "1982",
            "image": "https://m.media-amazon.com/images/M/MV5BNzQzMzJhZTEtOWM4NS00MTdhLTg0YjgtMjM4MDRkZjUwZDBlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ridley Scott (dir.), Harrison Ford, Rutger Hauer",
            "imDbRating": "8.1",
            "imDbRatingCount": "757144"
        },
        {
            "id": "tt0047296",
            "rank": "178",
            "title": "On the Waterfront",
            "fullTitle": "On the Waterfront (1954)",
            "year": "1954",
            "image": "https://m.media-amazon.com/images/M/MV5BY2I0MWFiZDMtNWQyYy00Njk5LTk3MDktZjZjNTNmZmVkYjkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Elia Kazan (dir.), Marlon Brando, Karl Malden",
            "imDbRating": "8.1",
            "imDbRatingCount": "154014"
        },
        {
            "id": "tt0118849",
            "rank": "179",
            "title": "Children of Heaven",
            "fullTitle": "Children of Heaven (1997)",
            "year": "1997",
            "image": "https://m.media-amazon.com/images/M/MV5BZTYwZWQ4ZTQtZWU0MS00N2YwLWEzMDItZWFkZWY0MWVjODVhXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Majid Majidi (dir.), Mohammad Amir Naji, Amir Farrokh Hashemian",
            "imDbRating": "8.1",
            "imDbRatingCount": "74229"
        },
        {
            "id": "tt0041959",
            "rank": "180",
            "title": "The Third Man",
            "fullTitle": "The Third Man (1949)",
            "year": "1949",
            "image": "https://m.media-amazon.com/images/M/MV5BYjE2OTdhMWUtOGJlMy00ZDViLWIzZjgtYjZkZGZmMDZjYmEyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Carol Reed (dir.), Orson Welles, Joseph Cotten",
            "imDbRating": "8.1",
            "imDbRatingCount": "170521"
        },
        {
            "id": "tt0052618",
            "rank": "181",
            "title": "Ben-Hur",
            "fullTitle": "Ben-Hur (1959)",
            "year": "1959",
            "image": "https://m.media-amazon.com/images/M/MV5BNjgxY2JiZDYtZmMwOC00ZmJjLWJmODUtMTNmNWNmYWI5ODkwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "William Wyler (dir.), Charlton Heston, Jack Hawkins",
            "imDbRating": "8.1",
            "imDbRatingCount": "237536"
        },
        {
            "id": "tt0050986",
            "rank": "182",
            "title": "Wild Strawberries",
            "fullTitle": "Wild Strawberries (1957)",
            "year": "1957",
            "image": "https://m.media-amazon.com/images/M/MV5BYWQxYzdhMDMtNjAyZC00NzE0LWFjYmQtYjk0YzMyYjA5NzZkXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ingmar Bergman (dir.), Victor Sjöström, Bibi Andersson",
            "imDbRating": "8.1",
            "imDbRatingCount": "106579"
        },
        {
            "id": "tt0112471",
            "rank": "183",
            "title": "Before Sunrise",
            "fullTitle": "Before Sunrise (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BZDdiZTAwYzAtMDI3Ni00OTRjLTkzN2UtMGE3MDMyZmU4NTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Richard Linklater (dir.), Ethan Hawke, Julie Delpy",
            "imDbRating": "8.1",
            "imDbRatingCount": "302955"
        },
        {
            "id": "tt2024544",
            "rank": "184",
            "title": "12 Years a Slave",
            "fullTitle": "12 Years a Slave (2013)",
            "year": "2013",
            "image": "https://m.media-amazon.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steve McQueen (dir.), Chiwetel Ejiofor, Michael Kenneth Williams",
            "imDbRating": "8.1",
            "imDbRatingCount": "691908"
        },
        {
            "id": "tt0017925",
            "rank": "185",
            "title": "The General",
            "fullTitle": "The General (1926)",
            "year": "1926",
            "image": "https://m.media-amazon.com/images/M/MV5BYmRiMDFlYjYtOTMwYy00OGY2LWE0Y2QtYzQxOGNhZmUwNTIxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Clyde Bruckman (dir.), Buster Keaton, Marion Mack",
            "imDbRating": "8.1",
            "imDbRatingCount": "90735"
        },
        {
            "id": "tt2267998",
            "rank": "186",
            "title": "Gone Girl",
            "fullTitle": "Gone Girl (2014)",
            "year": "2014",
            "image": "https://m.media-amazon.com/images/M/MV5BMTk0MDQ3MzAzOV5BMl5BanBnXkFtZTgwNzU1NzE3MjE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Fincher (dir.), Ben Affleck, Rosamund Pike",
            "imDbRating": "8.1",
            "imDbRatingCount": "963232"
        },
        {
            "id": "tt1201607",
            "rank": "187",
            "title": "Harry Potter and the Deathly Hallows: Part 2",
            "fullTitle": "Harry Potter and the Deathly Hallows: Part 2 (2011)",
            "year": "2011",
            "image": "https://m.media-amazon.com/images/M/MV5BMGVmMWNiMDktYjQ0Mi00MWIxLTk0N2UtN2ZlYTdkN2IzNDNlXkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "David Yates (dir.), Daniel Radcliffe, Emma Watson",
            "imDbRating": "8.1",
            "imDbRatingCount": "857401"
        },
        {
            "id": "tt0077416",
            "rank": "188",
            "title": "The Deer Hunter",
            "fullTitle": "The Deer Hunter (1978)",
            "year": "1978",
            "image": "https://m.media-amazon.com/images/M/MV5BNDhmNTA0ZDMtYjhkNS00NzEzLWIzYTItOGNkMTVmYjE2YmI3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Michael Cimino (dir.), Robert De Niro, Christopher Walken",
            "imDbRating": "8.1",
            "imDbRatingCount": "336269"
        },
        {
            "id": "tt0107207",
            "rank": "189",
            "title": "In the Name of the Father",
            "fullTitle": "In the Name of the Father (1993)",
            "year": "1993",
            "image": "https://m.media-amazon.com/images/M/MV5BMmYyOTgwYWItYmU3Ny00M2E2LTk0NWMtMDVlNmQ0MWZiMTMxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Jim Sheridan (dir.), Daniel Day-Lewis, Pete Postlethwaite",
            "imDbRating": "8.1",
            "imDbRatingCount": "173481"
        },
        {
            "id": "tt2278388",
            "rank": "190",
            "title": "The Grand Budapest Hotel",
            "fullTitle": "The Grand Budapest Hotel (2014)",
            "year": "2014",
            "image": "https://m.media-amazon.com/images/M/MV5BMzM5NjUxOTEyMl5BMl5BanBnXkFtZTgwNjEyMDM0MDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Wes Anderson (dir.), Ralph Fiennes, F. Murray Abraham",
            "imDbRating": "8.1",
            "imDbRatingCount": "792128"
        },
        {
            "id": "tt0031679",
            "rank": "191",
            "title": "Mr. Smith Goes to Washington",
            "fullTitle": "Mr. Smith Goes to Washington (1939)",
            "year": "1939",
            "image": "https://m.media-amazon.com/images/M/MV5BZTYwYjYxYzgtMDE1Ni00NzU4LWJlMTEtODQ5YmJmMGJhZjI5L2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Frank Capra (dir.), James Stewart, Jean Arthur",
            "imDbRating": "8.1",
            "imDbRatingCount": "115096"
        },
        {
            "id": "tt0046268",
            "rank": "192",
            "title": "The Wages of Fear",
            "fullTitle": "The Wages of Fear (1953)",
            "year": "1953",
            "image": "https://m.media-amazon.com/images/M/MV5BZDdkNzMwZmUtY2Q5MS00ZmM2LWJhYjItYTBjMWY0MGM4MDRjXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Henri-Georges Clouzot (dir.), Yves Montand, Charles Vanel",
            "imDbRating": "8.1",
            "imDbRatingCount": "60732"
        },
        {
            "id": "tt0072684",
            "rank": "193",
            "title": "Barry Lyndon",
            "fullTitle": "Barry Lyndon (1975)",
            "year": "1975",
            "image": "https://m.media-amazon.com/images/M/MV5BNmY0MWY2NDctZDdmMi00MjA1LTk0ZTQtZDMyZTQ1NTNlYzVjXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stanley Kubrick (dir.), Ryan O'Neal, Marisa Berenson",
            "imDbRating": "8.1",
            "imDbRatingCount": "165791"
        },
        {
            "id": "tt0015324",
            "rank": "194",
            "title": "Sherlock Jr.",
            "fullTitle": "Sherlock Jr. (1924)",
            "year": "1924",
            "image": "https://m.media-amazon.com/images/M/MV5BZWFhOGU5NDctY2Q3YS00Y2VlLWI1NzEtZmIwY2ZiZjY4OTA2XkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Buster Keaton (dir.), Buster Keaton, Kathryn McGuire",
            "imDbRating": "8.1",
            "imDbRatingCount": "49344"
        },
        {
            "id": "tt0353969",
            "rank": "195",
            "title": "Memories of Murder",
            "fullTitle": "Memories of Murder (2003)",
            "year": "2003",
            "image": "https://m.media-amazon.com/images/M/MV5BOGViNTg4YTktYTQ2Ni00MTU0LTk2NWUtMTI4OTc1YTM0NzQ2XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Bong Joon Ho (dir.), Song Kang-ho, Kim Sang-kyung",
            "imDbRating": "8.1",
            "imDbRatingCount": "177782"
        },
        {
            "id": "tt2119532",
            "rank": "196",
            "title": "Hacksaw Ridge",
            "fullTitle": "Hacksaw Ridge (2016)",
            "year": "2016",
            "image": "https://m.media-amazon.com/images/M/MV5BMjQ1NjM3MTUxNV5BMl5BanBnXkFtZTgwMDc5MTY5OTE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Mel Gibson (dir.), Andrew Garfield, Sam Worthington",
            "imDbRating": "8.1",
            "imDbRatingCount": "511083"
        },
        {
            "id": "tt4729430",
            "rank": "197",
            "title": "Klaus",
            "fullTitle": "Klaus (2019)",
            "year": "2019",
            "image": "https://m.media-amazon.com/images/M/MV5BMWYwOThjM2ItZGYxNy00NTQwLWFlZWEtM2MzM2Q5MmY3NDU5XkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sergio Pablos (dir.), Jason Schwartzman, J.K. Simmons",
            "imDbRating": "8.1",
            "imDbRatingCount": "145107"
        },
        {
            "id": "tt0050976",
            "rank": "198",
            "title": "The Seventh Seal",
            "fullTitle": "The Seventh Seal (1957)",
            "year": "1957",
            "image": "https://m.media-amazon.com/images/M/MV5BM2I1ZWU4YjMtYzU0My00YmMzLWFmNTAtZDJhZGYwMmI3YWQ5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ingmar Bergman (dir.), Max von Sydow, Gunnar Björnstrand",
            "imDbRating": "8.1",
            "imDbRatingCount": "183453"
        },
        {
            "id": "tt3011894",
            "rank": "199",
            "title": "Wild Tales",
            "fullTitle": "Wild Tales (2014)",
            "year": "2014",
            "image": "https://m.media-amazon.com/images/M/MV5BNGQzY2Y0MTgtMDA4OC00NjM3LWI0ZGQtNTJlM2UxZDQxZjI0XkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Damián Szifron (dir.), Darío Grandinetti, María Marull",
            "imDbRating": "8.1",
            "imDbRatingCount": "195891"
        },
        {
            "id": "tt3170832",
            "rank": "200",
            "title": "Room",
            "fullTitle": "Room (2015)",
            "year": "2015",
            "image": "https://m.media-amazon.com/images/M/MV5BMjE4NzgzNzEwMl5BMl5BanBnXkFtZTgwMTMzMDE0NjE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Lenny Abrahamson (dir.), Brie Larson, Jacob Tremblay",
            "imDbRating": "8.1",
            "imDbRatingCount": "414341"
        },
        {
            "id": "tt1392190",
            "rank": "201",
            "title": "Mad Max: Fury Road",
            "fullTitle": "Mad Max: Fury Road (2015)",
            "year": "2015",
            "image": "https://m.media-amazon.com/images/M/MV5BN2EwM2I5OWMtMGQyMi00Zjg1LWJkNTctZTdjYTA4OGUwZjMyXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "George Miller (dir.), Tom Hardy, Charlize Theron",
            "imDbRating": "8.1",
            "imDbRatingCount": "981296"
        },
        {
            "id": "tt0118715",
            "rank": "202",
            "title": "The Big Lebowski",
            "fullTitle": "The Big Lebowski (1998)",
            "year": "1998",
            "image": "https://m.media-amazon.com/images/M/MV5BMTQ0NjUzMDMyOF5BMl5BanBnXkFtZTgwODA1OTU0MDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Joel Coen (dir.), Jeff Bridges, John Goodman",
            "imDbRating": "8.1",
            "imDbRatingCount": "797540"
        },
        {
            "id": "tt0892769",
            "rank": "203",
            "title": "How to Train Your Dragon",
            "fullTitle": "How to Train Your Dragon (2010)",
            "year": "2010",
            "image": "https://m.media-amazon.com/images/M/MV5BMjA5NDQyMjc2NF5BMl5BanBnXkFtZTcwMjg5ODcyMw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Dean DeBlois (dir.), Jay Baruchel, Gerard Butler",
            "imDbRating": "8.1",
            "imDbRatingCount": "728337"
        },
        {
            "id": "tt0978762",
            "rank": "204",
            "title": "Mary and Max",
            "fullTitle": "Mary and Max (2009)",
            "year": "2009",
            "image": "https://m.media-amazon.com/images/M/MV5BMDgzYjQwMDMtNGUzYi00MTRmLWIyMGMtNjE1OGZkNzY2YWIzL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Adam Elliot (dir.), Toni Collette, Philip Seymour Hoffman",
            "imDbRating": "8.1",
            "imDbRatingCount": "176206"
        },
        {
            "id": "tt0198781",
            "rank": "205",
            "title": "Monsters, Inc.",
            "fullTitle": "Monsters, Inc. (2001)",
            "year": "2001",
            "image": "https://m.media-amazon.com/images/M/MV5BMTY1NTI0ODUyOF5BMl5BanBnXkFtZTgwNTEyNjQ0MDE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Pete Docter (dir.), Billy Crystal, John Goodman",
            "imDbRating": "8.1",
            "imDbRatingCount": "893811"
        },
        {
            "id": "tt0073195",
            "rank": "206",
            "title": "Jaws",
            "fullTitle": "Jaws (1975)",
            "year": "1975",
            "image": "https://m.media-amazon.com/images/M/MV5BMmVmODY1MzEtYTMwZC00MzNhLWFkNDMtZjAwM2EwODUxZTA5XkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Steven Spielberg (dir.), Roy Scheider, Robert Shaw",
            "imDbRating": "8.1",
            "imDbRatingCount": "592793"
        },
        {
            "id": "tt0019254",
            "rank": "207",
            "title": "The Passion of Joan of Arc",
            "fullTitle": "The Passion of Joan of Arc (1928)",
            "year": "1928",
            "image": "https://m.media-amazon.com/images/M/MV5BNjBjNDJiYTUtOWY0OS00OGVmLTg2YzctMTE0NzVhODM1ZWJmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Carl Theodor Dreyer (dir.), Maria Falconetti, Eugene Silvain",
            "imDbRating": "8.1",
            "imDbRatingCount": "54250"
        },
        {
            "id": "tt0046438",
            "rank": "208",
            "title": "Tokyo Story",
            "fullTitle": "Tokyo Story (1953)",
            "year": "1953",
            "image": "https://m.media-amazon.com/images/M/MV5BYWQ4ZTRiODktNjAzZC00Nzg1LTk1YWQtNDFmNDI0NmZiNGIwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Yasujirô Ozu (dir.), Chishû Ryû, Chieko Higashiyama",
            "imDbRating": "8.1",
            "imDbRatingCount": "61113"
        },
        {
            "id": "tt0097165",
            "rank": "209",
            "title": "Dead Poets Society",
            "fullTitle": "Dead Poets Society (1989)",
            "year": "1989",
            "image": "https://m.media-amazon.com/images/M/MV5BOGYwYWNjMzgtNGU4ZC00NWQ2LWEwZjUtMzE1Zjc3NjY3YTU1XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Peter Weir (dir.), Robin Williams, Robert Sean Leonard",
            "imDbRating": "8.1",
            "imDbRatingCount": "479650"
        },
        {
            "id": "tt0395169",
            "rank": "210",
            "title": "Hotel Rwanda",
            "fullTitle": "Hotel Rwanda (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BZGJjYmIzZmQtNWE4Yy00ZGVmLWJkZGEtMzUzNmQ4ZWFlMjRhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Terry George (dir.), Don Cheadle, Sophie Okonedo",
            "imDbRating": "8.1",
            "imDbRatingCount": "353409"
        },
        {
            "id": "tt0075148",
            "rank": "211",
            "title": "Rocky",
            "fullTitle": "Rocky (1976)",
            "year": "1976",
            "image": "https://m.media-amazon.com/images/M/MV5BNTBkMjg2MjYtYTZjOS00ODQ0LTg0MDEtM2FiNmJmOGU1NGEwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John G. Avildsen (dir.), Sylvester Stallone, Talia Shire",
            "imDbRating": "8.0",
            "imDbRatingCount": "566351"
        },
        {
            "id": "tt0091763",
            "rank": "212",
            "title": "Platoon",
            "fullTitle": "Platoon (1986)",
            "year": "1986",
            "image": "https://m.media-amazon.com/images/M/MV5BMzRjZjdlMjQtODVkYS00N2YzLWJlYWYtMGVlN2E5MWEwMWQzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Oliver Stone (dir.), Charlie Sheen, Tom Berenger",
            "imDbRating": "8.0",
            "imDbRatingCount": "410161"
        },
        {
            "id": "tt1950186",
            "rank": "213",
            "title": "Ford v Ferrari",
            "fullTitle": "Ford v Ferrari (2019)",
            "year": "2019",
            "image": "https://m.media-amazon.com/images/M/MV5BM2UwMDVmMDItM2I2Yi00NGZmLTk4ZTUtY2JjNTQ3OGQ5ZjM2XkEyXkFqcGdeQXVyMTA1OTYzOTUx._V1_Ratio0.6716_AL_.jpg",
            "crew": "James Mangold (dir.), Matt Damon, Christian Bale",
            "imDbRating": "8.0",
            "imDbRatingCount": "377259"
        },
        {
            "id": "tt0048473",
            "rank": "214",
            "title": "Pather Panchali",
            "fullTitle": "Pather Panchali (1955)",
            "year": "1955",
            "image": "https://m.media-amazon.com/images/M/MV5BMmFkNDY5OTktNzY3Yy00OTFlLThhNjktOTRhMmZjZmIxYjAxXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Satyajit Ray (dir.), Kanu Bannerjee, Karuna Bannerjee",
            "imDbRating": "8.0",
            "imDbRatingCount": "32337"
        },
        {
            "id": "tt0092005",
            "rank": "215",
            "title": "Stand by Me",
            "fullTitle": "Stand by Me (1986)",
            "year": "1986",
            "image": "https://m.media-amazon.com/images/M/MV5BODJmY2Y2OGQtMDg2My00N2Q3LWJmZTUtYTc2ODBjZDVlNDlhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Rob Reiner (dir.), Wil Wheaton, River Phoenix",
            "imDbRating": "8.0",
            "imDbRatingCount": "397789"
        },
        {
            "id": "tt0088247",
            "rank": "216",
            "title": "The Terminator",
            "fullTitle": "The Terminator (1984)",
            "year": "1984",
            "image": "https://m.media-amazon.com/images/M/MV5BYTViNzMxZjEtZGEwNy00MDNiLWIzNGQtZDY2MjQ1OWViZjFmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "James Cameron (dir.), Arnold Schwarzenegger, Linda Hamilton",
            "imDbRating": "8.0",
            "imDbRatingCount": "851082"
        },
        {
            "id": "tt1895587",
            "rank": "217",
            "title": "Spotlight",
            "fullTitle": "Spotlight (2015)",
            "year": "2015",
            "image": "https://m.media-amazon.com/images/M/MV5BMjIyOTM5OTIzNV5BMl5BanBnXkFtZTgwMDkzODE2NjE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Tom McCarthy (dir.), Mark Ruffalo, Michael Keaton",
            "imDbRating": "8.0",
            "imDbRatingCount": "463705"
        },
        {
            "id": "tt1979320",
            "rank": "218",
            "title": "Rush",
            "fullTitle": "Rush (2013)",
            "year": "2013",
            "image": "https://m.media-amazon.com/images/M/MV5BOWEwODJmZDItYTNmZC00OGM4LThlNDktOTQzZjIzMGQxODA4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ron Howard (dir.), Daniel Brühl, Chris Hemsworth",
            "imDbRating": "8.0",
            "imDbRatingCount": "473622"
        },
        {
            "id": "tt0074958",
            "rank": "219",
            "title": "Network",
            "fullTitle": "Network (1976)",
            "year": "1976",
            "image": "https://m.media-amazon.com/images/M/MV5BNzY0NjU5ODUtOTAzMC00NTU5LWJkZjctYWMyOWY2MTZmOWM1XkEyXkFqcGdeQXVyMTI3ODAyMzE2._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sidney Lumet (dir.), Faye Dunaway, William Holden",
            "imDbRating": "8.0",
            "imDbRatingCount": "158385"
        },
        {
            "id": "tt3315342",
            "rank": "220",
            "title": "Logan",
            "fullTitle": "Logan (2017)",
            "year": "2017",
            "image": "https://m.media-amazon.com/images/M/MV5BYzc5MTU4N2EtYTkyMi00NjdhLTg3NWEtMTY4OTEyMzJhZTAzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "James Mangold (dir.), Hugh Jackman, Patrick Stewart",
            "imDbRating": "8.0",
            "imDbRatingCount": "742274"
        },
        {
            "id": "tt0758758",
            "rank": "221",
            "title": "Into the Wild",
            "fullTitle": "Into the Wild (2007)",
            "year": "2007",
            "image": "https://m.media-amazon.com/images/M/MV5BNjQ0ODlhMWUtNmUwMS00YjExLWI4MjQtNjVmMmE2Y2E0MGRmXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Sean Penn (dir.), Emile Hirsch, Vince Vaughn",
            "imDbRating": "8.0",
            "imDbRatingCount": "616910"
        },
        {
            "id": "tt0032138",
            "rank": "222",
            "title": "The Wizard of Oz",
            "fullTitle": "The Wizard of Oz (1939)",
            "year": "1939",
            "image": "https://m.media-amazon.com/images/M/MV5BNjUyMTc4MDExMV5BMl5BanBnXkFtZTgwNDg0NDIwMjE@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Victor Fleming (dir.), Judy Garland, Frank Morgan",
            "imDbRating": "8.0",
            "imDbRatingCount": "394522"
        },
        {
            "id": "tt0382932",
            "rank": "223",
            "title": "Ratatouille",
            "fullTitle": "Ratatouille (2007)",
            "year": "2007",
            "image": "https://m.media-amazon.com/images/M/MV5BMTMzODU0NTkxMF5BMl5BanBnXkFtZTcwMjQ4MzMzMw@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Brad Bird (dir.), Brad Garrett, Lou Romano",
            "imDbRating": "8.0",
            "imDbRatingCount": "717382"
        },
        {
            "id": "tt0107048",
            "rank": "224",
            "title": "Groundhog Day",
            "fullTitle": "Groundhog Day (1993)",
            "year": "1993",
            "image": "https://m.media-amazon.com/images/M/MV5BZWIxNzM5YzQtY2FmMS00Yjc3LWI1ZjUtNGVjMjMzZTIxZTIxXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Harold Ramis (dir.), Bill Murray, Andie MacDowell",
            "imDbRating": "8.0",
            "imDbRatingCount": "621575"
        },
        {
            "id": "tt0381681",
            "rank": "225",
            "title": "Before Sunset",
            "fullTitle": "Before Sunset (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BMTQ1MjAwNTM5Ml5BMl5BanBnXkFtZTYwNDM0MTc3._V1_Ratio0.6716_AL_.jpg",
            "crew": "Richard Linklater (dir.), Ethan Hawke, Julie Delpy",
            "imDbRating": "8.0",
            "imDbRatingCount": "260551"
        },
        {
            "id": "tt0070047",
            "rank": "226",
            "title": "The Exorcist",
            "fullTitle": "The Exorcist (1973)",
            "year": "1973",
            "image": "https://m.media-amazon.com/images/M/MV5BYWFlZGY2NDktY2ZjOS00ZWNkLTg0ZDAtZDY4MTM1ODU4ZjljXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "William Friedkin (dir.), Ellen Burstyn, Max von Sydow",
            "imDbRating": "8.0",
            "imDbRatingCount": "398041"
        },
        {
            "id": "tt0036868",
            "rank": "227",
            "title": "The Best Years of Our Lives",
            "fullTitle": "The Best Years of Our Lives (1946)",
            "year": "1946",
            "image": "https://m.media-amazon.com/images/M/MV5BY2RmNTRjYzctODI4Ni00MzQyLWEyNTAtNjU0N2JkMTNhNjJkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "William Wyler (dir.), Myrna Loy, Dana Andrews",
            "imDbRating": "8.0",
            "imDbRatingCount": "64064"
        },
        {
            "id": "tt0317705",
            "rank": "228",
            "title": "The Incredibles",
            "fullTitle": "The Incredibles (2004)",
            "year": "2004",
            "image": "https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Brad Bird (dir.), Craig T. Nelson, Samuel L. Jackson",
            "imDbRating": "8.0",
            "imDbRatingCount": "721906"
        },
        {
            "id": "tt0035446",
            "rank": "229",
            "title": "To Be or Not to Be",
            "fullTitle": "To Be or Not to Be (1942)",
            "year": "1942",
            "image": "https://m.media-amazon.com/images/M/MV5BODZlOGI5ZjYtN2UwNy00OGY0LTgxY2UtNDZhMzBkN2EyZmIyXkEyXkFqcGdeQXVyNTgyNTA4MjM@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ernst Lubitsch (dir.), Carole Lombard, Jack Benny",
            "imDbRating": "8.0",
            "imDbRatingCount": "36730"
        },
        {
            "id": "tt0058946",
            "rank": "230",
            "title": "The Battle of Algiers",
            "fullTitle": "The Battle of Algiers (1966)",
            "year": "1966",
            "image": "https://m.media-amazon.com/images/M/MV5BN2M4YTA4ZTEtN2EyNy00YTlmLWE4YzYtYjYyYjRkMWM4ZDM0XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Gillo Pontecorvo (dir.), Brahim Hadjadj, Jean Martin",
            "imDbRating": "8.0",
            "imDbRatingCount": "59750"
        },
        {
            "id": "tt0032551",
            "rank": "231",
            "title": "The Grapes of Wrath",
            "fullTitle": "The Grapes of Wrath (1940)",
            "year": "1940",
            "image": "https://m.media-amazon.com/images/M/MV5BNzJiOGI2MjctYjUyMS00ZjkzLWE2ZmUtOTg4NTZkOTNhZDc1L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "John Ford (dir.), Henry Fonda, Jane Darwell",
            "imDbRating": "8.0",
            "imDbRatingCount": "92639"
        },
        {
            "id": "tt0032976",
            "rank": "232",
            "title": "Rebecca",
            "fullTitle": "Rebecca (1940)",
            "year": "1940",
            "image": "https://m.media-amazon.com/images/M/MV5BYTcxYWExOTMtMWFmYy00ZjgzLWI0YjktNWEzYzJkZTg0NDdmL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Alfred Hitchcock (dir.), Laurence Olivier, Joan Fontaine",
            "imDbRating": "8.0",
            "imDbRatingCount": "136162"
        },
        {
            "id": "tt1028532",
            "rank": "233",
            "title": "Hachi: A Dog's Tale",
            "fullTitle": "Hachi: A Dog's Tale (2009)",
            "year": "2009",
            "image": "https://m.media-amazon.com/images/M/MV5BNzE4NDg5OWMtMzg3NC00ZDRjLTllMDMtZTRjNWZmNjBmMGZlXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Lasse Hallström (dir.), Richard Gere, Joan Allen",
            "imDbRating": "8.0",
            "imDbRatingCount": "281095"
        },
        {
            "id": "tt0061512",
            "rank": "234",
            "title": "Cool Hand Luke",
            "fullTitle": "Cool Hand Luke (1967)",
            "year": "1967",
            "image": "https://m.media-amazon.com/images/M/MV5BOWFlNzZhYmYtYTI5YS00MDQyLWIyNTUtNTRjMWUwNTEzNjA0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Stuart Rosenberg (dir.), Paul Newman, George Kennedy",
            "imDbRating": "8.0",
            "imDbRatingCount": "175847"
        },
        {
            "id": "tt0245712",
            "rank": "235",
            "title": "Amores perros",
            "fullTitle": "Amores perros (2000)",
            "year": "2000",
            "image": "https://m.media-amazon.com/images/M/MV5BZjUxNmEwOGItMTBmYi00MWQ1LWExY2MtNDUxMjI0OWM4M2NiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Alejandro G. Iñárritu (dir.), Emilio Echevarría, Gael García Bernal",
            "imDbRating": "8.0",
            "imDbRatingCount": "238810"
        },
        {
            "id": "tt0325980",
            "rank": "236",
            "title": "Pirates of the Caribbean: The Curse of the Black Pearl",
            "fullTitle": "Pirates of the Caribbean: The Curse of the Black Pearl (2003)",
            "year": "2003",
            "image": "https://m.media-amazon.com/images/M/MV5BNGYyZGM5MGMtYTY2Ni00M2Y1LWIzNjQtYWUzM2VlNGVhMDNhXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Gore Verbinski (dir.), Johnny Depp, Geoffrey Rush",
            "imDbRating": "8.0",
            "imDbRatingCount": "1108153"
        },
        {
            "id": "tt0113247",
            "rank": "237",
            "title": "La Haine",
            "fullTitle": "La Haine (1995)",
            "year": "1995",
            "image": "https://m.media-amazon.com/images/M/MV5BOTQxOGU0OWUtMzExYy00ZjIxLWJmMzAtNTI1Y2YxYTMxN2RkXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Mathieu Kassovitz (dir.), Vincent Cassel, Hubert Koundé",
            "imDbRating": "8.0",
            "imDbRatingCount": "170673"
        },
        {
            "id": "tt0053198",
            "rank": "238",
            "title": "The 400 Blows",
            "fullTitle": "The 400 Blows (1959)",
            "year": "1959",
            "image": "https://m.media-amazon.com/images/M/MV5BYTQ4MjA4NmYtYjRhNi00MTEwLTg0NjgtNjk3ODJlZGU4NjRkL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.7313_AL_.jpg",
            "crew": "François Truffaut (dir.), Jean-Pierre Léaud, Albert Rémy",
            "imDbRating": "8.0",
            "imDbRatingCount": "116734"
        },
        {
            "id": "tt0060827",
            "rank": "239",
            "title": "Persona",
            "fullTitle": "Persona (1966)",
            "year": "1966",
            "image": "https://m.media-amazon.com/images/M/MV5BYmFlOTcxMWUtZTMzMi00NWIyLTkwOTEtNjIxNmViNzc2Yzc1XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ingmar Bergman (dir.), Bibi Andersson, Liv Ullmann",
            "imDbRating": "8.0",
            "imDbRatingCount": "117204"
        },
        {
            "id": "tt0476735",
            "rank": "240",
            "title": "My Father and My Son",
            "fullTitle": "My Father and My Son (2005)",
            "year": "2005",
            "image": "https://m.media-amazon.com/images/M/MV5BNjAzMzEwYzctNjc1MC00Nzg5LWFmMGItMTgzYmMyNTY2OTQ4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Cagan Irmak (dir.), Çetin Tekindor, Fikret Kuskan",
            "imDbRating": "8.0",
            "imDbRatingCount": "86217"
        },
        {
            "id": "tt0025316",
            "rank": "241",
            "title": "It Happened One Night",
            "fullTitle": "It Happened One Night (1934)",
            "year": "1934",
            "image": "https://m.media-amazon.com/images/M/MV5BYzJmMWE5NjAtNWMyZS00NmFiLWIwMDgtZDE2NzczYWFhNzIzXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Frank Capra (dir.), Clark Gable, Claudette Colbert",
            "imDbRating": "8.0",
            "imDbRatingCount": "103210"
        },
        {
            "id": "tt0079470",
            "rank": "242",
            "title": "Life of Brian",
            "fullTitle": "Life of Brian (1979)",
            "year": "1979",
            "image": "https://m.media-amazon.com/images/M/MV5BMDA1ZWI4ZDItOTRlYi00OTUxLWFlNWQtMzM5NDI0YjA4ZGI2XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Terry Jones (dir.), Graham Chapman, John Cleese",
            "imDbRating": "8.0",
            "imDbRatingCount": "395905"
        },
        {
            "id": "tt0059742",
            "rank": "243",
            "title": "The Sound of Music",
            "fullTitle": "The Sound of Music (1965)",
            "year": "1965",
            "image": "https://m.media-amazon.com/images/M/MV5BODIxNjhkYjEtYzUyMi00YTNjLWE1YjktNjAyY2I2MWNkNmNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Robert Wise (dir.), Julie Andrews, Christopher Plummer",
            "imDbRating": "8.0",
            "imDbRatingCount": "230519"
        },
        {
            "id": "tt4016934",
            "rank": "244",
            "title": "The Handmaiden",
            "fullTitle": "The Handmaiden (2016)",
            "year": "2016",
            "image": "https://m.media-amazon.com/images/M/MV5BNDJhYTk2MTctZmVmOS00OTViLTgxNjQtMzQxOTRiMDdmNGRjXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_Ratio0.7015_AL_.jpg",
            "crew": "Park Chan-wook (dir.), Kim Min-hee, Ha Jung-woo",
            "imDbRating": "8.0",
            "imDbRatingCount": "142175"
        },
        {
            "id": "tt0071411",
            "rank": "245",
            "title": "Dersu Uzala",
            "fullTitle": "Dersu Uzala (1975)",
            "year": "1975",
            "image": "https://m.media-amazon.com/images/M/MV5BYWY0OWJlZTgtMWUzNy00MGJhLTk5YzQtNmY5MDEwOTIxNjMyXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Akira Kurosawa (dir.), Maksim Munzuk, Yuriy Solomin",
            "imDbRating": "8.0",
            "imDbRatingCount": "29107"
        },
        {
            "id": "tt0103639",
            "rank": "246",
            "title": "Aladdin",
            "fullTitle": "Aladdin (1992)",
            "year": "1992",
            "image": "https://m.media-amazon.com/images/M/MV5BY2Q2NDI1MjUtM2Q5ZS00MTFlLWJiYWEtNTZmNjQ3OGJkZDgxXkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Ron Clements (dir.), Scott Weinger, Robin Williams",
            "imDbRating": "8.0",
            "imDbRatingCount": "410700"
        },
        {
            "id": "tt0083987",
            "rank": "247",
            "title": "Gandhi",
            "fullTitle": "Gandhi (1982)",
            "year": "1982",
            "image": "https://m.media-amazon.com/images/M/MV5BMzJiZDRmOWUtYjE2MS00Mjc1LTg1ZDYtNTQxYWJkZTg1OTM4XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Richard Attenborough (dir.), Ben Kingsley, John Gielgud",
            "imDbRating": "8.0",
            "imDbRatingCount": "229931"
        },
        {
            "id": "tt15097216",
            "rank": "248",
            "title": "Jai Bhim",
            "fullTitle": "Jai Bhim (2021)",
            "year": "2021",
            "image": "https://m.media-amazon.com/images/M/MV5BOTM0NWFjNGYtNjExMS00ZTZlLWFiYmMtZmU4ZjZkMmMxZTNjXkEyXkFqcGdeQXVyODEyNjEwMDk@._V1_Ratio0.7910_AL_.jpg",
            "crew": "T.J. Gnanavel (dir.), Suriya, Lijo Mol Jose",
            "imDbRating": "8.0",
            "imDbRatingCount": "193823"
        },
        {
            "id": "tt1454029",
            "rank": "249",
            "title": "The Help",
            "fullTitle": "The Help (2011)",
            "year": "2011",
            "image": "https://m.media-amazon.com/images/M/MV5BMTM5OTMyMjIxOV5BMl5BanBnXkFtZTcwNzU4MjIwNQ@@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Tate Taylor (dir.), Emma Stone, Viola Davis",
            "imDbRating": "8.0",
            "imDbRatingCount": "454015"
        },
        {
            "id": "tt0101414",
            "rank": "250",
            "title": "Beauty and the Beast",
            "fullTitle": "Beauty and the Beast (1991)",
            "year": "1991",
            "image": "https://m.media-amazon.com/images/M/MV5BMzE5MDM1NDktY2I0OC00YWI5LTk2NzUtYjczNDczOWQxYjM0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_Ratio0.6716_AL_.jpg",
            "crew": "Gary Trousdale (dir.), Paige O'Hara, Robby Benson",
            "imDbRating": "8.0",
            "imDbRatingCount": "449434"
        }
    ],
    "errorMessage": ""
}
"""
