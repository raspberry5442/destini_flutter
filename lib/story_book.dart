import 'episode.dart';

class StoryBook {
  int _episodeNumber = 0;
  List<Episode> _story = [
    Episode(
        episodeTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Episode(
        episodeTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Episode(
        episodeTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Episode(
        episodeTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Episode(
        episodeTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Episode(
        episodeTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

  String getEpisodeTitle() {
    return _story[_episodeNumber].episodeTitle;
  }

  String getChoice1() {
    return _story[_episodeNumber].choice1;
  }

  String getChoice2() {
    return _story[_episodeNumber].choice2;
  }

  void nextEpisode(int choichNumber) {
    if (_episodeNumber == 0 && choichNumber == 1) {
      _episodeNumber = 2;
    } else if (_episodeNumber == 0 && choichNumber == 2) {
      _episodeNumber = 1;
    } else if (_episodeNumber == 2 && choichNumber == 1) {
      _episodeNumber = 5;
    } else if (_episodeNumber == 2 && choichNumber == 2) {
      _episodeNumber = 4;
    } else if (_episodeNumber == 1 && choichNumber == 1) {
      _episodeNumber = 2;
    } else if (_episodeNumber == 1 && choichNumber == 2) {
      _episodeNumber = 3;
    } else if (_episodeNumber == 3 ||
        _episodeNumber == 4 ||
        _episodeNumber == 5) {
      restart();
    }
  }

  void restart() {
    _episodeNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_episodeNumber == 0 || _episodeNumber == 1 || _episodeNumber == 2) {
      return true;
    } else {
      return false;
    }
  }
}
