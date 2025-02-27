BEGIN TRANSACTION;

INSERT INTO users (name, nickname, email) VALUES ('Alice Neel', 'Curly', 'alice@example.com');
INSERT INTO users (name, nickname) VALUES ('Bob Ross', 'Weasel');
INSERT INTO users (name, email) VALUES ('Charlie Stein', 'charlie@example.com');
INSERT INTO users (name, nickname, email) VALUES ('David Bowie', 'Ziggy', 'david@example.com');
INSERT INTO users (name, nickname, email) VALUES ('Ella Fitzgerald', 'Elli', 'ella@example.com');

-- Alice (8 todos)
INSERT INTO todos (user_id, content, status, priority)
VALUES (1, 'Buy milk', 'open', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Respond to email', 'ongoing', '2025-03-16 12:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (1, 'Finish report', 'done', '2025-03-14 17:00:00', 'high', '2025-03-14 16:00:00');

INSERT INTO todos (user_id, content, status, priority)
VALUES (1, 'Plan weekend trip', 'open', 'low');

INSERT INTO todos (user_id, content, status, priority, completed_at)
VALUES (1, 'Update resume', 'done', 'medium', '2025-03-27 11:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Call plumber', 'open', '2025-03-28 10:00:00', 'high');

INSERT INTO todos (user_id, content, status, priority)
VALUES (1, 'Review budget', 'ongoing', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (1, 'Cancel gym membership', 'canceled', '2025-03-30 16:00:00', 'low', '2025-03-30 15:30:00');

-- Bob (10 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Create project plan', 'open', '2025-03-20 09:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Call customer', 'ongoing', '2025-03-19 15:00:00', 'medium');

INSERT INTO todos (user_id, content, status, priority, completed_at)
VALUES (2, 'Write documentation', 'done', 'medium', '2025-03-18 11:30:00');

INSERT INTO todos (user_id, content, status, priority, deleted_at)
VALUES (2, 'Organize team meeting', 'canceled', 'low', '2025-03-17 14:30:00');

INSERT INTO todos (user_id, content, status, priority)
VALUES (2, 'Clean office', 'open', 'low');

INSERT INTO todos (user_id, content, status, priority)
VALUES (2, 'Schedule dentist appointment', 'open', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (2, 'Submit tax documents', 'done', '2025-03-27 17:00:00', 'high', '2025-03-27 16:45:00');

INSERT INTO todos (user_id, content, status, priority)
VALUES (2, 'Order office supplies', 'ongoing', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Plan team outing', 'open', '2025-03-29 13:00:00', 'medium');

INSERT INTO todos (user_id, content, status, priority, deleted_at)
VALUES (2, 'Cancel subscription', 'canceled', 'low', '2025-03-30 09:45:00');

-- Charlie (12 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Fix bug in code', 'open', '2025-03-15 11:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Implement new features', 'ongoing', '2025-03-22 09:30:00', 'high');

INSERT INTO todos (user_id, content, status, priority, completed_at)
VALUES (3, 'Perform refactoring', 'done', 'medium', '2025-03-19 09:45:00');

INSERT INTO todos (user_id, content, status, priority)
VALUES (3, 'Write unit tests', 'open', 'medium');

INSERT INTO todos (user_id, content, status, priority)
VALUES (3, 'Review code', 'open', 'low');

INSERT INTO todos (user_id, content, status, priority)
VALUES (3, 'Schedule team sync', 'ongoing', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (3, 'Prepare release', 'done', '2025-03-25 17:00:00', 'high', '2025-03-25 16:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Backup database', 'open', '2025-03-26 15:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (3, 'Deploy new version', 'done', '2025-03-27 18:00:00', 'medium', '2025-03-27 17:45:00');

INSERT INTO todos (user_id, content, status, priority)
VALUES (3, 'Conduct code review', 'ongoing', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Write technical blog', 'open', '2025-03-29 12:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (3, 'Cancel outdated meeting', 'canceled', '2025-03-30 11:00:00', 'low', '2025-03-30 10:45:00');

-- David (15 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Analyze market trends', 'open', '2025-04-01 09:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Prepare presentation slides', 'ongoing', '2025-04-02 10:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (4, 'Coordinate with team', 'done', '2025-04-03 11:00:00', 'low', '2025-04-03 10:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (4, 'Finalize budget report', 'canceled', '2025-04-04 12:00:00', 'high', '2025-04-04 11:50:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Plan annual review', 'open', '2025-04-05 14:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Update client database', 'ongoing', '2025-04-06 15:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (4, 'Organize workshop event', 'done', '2025-04-07 16:00:00', 'high', '2025-04-07 15:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Review product feedback', 'open', '2025-04-08 09:30:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Test new software module', 'ongoing', '2025-04-09 10:30:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (4, 'Schedule meeting with stakeholders', 'done', '2025-04-10 11:30:00', 'high', '2025-04-10 11:15:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (4, 'Conduct performance review', 'canceled', '2025-04-11 12:30:00', 'medium', '2025-04-11 12:15:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Draft press release', 'open', '2025-04-12 13:30:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (4, 'Review quarterly sales', 'ongoing', '2025-04-13 14:30:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (4, 'Prepare technical documentation', 'done', '2025-04-14 15:30:00', 'medium', '2025-04-14 15:15:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (4, 'Develop project roadmap', 'canceled', '2025-04-15 16:30:00', 'low', '2025-04-15 16:15:00');

-- Ella (15 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Set up new workstations', 'open', '2025-04-16 09:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Implement security updates', 'ongoing', '2025-04-17 10:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (5, 'Backup server data', 'done', '2025-04-18 11:00:00', 'low', '2025-04-18 10:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (5, 'Conduct client training', 'canceled', '2025-04-19 12:00:00', 'medium', '2025-04-19 11:50:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Revise company policies', 'open', '2025-04-20 13:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Organize team building activity', 'ongoing', '2025-04-21 14:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (5, 'Update website content', 'done', '2025-04-22 15:00:00', 'medium', '2025-04-22 14:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Plan marketing campaign', 'open', '2025-04-23 16:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Audit financial records', 'ongoing', '2025-04-24 17:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (5, 'Develop mobile app prototype', 'done', '2025-04-25 18:00:00', 'low', '2025-04-25 17:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (5, 'Evaluate supplier contracts', 'canceled', '2025-04-26 09:30:00', 'high', '2025-04-26 09:15:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Design new logo', 'open', '2025-04-27 10:30:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (5, 'Review social media strategy', 'ongoing', '2025-04-28 11:30:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (5, 'Host webinar session', 'done', '2025-04-29 12:30:00', 'high', '2025-04-29 12:15:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (5, 'Implement CRM system', 'canceled', '2025-04-30 13:30:00', 'medium', '2025-04-30 13:15:00');

COMMIT;
