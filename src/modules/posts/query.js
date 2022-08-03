const GET = `
  select
    p.*,
    c.status
  from
    posts as p
  inner join conferences as c on p.conference_id = c.conference_id
  where 
    case
      when $1 > 0 then p.post_id = $1
      when $1 = 0 then p.post_title ilike concat('%', $2::varchar, '%') and c.status = 'active'
      else true
    end;
`;

const ADDIMAGE = `
  insert into
    post_images(post_id, post_image_link)
  values
    ($1, $2)
  returning *;
`;
export default { GET, ADDIMAGE };
