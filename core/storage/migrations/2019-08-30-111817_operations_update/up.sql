CREATE TABLE eth_operations
(
    id        bigserial primary key,
    op_id     bigserial references operations (id),
    nonce     bigint  not null,
    gas_price numeric not null,
    tx_hash   text    not null,
    confirmed bool    not null default false
);

ALTER TABLE operations
    DROP COLUMN addr CASCADE,
    DROP COLUMN nonce CASCADE,
    DROP COLUMN tx_hash CASCADE
