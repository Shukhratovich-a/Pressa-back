-- admins
insert into
  admins(admin_name, password)
values
  (
    'Jack',
    crypt('12345678', gen_salt('bf'))
  );
  
-- users
insert into
  users(username, password)
values
  (
    'andrey',
    crypt('9t4b11yi5a', gen_salt('bf'))
  ),
  (
    'joshqin',
    crypt('xn-9t4b11yi5a', gen_salt('bf'))
  );

-- categories
insert into
  categories(category_name)
values
  ('IT'),
  ('Dizayn'),
  ('Biznes'),
  ('Ta''lim');

-- sub_categories
insert into
  sub_categories(sub_category_name, category_id)
values
  ('Web dasturlash', 1),
  ('Mobile dasturlash', 1),
  ('UI/UX dizayn', 2),
  ('Grafik dizayn', 2),
  ('Menejment', 3),
  ('Kredit va audit', 3),
  ('Matematika', 4),
  ('Fizika', 4);

-- organizers
insert into
  organizers(
    organizer_name,
    organizer_profession,
    organizer_phone,
    organizer_phone_stuck,
    user_id
  )
values
  (
    'Alisher Isaev',
    'Tadbirkor',
    '998908050447',
    '998712980777',
    1
  ),
  (
    'MuhammadAli Eshonqulov',
    'Biznesmen',
    '998908050447',
    '998712980777',
    1
  ),
  (
    'Jahongir G''ulomov',
    'Grafik dizayner',
    '998908050447',
    '998712980777',
    2
  );

-- conferences
insert into
  conferences(
    conference_date,
    organizer_id,
    category_id,
    sub_category_id,
    status
  )
values
  (
    '2022-07-30T17:23:10.385Z',
    '1',
    '3',
    '5',
    'active'
  ),
  (
    '2022-08-01T17:23:10.385Z',
    '3',
    '2',
    '4',
    'active'
  ),
  (
    '2022-07-29T17:23:10.385Z',
    '2',
    '3',
    '6',
    'active'
  );

-- conference_links
insert into
  conference_links(conference_link, conference_id)
values
  ('https://', 3),
  ('https://', 2),
  ('https://', 1);

-- posts
insert into
  posts(post_title, post_description, conference_id)
values
  (
    'Alisher Isaevdan biznes va IT bo''yicha master klass',
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    1
  ),
  (
    'Alisher Isaevdan biznes va IT bo''yicha master klass',
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    2
  ),
  (
    'Alisher Isaevdan biznes va IT bo''yicha master klass',
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    3
  );

-- post_bodys
insert into
  post_bodys(post_body_text, post_id)
values
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    1
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    1
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    1
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    2
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    2
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    2
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    3
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    3
  ),
  (
    'Najot Ta''lim jamoasi o ''z o'' quvchilari uchun manfaatli bo''lgan musobaqalarni tashkil etishda davom etadi. Biz bu gal markazimizdagi uch soha vakillari, ya''ni UX / UI dizayner,
    frontend va backend dasturchilarni "bir dasturxon atrofida" to''plashga qaror qildik.',
    3
  );

-- post_images
insert into
  post_images(post_image_link, post_id)
values
  ('Rectangle1.jpg', 1),
  ('Rectangle2.jpg', 2),
  ('Rectangle3.jpg', 3);