import { Router } from "express";
import checkToken from "../../middlewares/checkToken.js";
import controller from "./controller.js";

const router = Router();

router.post("/posts/:postId/images", controller.imagesUpload, checkToken, controller.POSTIMAGE);

export default router;
