const ADDIMAGE = `
  insert into
    post_images(post_id, post_image_link)
  values
    ($1, $2)
  returning *;
`;
export default {
  ADDIMAGE,
};
