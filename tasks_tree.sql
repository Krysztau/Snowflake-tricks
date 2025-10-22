-- following https://docs.snowflake.com/en/user-guide/tasks-graphs
-- code below creates a set of tasks executed one after another (then last waits for two tasks to be done)


CREATE TASK task_root
  SCHEDULE = '1 MINUTE'
  AS SELECT 1;

CREATE TASK task_a
  AFTER task_root
  AS SELECT 1;

CREATE TASK task_b
  AFTER task_root
  AS SELECT 1;

CREATE TASK task_c
  AFTER task_a, task_b
  AS SELECT 1;


-- task finaliser will run after all the other tasks in the tree finish (be it successfully or with errors)
CREATE TASK task_finalizer
  FINALIZE = task_root
  AS SELECT 1;
