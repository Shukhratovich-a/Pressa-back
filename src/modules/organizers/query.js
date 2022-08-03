const GET = `
  select
    distinct o.organizer_name,
    c.status
  from
    organizers as o
  inner join conferences as c on c.organizer_id = o.organizer_id
  where c.status = 'active';
`;

export default { GET };
