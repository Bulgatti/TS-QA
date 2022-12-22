const mongoose = require('mongoose');

mongoose.connect('mongodb://localhost/QA');

const questionsSchema = new mongoose.Schema({
  id: { type: Number, unique: true },
  product_id: Number,
  body: String,
  date_written: String,
  asker_name: String,
  asker_email: String,
  reported: Boolean,
  helpful: Number,
});

const answersSchema = new mongoose.Schema({
  id: { type: Number, unique: true },
  question_id: Number,
  body: String,
  date_written: String,
  answerer_name: String,
  answer_email: String,
  reported: Boolean,
  helpful: Number,
  photos: [{
    id: { type: Number, unique: true },
    answer_id: Number,
    url: String,
  }],
});
