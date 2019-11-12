import { Router } from 'express';

const routes = new Router();

routes.get('/', (request, response) => {
  response.json({ message: 'Gympoint API' });
});

export default routes;
