CREATE TABLE task (
  id              BIGSERIAL PRIMARY KEY,
  creator_id      BIGINT REFERENCES nest_user(id),
  owner_id        BIGINT NULL REFERENCES nest_user(id),
  title           TEXT,
  description     TEXT NULL,
  -- Maybe have a location at some point?
  frequency       NUMERIC NULL CHECK(frequency > 0), -- seconds before the task "reoccurs" (if present)
  completion_time TIMESTAMP NULL, -- if not present, never completed (for a reocurring task, this is the last completion time)
  start_time      TIMESTAMP NULL -- if present, indicates a task should be worked on by the owner at that time
);