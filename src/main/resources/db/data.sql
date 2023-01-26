insert into user_tb(username, password, email, created_at) values('ssar', '1234', 'ssar@nate.com', now());
insert into user_tb(username, password, email, created_at) values('cos', '1234', 'cos@nate.com', now());

insert into board_tb(title, content, user_id, created_at) values('첫번째 글입니다.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Laudantium voluptatibus quos quibusdam nemo
        reprehenderit! Veritatis commodi repellat ducimus sapiente molestiae, eligendi sint aperiam est corrupti
        repudiandae libero quasi error quos.', 1, now());
insert into board_tb(title, content, user_id, created_at) values('두번째 글입니다.', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Perspiciatis, distinctio? Fugiat, dolorem
        perspiciatis. Distinctio est animi ad culpa sapiente eaque obcaecati consectetur minima, asperiores voluptatibus
        ipsa. Repellat accusamus fugit ducimus.', 1, now());
insert into board_tb(title, content, user_id, created_at) values('세번째 글입니다.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Mollitia in reiciendis molestiae quaerat veritatis,
        soluta nulla recusandae nam? Quaerat nostrum distinctio assumenda corporis asperiores quas mollitia cumque ipsa
        aperiam voluptatibus.', 1, now());
insert into board_tb(title, content, user_id, created_at) values('네번째 글입니다.', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Nisi deserunt voluptates odit, a consequatur nam,
        voluptatibus quidem alias ea amet voluptatem nobis incidunt? Omnis, aliquam aperiam libero adipisci ab dolore!', 1, now());
insert into board_tb(title, content, user_id, created_at) values('다섯번째 글입니다.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Vel aliquam impedit error inventore rerum molestiae
        id, ducimus enim dicta quas velit quisquam minima facilis sit. Neque assumenda odio excepturi asperiores!', 1, now());
insert into board_tb(title, content, user_id, created_at) values('여섯번째 글입니다.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Facilis, ipsa porro quo nemo iusto cupiditate, at
        magni eaque ipsam atque, tempore expedita dicta asperiores possimus rem? Consequatur quaerat explicabo cupiditate!', 2, now());
insert into board_tb(title, content, user_id, created_at) values('일곱번째 글입니다.', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Quos dolore adipisci repudiandae culpa. Magni
        veritatis doloribus ipsam laborum amet nemo voluptatibus. Labore ea repellendus culpa amet eum natus dolores
        rerum!', 2, now());
insert into board_tb(title, content, user_id, created_at) values('여덟번째 글입니다.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Harum cumque nostrum ducimus magnam dignissimos quam,
        exercitationem quos temporibus at voluptate delectus libero ratione. Dolorem, ipsam. Exercitationem ad repellat
        culpa quod?', 2, now());
insert into board_tb(title, content, user_id, created_at) values('아홉번째 글입니다.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Harum cumque nostrum ducimus magnam dignissimos quam,
        exercitationem quos temporibus at voluptate delectus libero ratione. Dolorem, ipsam. Exercitationem ad repellat
        culpa quod?', 2, now());
insert into board_tb(title, content, user_id, created_at) values('열번째 글입니다.', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Harum cumque nostrum ducimus magnam dignissimos quam,
        exercitationem quos temporibus at voluptate delectus libero ratione. Dolorem, ipsam. Exercitationem ad repellat
        culpa quod?', 2, now());

insert into comment_tb(user_id, board_id, content, created_at) values(1, 1, '첫번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(1, 2, '두번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(1, 2, '세번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(1, 4, '네번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(1, 6, '다섯번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(2, 6, '여섯번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(2, 3, '일곱번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(2, 3, '여덟번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(2, 2, '아홉번째 댓글입니다.', now());
insert into comment_tb(user_id, board_id, content, created_at) values(2, 2, '열번째 댓글입니다.', now());

commit; 