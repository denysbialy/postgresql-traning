CREATE TABLE users_notyoutube (
    id bigserial PRIMARY KEY,
    username VARCHAR(56) NOT NULL CHECK(username <> ''),
    email VARCHAR(124) NOT NULL UNIQUE CONSTRAINT "VALID EMAIL" CHECK (
        email ~ '^[A-Za-z0-9]\w{0,}@[a-z]{1,}\.[a-z]{1,}$'
    )
);
CREATE TABLE video (
    id bigserial PRIMARY KEY,
    user_id int NOT NULL REFERENCES users_notyoutube,
    video_name NOT NULL VARCHAR(256) 
);
CREATE TABLE marks (
    video_id int NOT NULL CONSTRAINT "MARKS VIDEOS" REFERENCES video,
    user_id int NOT NULL REFERENCES users_notyoutube,
    mark text NOT NULL CHECK(mark = 'like' OR mark = 'dislike')
);
CREATE TABLE comments (
    video_id int NOT NULL CONSTRAINT "COMMENT VIDEO" REFERENCES video,
    user_id int NOT NULL REFERENCES users_notyoutube,
    comments text NOT NULL CHECK(comments <> '')
);
ALTER TABLE users_notyoutube RENAME COLUMN id TO user_id;
ALTER TABLE video RENAME COLUMN id TO video_id;