CREATE TABLE IF NOT EXISTS retail.transactions
(
    t_dat            Date,
    customer_id      String,
    article_id       String,
    price            Float32,
    sales_channel_id UInt8
)
ENGINE = MergeTree
ORDER BY (t_dat, customer_id);
