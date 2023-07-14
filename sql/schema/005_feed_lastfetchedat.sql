-- +goose Up

ALTER TABLE feeds ADD COLUMN last_fetched_at TIMESTAMP;

    -- generating some random bytes and casting it to a byte array and usng sha256 hash fn to get fixed sized output then encoding it in hexadecimal

-- +goose Down
ALTER TABLE feeds DROP COLUMN last_fetched_at;