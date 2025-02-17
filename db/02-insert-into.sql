BEGIN TRANSACTION;

INSERT INTO users (name, email) VALUES ('Alice', 'alice@example.com');
INSERT INTO users (name) VALUES ('Bob');
INSERT INTO users (name, email) VALUES ('Charlie', 'charlie@example.com');

-- Alice (8 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Buy milk', 'open', '2025-03-15 10:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Respond to email', 'in_progress', '2025-03-16 12:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (1, 'Finish report', 'done', '2025-03-14 17:00:00', 'high', '2025-03-14 16:00:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Plan weekend trip', 'open', '2025-03-26 09:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (1, 'Update resume', 'done', '2025-03-27 12:00:00', 'medium', '2025-03-27 11:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Call plumber', 'open', '2025-03-28 10:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (1, 'Review budget', 'in_progress', '2025-03-29 14:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (1, 'Cancel gym membership', 'canceled', '2025-03-30 16:00:00', 'low', '2025-03-30 15:30:00');

-- Bob (10 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Create project plan', 'open', '2025-03-20 09:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Call customer', 'in_progress', '2025-03-19 15:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (2, 'Write documentation', 'done', '2025-03-18 12:00:00', 'medium', '2025-03-18 11:30:00');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (2, 'Organize team meeting', 'canceled', '2025-03-17 14:00:00', 'low', '2025-03-17 14:30:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Clean office', 'open', '2025-03-21 16:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Schedule dentist appointment', 'open', '2025-03-26 08:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (2, 'Submit tax documents', 'done', '2025-03-27 17:00:00', 'high', '2025-03-27 16:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Order office supplies', 'in_progress', '2025-03-28 11:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (2, 'Plan team outing', 'open', '2025-03-29 13:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (2, 'Cancel subscription', 'canceled', '2025-03-30 10:00:00', 'low', '2025-03-30 09:45:00');

-- Charlie (12 todos)
INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Fix bug in code', 'open', '2025-03-15 11:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Implement new features', 'in_progress', '2025-03-22 09:30:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (3, 'Perform refactoring', 'done', '2025-03-19 10:00:00', 'medium', '2025-03-19 09:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Write unit tests', 'open', '2025-03-23 15:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Review code', 'open', '2025-03-24 14:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Schedule team sync', 'in_progress', '2025-03-20 13:00:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (3, 'Prepare release', 'done', '2025-03-25 17:00:00', 'high', '2025-03-25 16:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Backup database', 'open', '2025-03-26 15:00:00', 'high');

INSERT INTO todos (user_id, content, status, due_date, priority, completed_at)
VALUES (3, 'Deploy new version', 'done', '2025-03-27 18:00:00', 'medium', '2025-03-27 17:45:00');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Conduct code review', 'in_progress', '2025-03-28 09:30:00', 'medium');

INSERT INTO todos (user_id, content, status, due_date, priority)
VALUES (3, 'Write technical blog', 'open', '2025-03-29 12:00:00', 'low');

INSERT INTO todos (user_id, content, status, due_date, priority, deleted_at)
VALUES (3, 'Cancel outdated meeting', 'canceled', '2025-03-30 11:00:00', 'low', '2025-03-30 10:45:00');

COMMIT;
