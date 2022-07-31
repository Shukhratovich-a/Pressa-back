const GET = `
  select
    to_json(res)
  from
    (
      select
        c.conference_id,
        c.conference_date,
        c.conference_type,
        to_json(o) "organizer",
        to_json(p) "post"
      from
        conferences c
        inner join (
          select
            o.organizer_id,
            o.organizer_name,
            o.organizer_profession
          from
            organizers o
        ) as o on c.organizer_id = o.organizer_id
        inner join (
          select
            p.post_id,
            p.post_title,
            p.conference_id,
            json_agg(i.post_image_link) as post_images
          from
            posts p
            left join post_images as i on p.post_id = i.post_id
          group by
            p.post_id
        ) as p on p.conference_id = c.conference_id
      where
        c.status = 'active'
      order by c.create_at desc
      offset $1 limit $2
    ) res;
`;

// select
//     c.category_id,
//     c.category_name,
//     json_agg(s.*) as sub_categories
//   from
//     categories as c
//     left join (
//       select
//         s.sub_category_id,
//         s.sub_category_name,
//         s.category_id
//       from
//         sub_categories as s
//     ) as s on s.category_id = c.category_id
//   where
//     c.status = 'active'
//   group by
//     c.category_id;

const POSTORGANIZER = `
  insert into
    organizers(
      organizer_name,
      organizer_profession,
      organizer_type,
      organizer_phone,
      organizer_phone_stuck,
      user_id
    )
  values
    (
      $1,
      $2,
      $3,
      $4,
      $5,
      $6
    )
  returning *;
`;

const POSTORGANIZATION = `
  insert into
    organizations (
      organization_name,
      organizer_id
    )
  values
    (
      $1,
      $2
    )
  returning *;
`;

const POSTCONFERENCE = `
  insert into
    conferences (  
      conference_date,
      conference_type,
      organizer_id,
      category_id,
      sub_category_id
    )
  values
    (
      to_timestamp($1 / 1000.0),
      $2,
      $3,
      $4,
      $5
    )
  returning *;
`;

const POSTCONFERENCELINK = `
  insert into
    conference_links (  
      conference_link,
      conference_id
    )
  values
    (
      $1,
      $2
    )
  returning *; 
`;

const POSTCONFERENCEPOST = `
  insert into
    posts (  
      post_title,
      post_description,
      conference_id
    )
  values
    (
      $1,
      $2,
      $3
    )
  returning *; 
`;

const POSTCONFERENCEPOSTBODY = `
  insert into
    post_bodys (  
      post_body_text,
      post_id
    )
  values
    (
      $1,
      $2
    )
  returning *; 
`;

export default {
  GET,
  POSTORGANIZER,
  POSTORGANIZATION,
  POSTCONFERENCE,
  POSTCONFERENCELINK,
  POSTCONFERENCEPOST,
  POSTCONFERENCEPOSTBODY,
};
