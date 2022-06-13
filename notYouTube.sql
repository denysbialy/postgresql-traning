CREATE TABLE users_notyoutube (
    user_id bigserial PRIMARY KEY,
    username VARCHAR(56) NOT NULL CHECK(username <> ''),
    email VARCHAR(124) NOT NULL UNIQUE CONSTRAINT "VALID EMAIL" CHECK (
        email ~ '^[A-Za-z0-9]\w{0,}@[a-z]{1,}\.[a-z]{1,}$'
    )
);
CREATE TABLE video (
    video_id bigserial PRIMARY KEY,
    user_id int NOT NULL REFERENCES users_notyoutube,
    video_name VARCHAR(256) NOT NULL
);
CREATE TYPE users_mark AS ENUM ('like', 'dislike');
CREATE TABLE marks (
    video_id int CONSTRAINT "MARKS VIDEOS" REFERENCES video,
    user_id int REFERENCES users_notyoutube,
    mark users_mark NOT NULL,
    PRIMARY KEY (video_id, user_id)
);
CREATE TABLE comments (
    comments_id bigserial PRIMARY KEY,
    video_id int NOT NULL CONSTRAINT "COMMENT VIDEO" REFERENCES video,
    user_id int NOT NULL REFERENCES users_notyoutube,
    comments text NOT NULL CHECK(comments <> '')
);
DROP TABLE comments;