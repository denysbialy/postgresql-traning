INSERT INTO users_notyoutube (username, email)
VALUES ('tns', 'tns@tns.tns');
INSERT INTO video(user_id, video_name)
VALUES 
(3, 'Hello Database'),
(3, 'Hello World'),
(3, 'Hello JavaScript'),
(3, 'Hello Python'),
(2, 'Hello C++'),
(1, 'Hello React'),
(2, 'Hello React Native');

INSERT INTO marks (video_id, user_id, mark)
VALUES
(3, 2, 'like'),
(6, 4, 'dislike'),
(6, 3, 'dislike'),
(6, 1, 'dislike'),
(5, 2, 'like');

INSERT INTO comments (video_id, user_id, comments)
VALUES
(3, 1, 'lorem ipsum 1'),
(3, 2, 'lorem ipsum 2'),
(3, 3, 'lorem ipsum 3'),
(3, 3, 'lorem ipsum 4');