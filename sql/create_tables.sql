use nhldrafts;

# create tables

DROP TABLE IF EXISTS Franchises;
CREATE TABLE Franchises (
	TeamID SMALLINT AUTO_INCREMENT PRIMARY KEY,
    FranchiseID SMALLINT,
    Acronym VARCHAR(4),
    TeamName VARCHAR(64)
);

DROP TABLE IF EXISTS PlayerSeason;
CREATE TABLE PlayerSeason (
PlayerSeasonID INT AUTO_INCREMENT PRIMARY KEY,
Player VARCHAR(128),
Season INT,
Team INT
);

DROP TABLE IF EXISTS PlayoffFinals;
CREATE TABLE PlayoffFinals (
FinalsID INT AUTO_INCREMENT PRIMARY KEY,
Season INT,
Champion INT,
RunnerUp INT
);

DROP TABLE IF EXISTS SeasonConnection;
CREATE TABLE SeasonConnection (
SeasonID INT AUTO_INCREMENT PRIMARY KEY,
Season1 INT,
Season2 VARCHAR(10)
);


DROP TABLE IF EXISTS Drafts;
CREATE TABLE Drafts (
DraftID INT AUTO_INCREMENT PRIMARY KEY,
DraftPosition INT,
Team INT,
Player VARCHAR(128),
Season INT
);
