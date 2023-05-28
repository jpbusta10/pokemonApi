import express from 'express';
import dotenv from 'dotenv';

dotenv.config();
const app = express();
const port = process.env.APP_PORT!;


app.listen(port, () => {
    console.log(`Server started at http://localhost:${port}`);
});
