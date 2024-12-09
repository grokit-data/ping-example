CREATE TABLE IF NOT EXISTS registered_sim (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `start_time` DATETIME NOT NULL,
  `stop_time` DATETIME,
  `end_time` DATETIME,
  `done` INT NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS simulation (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `cid` VARCHAR(255),
  `request_time` DATETIME,
  `paused_time` DATETIME,
  `done` INT NOT NULL DEFAULT 0
);

INSERT INTO simulation (`id`) VALUES (1) ON DUPLICATE KEY UPDATE id=id;