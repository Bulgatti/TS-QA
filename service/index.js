const express = require('express');
const morgan = require('morgan');

const app = express();

// middleware
app.use(morgan('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// port
const PORT = process.env.PORT || 3000;
app.listen(PORT);

// eslint-disable-next-line no-console
console.log(`Listening for QA service at http://localhost:${PORT}`);
