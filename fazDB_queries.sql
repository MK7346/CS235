CREATE TABLE `team` (
  `team_id` int,
  `name` varchar(50),
  `coach` varchar(50),
  `city` varchar(50),
  `stadium` varchar(50),
  PRIMARY KEY (`team_id`)
);

CREATE TABLE `match` (
  `match_id` int,
  `team_home` int,
  `team_away` int,
  `home_score` int,
  `away_score` int,
  `date` date,
  PRIMARY KEY (`match_id`),
  FOREIGN KEY (`team_home`) REFERENCES `team`(`team_id`)
);

CREATE TABLE `player` (
  `player_id` int,
  `name` varchar(50),
  `DoB` date,
  `start_year` varchar(50),
  `shirt_no` int,
  `team_id` int,
  PRIMARY KEY (`player_id`),
  FOREIGN KEY (`team_id`) REFERENCES `team`(`team_id`)
);

CREATE TABLE `match_player` (
  `position` int,
  `player_id` int,
  `red_card` int,
  `yellow_card` int,
  `no_goals` int,
  `sub_id` int,
  `time` int,
  `match_id` int,
  PRIMARY KEY (`match_id`,`player_id`),
  FOREIGN KEY (`player_id`) REFERENCES `player`(`player_id`),
  FOREIGN KEY (`match_id`) REFERENCES `match`(`match_id`)
);

CREATE TABLE `referee` (
  `referee_id` int,
  `name` varchar(50),
  `DoB` date,
  `Exp_years` int,
  PRIMARY KEY (`referee_id`)
);

CREATE TABLE `role` (
  `match_id` int,
  `referee_id` int,
  `is_main` varchar(50),
  PRIMARY KEY (`match_id`, `referee_id`),
  FOREIGN KEY (`match_id`) REFERENCES `match`(`match_id`),
  FOREIGN KEY (`referee_id`) REFERENCES `referee`(`referee_id`)
);
