CREATE TABLE task_tag (
  task_id         BIGINT REFERENCES task(id),
  tag_id          BIGINT REFERENCES tag(id),
  PRIMARY KEY (task_id, tag_id)
);
