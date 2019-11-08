CREATE TABLE tag (
  id              BIGSERIAL PRIMARY KEY,
  user_id         BIGINT REFERENCES nest_user(id),
  name            TEXT
);
