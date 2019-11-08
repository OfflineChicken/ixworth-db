

-- task table
-- UID
-- FUTURE: UID of user
-- owner - person who owns the task
-- description - what the task is
-- frequency (days, hours, months?) nullable, if present - reooccurs
-- completion_time (UTC timestamp) nullable, if not present, not yet completed
-- start_time nullable, if present, indicates a task should be worked on by the owner at that time
-- tags

-- task history table
-- UID
-- UID from task
-- completion_time


-- table for tags
-- UID
-- FUTURE: UID of user
-- tag

-- table for users (owners (could be a group))
-- UID
-- FUTURE: UID of user
-- name

/*
create a user through the site
somewhere in the backend, creating a new row in the users table where UID == creator UID

Created on initial use of site
1 Caleb
2 Alex

Created by "master user" as other users
1   1   Family
2   2   Olivia
3   1   Sister


Created by "master user" as other users
1   6   Caleb
2   2   Alex
3   6   Sister
4   4   Melinda
5   4   Brother
6   6   Caleb's Family

OPTION TO MIGRATE USERS
-- 7   6   Caleb
-- 8   6   Sister

Master, Sub account


Caleb's Users
1,3

All Users
1 1 Caleb
2 NULL Alex
3 1 Caleb's Sister

Groups
1 Caleb's Family 
2 Caleb's Parent's Family


*/