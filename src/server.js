import fs from "fs";
import path from "path";
import http from "http";

import { Server } from "socket.io";
import express from "express";
import cors from "cors";

import jwt from "./lib/jwt.js";

import modules from "./modules/modules.js";

const app = express();
app.use(express.json());
app.use(express.static(path.join(process.cwd(),'src','uploads')))

app.use(cors());

app.use(modules);

app.use((error, req, res, next) => {
  if (error.status != 500) {
    return res.status(error.status).json({
      status: error.status,
      message: error.message,
    });
  }

  fs.appendFileSync(
    path.join(process.cwd(), "src", "log.txt"),
    `${req.url}___${error.name}___${new Date(Date.now())}___${error.status}___${error.message}\n`
  );

  res.status(error.status).json({
    status: error.status,
    message: "InternalServerError",
  });

  process.exit();
});

const server = http.createServer(app);
const io = new Server(server);

io.on("connection", (client) => {
  client.on("new message", ({ token, message }) => {
    let { userId } = jwt.verify(token);
    client.broadcast.emit("send message", { data: message });
  });
});

server.listen(5000 || process.env.PORT, () => console.log(process.env.PORT || 5000));
