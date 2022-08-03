import model from "./model.js";

import { InternalServerError, NotFoundError } from "../../lib/error.js";

const GET = async (req, res, next) => {
  try {
    const organizers = await model.GET();

    if (organizers.length == 0) return next(new NotFoundError(204, "no content"));

    res.status(200).json({
      status: 200,
      message: "ok",
      data: organizers,
    });
  } catch (error) {
    return next(new InternalServerError(500, error.message));
  }
};

export default { GET };
