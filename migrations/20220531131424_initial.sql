CREATE TABLE accounts
(
    account_id               text           NOT NULL,
    created_by_receipt_id    text,
    deleted_by_receipt_id    text,
    created_by_block_height numeric(20, 0) NOT NULL,
    deleted_by_block_height numeric(20, 0),
    PRIMARY KEY (account_id, created_by_block_height)
);

CREATE TABLE access_keys
(
    public_key               text           NOT NULL,
    account_id               text           NOT NULL,
    created_by_receipt_id    text,
    deleted_by_receipt_id    text,
    created_by_block_height numeric(20, 0) NOT NULL,
    deleted_by_block_height numeric(20, 0),
    permission_kind          text           NOT NULL,
    PRIMARY KEY (public_key, account_id)
);
