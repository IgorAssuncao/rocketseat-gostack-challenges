import app from './app';

const host = process.env.NODE_ENV ? '0.0.0.0' : '127.0.0.1';
const port = 3000;

app.start = (HOST, PORT) => {
  return app.listen(PORT, HOST, () =>
    console.log(`${process.env.NODE_ENV} API Running on ${HOST}:${PORT}`)
  );
};

app.start(host, port);
