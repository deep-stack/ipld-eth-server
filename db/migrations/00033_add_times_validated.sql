-- +goose Up
ALTER TABLE eth.header_cids
ADD COLUMN times_validated INTEGER NOT NULL DEFAULT 0;

ALTER TABLE btc.header_cids
ADD COLUMN times_validated INTEGER NOT NULL DEFAULT 0;

-- +goose Down
ALTER TABLE btc.header_cids
DROP COLUMN times_validated;

ALTER TABLE eth.header_cids
DROP COLUMN times_validated;