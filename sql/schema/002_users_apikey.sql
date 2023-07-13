-- +goose Up

ALTER TABLE users ADD COLUMN api_key VARCHAR(64) UNIQUE NOT NULL DEFAULT(       
    encode(sha256(random()::text::bytea), 'hex')
);

    -- generating some random bytes and casting it to a byte array and usng sha256 hash fn to get fixed sized output then encoding it in hexadecimal

-- +goose Down
ALTER TABLE users DROP COLUMN api_key;