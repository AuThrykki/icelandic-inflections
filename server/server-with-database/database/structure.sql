/*
  Inflection
*/
DROP TABLE IF EXISTS inflection;
CREATE TABLE inflection (
  BIN_id INT(8),
  base_word VARCHAR(120),
  base_word_lowercase VARCHAR(120) COLLATE utf8mb4_bin,
  inflectional_form VARCHAR(120) COLLATE utf8mb4_bin,
  inflectional_form_lowercase VARCHAR(120) COLLATE utf8mb4_bin,
  word_class VARCHAR(5),
  correctness_grade_of_base_word VARCHAR(1),
  BIN_domain VARCHAR(8),
  register_of_base_word VARCHAR(8),
  grammar_group VARCHAR(20),
  cross_reference VARCHAR(16),
  descriptive BOOLEAN,
  grammatical_tag VARCHAR(40),
  correctness_grade_of_word_form VARCHAR(1),
  register_of_word_form VARCHAR(5),
  only_found_in_idioms VARCHAR(5),
  alternative_entry VARCHAR(60)
  ROW_FORMAT=COMPRESSED
);
CREATE INDEX _BIN_id ON inflection (BIN_id);
CREATE INDEX _base_word_lowercase ON inflection (base_word_lowercase);
CREATE INDEX _inflectional_form_lowercase ON inflection (inflectional_form_lowercase);
CREATE INDEX _descriptive ON inflection (descriptive);



DROP TABLE IF EXISTS autocomplete;
CREATE TABLE autocomplete (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  input VARCHAR(255) COLLATE utf8_bin,
  output VARCHAR(255),
  score INT UNSIGNED -- Between 1 and 100
  ROW_FORMAT=COMPRESSED
);
CREATE INDEX _input ON autocomplete (input);
CREATE INDEX _output ON autocomplete (output);
CREATE INDEX _score ON autocomplete (score);
