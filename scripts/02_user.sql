CREATE TABLE nest_user (
  id                BIGSERIAL PRIMARY KEY,
  parent_id         BIGINT REFERENCES nest_user(id), -- like a group id
  name              TEXT
);