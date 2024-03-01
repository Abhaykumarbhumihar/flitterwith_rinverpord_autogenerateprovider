import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'player_notifer.g.dart';

@Riverpod(keepAlive: true)
class PlayerNotifier extends _$PlayerNotifier {
  List<Map<String, String>> cricketPlayers = [
    {'name': 'Virat Kohli', 'country': 'India'},
    {'name': 'Kane Williamson', 'country': 'New Zealand'},
    {'name': 'Joe Root', 'country': 'England'},
    {'name': 'Steve Smith', 'country': 'Australia'},
    {'name': 'Babar Azam', 'country': 'Pakistan'},
    {'name': 'Shakib Al Hasan', 'country': 'Bangladesh'},
    {'name': 'Quinton de Kock', 'country': 'South Africa'},
    {'name': 'Kane Richardson', 'country': 'Australia'},
    {'name': 'Kagiso Rabada', 'country': 'South Africa'},
    {'name': 'Faf du Plessis', 'country': 'South Africa'},
    {'name': 'David Warner', 'country': 'Australia'},
    {'name': 'Mitchell Starc', 'country': 'Australia'},
    {'name': 'Chris Gayle', 'country': 'West Indies'},
    {'name': 'Kieron Pollard', 'country': 'West Indies'},
    {'name': 'Dwayne Bravo', 'country': 'West Indies'},
    {'name': 'Jason Holder', 'country': 'West Indies'},
    {'name': 'Mohammed Shami', 'country': 'India'},
    {'name': 'Kuldeep Yadav', 'country': 'India'},
    {'name': 'Ravindra Jadeja', 'country': 'India'},
    {'name': 'Hardik Pandya', 'country': 'India'},
    {'name': 'Jasprit Bumrah', 'country': 'India'},
    {'name': 'Ross Taylor', 'country': 'New Zealand'},
    {'name': 'Martin Guptill', 'country': 'New Zealand'},
    {'name': 'Tom Latham', 'country': 'New Zealand'},
    {'name': 'Glenn Maxwell', 'country': 'Australia'},
    {'name': 'Aaron Finch', 'country': 'Australia'},
    {'name': 'Rashid Khan', 'country': 'Afghanistan'},
    {'name': 'Mujeeb Ur Rahman', 'country': 'Afghanistan'},
    {'name': 'Mohammad Nabi', 'country': 'Afghanistan'},
    {'name': 'Rahmat Shah', 'country': 'Afghanistan'},
    {'name': 'Hazratullah Zazai', 'country': 'Afghanistan'},
    {'name': 'Imran Tahir', 'country': 'South Africa'},
    {'name': 'Hashim Amla', 'country': 'South Africa'},
    {'name': 'Quinton de Kock', 'country': 'South Africa'},
    {'name': 'Jean-Paul Duminy', 'country': 'South Africa'},
    {'name': 'Tabraiz Shamsi', 'country': 'South Africa'},
    {'name': 'Shikhar Dhawan', 'country': 'India'},
    {'name': 'Rohit Sharma', 'country': 'India'},
    {'name': 'Lokesh Rahul', 'country': 'India'},
    {'name': 'Yuzvendra Chahal', 'country': 'India'},
    {'name': 'Mohammed Siraj', 'country': 'India'},
    {'name': 'Trent Boult', 'country': 'New Zealand'},
    {'name': 'Tim Southee', 'country': 'New Zealand'},
    {'name': 'Lockie Ferguson', 'country': 'New Zealand'},
    {'name': 'Matt Henry', 'country': 'New Zealand'},
    {'name': 'Adam Zampa', 'country': 'Australia'},
    {'name': 'Pat Cummins', 'country': 'Australia'},
    {'name': 'Mitchell Marsh', 'country': 'Australia'},
    {'name': 'Usman Khawaja', 'country': 'Australia'},
    {'name': 'Travis Head', 'country': 'Australia'},
  ];

  @override
  List<Map<String, String>> build() {
    return cricketPlayers;
  }

  filerPlayer(String playerName) {
    List<Map<String, String>> resultList = [];
    if (playerName.isEmpty) {
      resultList = cricketPlayers;
    } else {
      resultList = state
          .where((element) => element['name']
              .toString()
              .toLowerCase()
              .contains(playerName.toLowerCase()))
          .toList();
    }
    state = resultList;
  }
}
