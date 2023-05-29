import TrainerController from "../controllers/TrainerController";
import express from 'express';

const trainerRouter = express.Router();

const trainerController = new TrainerController();

trainerRouter.get('/trainers', trainerController.getAll);
trainerRouter.post('/trainers/create', trainerController.create);
trainerRouter.get('/trainers/:trainerId', trainerController.read);
trainerRouter.put('/trainers/update', trainerController.update);
trainerRouter.delete('/trainers/delete/:trainerId', trainerController.delete);

export default trainerRouter;