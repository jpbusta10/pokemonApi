import express from 'express';
import dotenv from 'dotenv';
import router from './routers/router';

dotenv.config();
const app = express();
const port = process.env.APP_PORT!;

app.use(express.json());
app.use(router);

app.listen(port, () => {
    console.log(`Server started at http://localhost:${port}`);
});
