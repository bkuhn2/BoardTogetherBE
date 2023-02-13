
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]


<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/board-together">
    <img src="https://st3.depositphotos.com/20363444/31955/i/1600/depositphotos_319556144-stock-photo-bored-pensive-friends-sitting-together.jpg" alt="Logo">
  </a>

  <h1 align="center">Board (games) Together!</h3>

  <h3 align="center">
    Board Game Swap app
    <br />
  </h3>
</div>

<!-- TABLE OF CONTENTS -->
<h3>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#heroku-information">Heroku Information</a></li>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#database-schema">Database Schema</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
          <li><a href="#repositories">Repositories</a></li>
          <li><a href="#back-end-repository-installation">Back-End Repository Installation</a></li>
          <li><a href="#available-endpoints">Available Endpoints</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</li>
    <li><a href="#license">License</a></li></a>
  </ol>
</h3>

<!-- ABOUT THE PROJECT -->
## About The Project

![Product Demo](lib/assets/demo.gif)

Board Together is a board game platform that allows users to create their own profiles and list their favorite board games. It utilizes GraphQL and PostgreSQL to create a seamless user experience and features API calls to the popular Board Game Atlas API to provide up-to-date information about various board games. With this platform, board game enthusiasts can keep track of their collection, discover new games to play, and connect with others who share their interests. The platform is easy to use and accessible to anyone who loves board games or wants to learn more about them.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Heroku Information -->
### Heroku Information

<b>To start, visit the link below and login or register:</b>

* <a href="#">To be deployed</a><br>

<b>The back-end application is hosted separately at the link below, although it offers no end-user interactions:</b>

* <a href="#"></a><br>

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Built With -->
### Built With

Rails backend, React front end (etc)

<img src="public/tech-stack.png" alt="Tech-Stack" width="80%" height="80%">

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Database Schema -->
### Database Schema

<img src="public/Schema 2-6-23.png" alt="Database-Schema" width="90%" height="90%">

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- GETTING STARTED -->
## Getting Started

Bacon ipsum dolor amet doner filet mignon flank pork ham kielbasa chicken jerky sirloin short ribs rump turducken. Kevin leberkas andouille, alcatra bresaola burgdoggen cow ball tip shankle. Meatloaf prosciutto bacon beef pork belly, boudin ball tip cupim kielbasa turducken pork loin landjaeger brisket buffalo. Short loin brisket drumstick salami cow shank pastrami pig bacon alcatra frankfurter picanha ham hock spare ribs tenderloin. T-bone brisket sausage pork loin, shank pancetta meatloaf jerky swine rump shankle.

<!-- Repositories -->
### Repositories

* <b>Front-End:</b> https://github.com/board-together/FE-Board-Together <br />
* <b>Back-End:</b> https://github.com/board-together/BE-Board-Together <br />

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Back-End Repository Installation -->
### Back-End Repository Installation
<b>Gem Installation</b>
* `bundle install`


<b>Required API keys</b>:
* Sign up for a <a href="https://www.boardgameatlas.com/api/docs/apps">Board Game Atlas client ID</a>
<li> In your <code>application.yml</code> file:</li>
          <ul> - Assign your Board Game Atlas api key to a variable (this will need to be passed in as query params with key <code>client_id</code>)</ul>


<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Available Endpoints -->
## Available Endpoints

Endpoints are run through GraphQL queries. Expand a section below for query requests and expected responses. 

### User Queries
<details close>
  <summary>Find All Users</summary><br>

Returns a list of all current users in database.<br>

```query
query {
    users {
        id
        username
    }  
}
```

Expected Response:

 ```json
{
    "data": {
        "users": [
            {
                "id": 1,
                "username": "Pickafloof"
            },
            {
                "id": 2,
                "username": "Floofything"
            }
        ]  
    }
}
```
</details><br>

<details close>
  <summary>Find a Specific User</summary><br>

Return information about a specific user in the database.<br>

```query
query {
  user(username: "emerita") {
    id
    username
    userGames {
      id
      userId
      gameId
      status
      borrowerId
      game {
        id
        boardGameAtlasId
        url
        name
        yearPublished
        minPlayers
        maxPlayers
        minPlaytime
        maxPlaytime
        minAge
        description
        thumbUrl
        imageUrl
      }
    }
    borrowedGames {
      id	
      userId
      gameId
      status
      borrowerId
      game {
        id
        boardGameAtlasId
        url
        name
        yearPublished
        minPlayers
        maxPlayers
        minPlaytime
        maxPlaytime
        minAge
        description
        thumbUrl
        imageUrl
      }
    }
  }
}
```

Expected Response:

 ```json
{
  "data": {
    "user": {
      "id": "1",
      "username": "emerita",
      "userGames": [
        {
          "id": "1",
          "userId": 1,
          "gameId": 1,
          "status": 0,
          "borrowerId": 1,
          "game": {
            "id": "1",
            "boardGameAtlasId": "abd6a0",
            "url": "http://keeling.net/jae.dach",
            "name": "Kirby's Epic Yarn",
            "yearPublished": 1998,
            "minPlayers": 1,
            "maxPlayers": 13,
            "minPlaytime": 19,
            "maxPlaytime": 39,
            "minAge": 1,
            "description": "Commodi tempora dolorem. Placeat nihil sunt. Ut perspiciatis qui.",
            "thumbUrl": "http://mcclure.org/bertram.moen",
            "imageUrl": "https://loremflickr.com/300/300"
          }
        }
      ],
      "borrowedGames": [
        {
          "id": "1",
          "userId": 1,
          "gameId": 1,
          "status": 0,
          "borrowerId": 1,
          "game": {
            "id": "1",
            "boardGameAtlasId": "abd6a0",
            "url": "http://keeling.net/jae.dach",
            "name": "Kirby's Epic Yarn",
            "yearPublished": 1998,
            "minPlayers": 1,
            "maxPlayers": 13,
            "minPlaytime": 19,
            "maxPlaytime": 39,
            "minAge": 1,
            "description": "Commodi tempora dolorem. Placeat nihil sunt. Ut perspiciatis qui.",
            "thumbUrl": "http://mcclure.org/bertram.moen",
            "imageUrl": "https://loremflickr.com/300/300"
          }
        },
        {
          "id": "2",
          "userId": 2,
          "gameId": 2,
          "status": 0,
          "borrowerId": 1,
          "game": {
            "id": "2",
            "boardGameAtlasId": "ee0b20",
            "url": "http://hane.io/cecil",
            "name": "Team Fortress 2",
            "yearPublished": 2016,
            "minPlayers": 2,
            "maxPlayers": 7,
            "minPlaytime": 26,
            "maxPlaytime": 4,
            "minAge": 6,
            "description": "Nobis fugiat voluptatem. Et quasi officia. Ut officiis doloremque.",
            "thumbUrl": "http://glover-stoltenberg.biz/monique",
            "imageUrl": "https://loremflickr.com/300/300"
          }
        },
        {
          "id": "3",
          "userId": 3,
          "gameId": 3,
          "status": 0,
          "borrowerId": 1,
          "game": {
            "id": "3",
            "boardGameAtlasId": "85c360",
            "url": "http://treutel.name/adella",
            "name": "Animal Crossing: New Leaf",
            "yearPublished": 1929,
            "minPlayers": 1,
            "maxPlayers": 13,
            "minPlaytime": 17,
            "maxPlaytime": 21,
            "minAge": 7,
            "description": "Ut consectetur sed. Qui alias iusto. Iusto autem aut.",
            "thumbUrl": "http://hilpert.io/robt",
            "imageUrl": "https://loremflickr.com/300/300"
          }
        },
        {
          "id": "6",
          "userId": 6,
          "gameId": 6,
          "status": 0,
          "borrowerId": 1,
          "game": {
            "id": "6",
            "boardGameAtlasId": "35999c",
            "url": "http://glover-mohr.com/alaina",
            "name": "Luigi's Mansion",
            "yearPublished": 2002,
            "minPlayers": 2,
            "maxPlayers": 17,
            "minPlaytime": 6,
            "maxPlaytime": 29,
            "minAge": 11,
            "description": "Sed ea nostrum. Porro doloremque nemo. Est impedit minima.",
            "thumbUrl": "http://stiedemann-moore.org/victor_koelpin",
            "imageUrl": "https://loremflickr.com/300/300"
          }
        },
        {
          "id": "10",
          "userId": 10,
          "gameId": 10,
          "status": 0,
          "borrowerId": 1,
          "game": {
            "id": "10",
            "boardGameAtlasId": "a1d70a",
            "url": "http://mosciski.com/zachary_nolan",
            "name": "Half-Life: Opposing Force",
            "yearPublished": 1987,
            "minPlayers": 2,
            "maxPlayers": 5,
            "minPlaytime": 20,
            "maxPlaytime": 4,
            "minAge": 3,
            "description": "Officiis magni dolor. Voluptas qui necessitatibus. Voluptatem dicta accusantium.",
            "thumbUrl": "http://langworth.info/florentino",
            "imageUrl": "https://loremflickr.com/300/300"
          }
        }
      ]
    }
  }
}
```
</details><br>

<details close>
  <summary>Create a New User</summary><br>

Create a new user in the database.<br>

```query
mutation {
    createUser(input:{username: "Foofything"}) {
        user {
            id
            username
        }
        errors
    }
}
```

Expected Response:

 ```json
{
    "data": {
        "user": {
            "id": "11",
            "username": "Floofything"
        },
        "errors": []
    }
}
```
</details><br>

<details close>
  <summary>Delete a User</summary><br>

Deletes a user in the database.<br>

```query
mutation {
  deleteUser(input: {id: 2}) {
      id
      errors
   }
}
```

Expected Response:

 ```json
{
  "data": {
    "deleteUser": {
      "id": "3",
      "errors": []
    }
  }
}
```
</details><br>

### User Games

<details close>
  <summary>Create a User Game</summary><br>

Create a UserGame in the database. <br>

```query
mutation {
  createUserGame(input: {
    userId: 4,
    boardGameAtlasId: "OIXt3DmJU0",
    url: "https://www.boardgameatlas.com/game/OIXt3DmJU0/catan",
    name: "Catan",
    yearPublished: "1995",
    minPlayers: "3",
    maxPlayers: "4",
    minPlaytime: "45",
    maxPlaytime: "90",
    minAge: "10",
    description: "settlers of catan",
    thumbUrl: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg",
    imageUrl: "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg"
  }) {
    user {
      id
      username
      userGames {
        id
        userId
        gameId
        status
        borrowerId
        game {
          id  
          boardGameAtlasId
          url
          name
          yearPublished
          minPlayers
          maxPlayers
          minPlaytime
          maxPlaytime
          minAge
          description
          thumbUrl
          imageUrl
        }
      }
    }
  }
}
```

Expected Response:

 ```json
{
  "data": {
    "createUserGame": {
      "user": {
        "id": "4",
        "username": "fred.ferry",
        "userGames": [
          {
            "id": "4",
            "userId": 4,
            "gameId": 4,
            "status": 0,
            "borrowerId": 1,
            "game": {
              "id": "4",
              "boardGameAtlasId": "0a23b7",
              "url": "http://parker.name/jonna.lakin",
              "name": "Dota 2",
              "yearPublished": 1922,
              "minPlayers": 2,
              "maxPlayers": 8,
              "minPlaytime": 5,
              "maxPlaytime": 43,
              "minAge": 7,
              "description": "Placeat voluptas vero. Autem et voluptatem. Maxime est ut.",
              "thumbUrl": "http://schmeler.name/elia.beier",
              "imageUrl": "https://loremflickr.com/300/300"
            }
          },
          {
            "id": "11",
            "userId": 4,
            "gameId": 11,
            "status": 0,
            "borrowerId": null,
            "game": {
              "id": "11",
              "boardGameAtlasId": "OIXt3DmJU0",
              "url": "https://www.boardgameatlas.com/game/OIXt3DmJU0/catan",
              "name": "Catan",
              "yearPublished": 1995,
              "minPlayers": 3,
              "maxPlayers": 4,
              "minPlaytime": 45,
              "maxPlaytime": 90,
              "minAge": 10,
              "description": "settlers of catan",
              "thumbUrl": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg",
              "imageUrl": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg"
            }
          }
        ]
      }
    }
  }
}
```
</details><br>

<details close>
  <summary>Update a UserGame</summary><br>

Update a UserGame in the database. Can be used for borrowing a game, returning a game and changing a game status to private. <br>

```query
mutation {
    updateUserGame(input: { 
      id: 7, 
      borrowerId: 4, 
      status: 1 }) 
    {
    userGame {
      id
      borrowerId
      status
    }
      errors
    }
  }
```

Expected Response:

 ```json
{
  "data": {
    "updateUserGame": {
      "userGame": {
        "id": "7",
        "borrowerId": 4,
        "status": 1
      },
      "errors": []
    }
  }
}
```
</details><br>

<details close>
  <summary>Remove Game and User Association</summary><br>

Delete a game from a user's owned games list.<br>
- NOTE: id is the UserGame id
```query
mutation {
          deleteUserGame(input :{
              id: 1
              }) {
              id
          }
      }
```

Expected Response:

 ```json
{
    "data": {
        "deleteUserGame": {
            "id": "1"
        }
    }
}
```
</details><br>

### Search Queries

<details close>
  <summary>Search for Games</summary><br>

Search for a game matching user input.<br>

```query
query {
    searchGames(name: "Catan") {
        boardGameAtlasId
        url
        name
        yearPublished
        minPlayers
        maxPlayers
        minPlaytime
        maxPlaytime
        minAge
        description
        thumbUrl
        imageUrl
    }
}
```

Expected Response:

 ```json
{
    "data": {
        "searchGames": [
            {
                "boardGameAtlasId": "OIXt3DmJU0",
                "url": "https://www.boardgameatlas.com/game/OIXt3DmJU0/catan",
                "name": "Catan",
                "yearPublished": 1995,
                "minPlayers": 3,
                "maxPlayers": 4,
                "minPlaytime": 45,
                "maxPlaytime": 90,
                "minAge": 10,
                "description": "<p>The women and men of your expedition build the first two settlements. Fortunately, the land is rich in natural resources. You build roads and new settlements that eventually become cities. Will you succeed in gaining supremacy on Catan? Barter trade dominates the scene. Some resources you have in abundance, other resources are scarce. Ore for wool, brick for lumber - you trade according to what is needed for your current building projects. Proceed strategically! If you found your settlements in the right places and skillfully trade your resources, then the odds will be in your favor. But your opponents are smart too.</p>\r\n<p>To begin the game, we build the game board using hexagonal terrain tiles. Catan is born - a beautiful island with mountains, pastures, hills, fields, and forests, surrounded by the sea.</p>\r\n<p>Each of us places two small houses on spaces where three terrain hexes meet. They are our starting settlements.</p>\r\n<p>And so it begins. I roll two dice. An “11”! Each terrain hex is marked with a die roll number. Each player who owns a settlement adjacent to a terrain hex marked with the number rolled receives a resource produced by this hex. Hills produce brick, forests produce lumber, mountains produce ore, fields produce grain, and pastures produce wool.</p>\r\n<p>We use these resources to expand across Catan: we build roads and new settlements, or we upgrade our existing settlements to cities. For example, a road costs 1 brick and 1 lumber. If we do not have the necessary resources, we can acquire them by trading with our opponents.</p>\r\n<p>Each settlement is worth 1 victory point and each city is worth 2 victory points. If you expand cleverly, you may be the first player to reach 10 victory points and thus win the game!</p>",
                "thumbUrl": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg",
                "imageUrl": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1629324722072.jpg"
            },
            {
                "boardGameAtlasId": "E5TYKwLTf0",
                "name": "Catan: Cities & Knights",
                "yearPublished": 1998,
                "minPlayers": 3,
                "maxPlayers": 4,
                "minPlaytime": 60,
                "maxPlaytime": 90,
                "minAge": 10,
                "description": "Dark clouds gather over the once peaceful landscape. Wild barbarians, lured by Catan’s wealth and power, maneuver to attack. Their massive warships loom against the bright orange horizon. You must be strong! Barbarians attack the weakest targets, and the victim of their onslaught will be the player who contributes the least to the defense of Catan.<br /><br /> Don’t take any chances! Field your knights!<br /><br /> In <b>Catan: Cities &amp; Knights</b> you engage in the defense of Catan and compete to build the three great metropolises of Catan. Each of these magnificent urban centers is even more valuable than a city. They’re also immune to the dangerous barbarians. Invest in city improvements, which you acquire using three commodities of trade: coin, paper, and cloth. If you improve your culture, muster your knights, and enrich your fine cities, you will be the master of the great realm of Catan!<br /><br /><b> Components:</b><br /> 36 Commodity Cards<br /> 54 Progress Cards<br /> 6 Victory Point Cards<br /> 3 Wooden Metropolis Pieces<br /> 1 Wooden Merchant Figure<br /> 1 Custom Event Die<br /> 1 Wooden Barbarian Ship<br /> 24 Wooden Knights<br /> 12 City Walls<br /> 4 Development Flip-Charts<br /> 1 Sea Frame Piece<br /> 1 Rulebook<br />",
                "thumbUrl": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257359245-51DYsPZcYyL.jpg",
                "imageUrl": "https://s3-us-west-1.amazonaws.com/5cc.images/games/uploaded/1559257359245-51DYsPZcYyL.jpg",
            }
        ]
    }
}  }
}
```
</details><br>


[![Run in Postman](https://run.pstmn.io/button.svg)](https://app.getpostman.com/run-collection/25666683-0ebb6dbb-8b11-460e-8585-8adaf17a4211?action=collection%2Ffork&collection-url=entityId%3D25666683-0ebb6dbb-8b11-460e-8585-8adaf17a4211%26entityType%3Dcollection%26workspaceId%3D744a08a3-dcad-44e1-bb68-becc0c7dbc17)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ROADMAP -->
## Roadmap

MVP
* [ ] DO STUFF

Stretch Goals
* [ ] EXTENSINOS

See the [open issues](https://github.com/board-together/BE-Board-Together/issues) for a full list of proposed features (and known issues).

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- CONTACT -->
## Contact

<table>
  <tr>
    <td><img src="https://avatars.githubusercontent.com/u/102780642?s=150&v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/101418582?s=150&v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/60988144?s=150&v=4"></td>
    <td><img src="https://avatars.githubusercontent.com/u/35391349?s=150&v=4"></td>
  </tr>
  <tr>
    <td>Annie Pulzone</td>
    <td>Bryan Keener</td>
    <td>Darby Smith</td>
    <td>Michael Marchand</td>
  </tr>
  <tr>
    <td>
      <a href="https://github.com/ajpulzone">GitHub</a><br>
      <a href="https://www.linkedin.com/in/annie-pulzone/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/bkeener7">GitHub</a><br>
      <a href="https://www.linkedin.com/in/bkeener/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/DarbySmith">GitHub</a><br>
      <a href="https://www.linkedin.com/in/darby-m-smith/">LinkedIn</a>
    </td>
    <td>
      <a href="https://github.com/marchandMD">GitHub</a><br>
      <a href="https://www.linkedin.com/in/mmarchand1/">LinkedIn</a>
    </td>
  </tr>
</table>

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->
## Acknowledgments

Turing School of Software Design: [https://turing.edu/](https://turing.edu/)

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- LICENSE -->
## License

Distributed under the MIT License.

<p align="right">(<a href="#top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/board-together/BE-Board-Together.svg?style=for-the-badge
[contributors-url]: https://github.com/board-together/BE-Board-Together/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/board-together/BE-Board-Together.svg?style=for-the-badge
[forks-url]: https://github.com/board-together/BE-Board-Together/network/members
[stars-shield]: https://img.shields.io/github/stars/board-together/BE-Board-Together.svg?style=for-the-badge
[stars-url]: https://github.com/board-together/BE-Board-Together/stargazers
[issues-shield]: https://img.shields.io/github/issues/board-together/BE-Board-Together.svg?style=for-the-badge
[issues-url]: https://github.com/board-together/BE-Board-Together/issues
[license-shield]: https://img.shields.io/github/license/board-together/BE-Board-Together.svg?style=for-the-badge
[license-url]: https://github.com/board-together/BE-Board-Together/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/othneildrew
