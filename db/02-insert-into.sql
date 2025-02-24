BEGIN TRANSACTION;

INSERT INTO users (name, nickname, email) VALUES ('Alice Neel', 'Curly', 'alice@example.com');
INSERT INTO users (name, nickname) VALUES ('Bob Ross', 'Weasel');
INSERT INTO users (name, email) VALUES ('Charlie Stein', 'charlie@example.com');

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

COMMIT;
