CREATE TABLE IF NOT EXISTS users (
    user_id         INTEGER     PRIMARY KEY,
    name            TEXT        NOT NULL,
    nickname        TEXT,
    email           TEXT        UNIQUE,
    created_at      DATETIME    DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS todos (
    todo_id         INTEGER     PRIMARY KEY,
    user_id         INTEGER     NOT NULL,
    content         TEXT        NOT NULL,
    status          TEXT        NOT NULL DEFAULT 'open' CHECK(status IN ('open', 'ongoing', 'done', 'canceled')),
    created_at      DATETIME    DEFAULT CURRENT_TIMESTAMP,
    updated_at      DATETIME,
    due_date        DATETIME,
    priority        TEXT        NOT NULL DEFAULT 'medium' CHECK(priority IN ('high', 'medium', 'low')),
    completed_at    DATETIME,
    deleted_at      DATETIME,   -- Soft-Delete (NULL = aktiv)
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
