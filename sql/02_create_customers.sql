CREATE TABLE IF NOT EXISTS retail.customers
(
    customer_id            String,
    FN                     Nullable(Float32),
    Active                 Nullable(Float32),
    club_member_status     LowCardinality(Nullable(String)),
    fashion_news_frequency LowCardinality(Nullable(String)),
    age                    Nullable(UInt8),
    postal_code            String
)
ENGINE = MergeTree
ORDER BY customer_id;
