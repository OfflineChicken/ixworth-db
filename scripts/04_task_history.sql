CREATE TABLE task_history (
  id              BIGSERIAL PRIMARY KEY,
  task_id         BIGINT REFERENCES task(id),
  completion_time TIMESTAMP -- specifically not "WITH TIME ZONE"; whatever is inserting data should insert UTC
);
