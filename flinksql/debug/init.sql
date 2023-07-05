CREATE TABLE user_transaction_source
(
    userId      BIGINT,
    itemId      STRING,
    amount      FLOAT,
    purchasedAt STRING,
    eventTime AS TO_TIMESTAMP(purchasedAt),
    WATERMARK FOR eventTime AS eventTime - INTERVAL '5' SECOND
)
WITH (
    'connector' = 'filesystem',
    'format' = 'json',
    'path' = '/Users/codechaitu/Downloads/flink-1.17.1/example/test-data.txt'
);
CREATE TABLE suspicious_user_sink
(
    userId        BIGINT,
    totalPurchase FLOAT
)
WITH (
     'connector' = 'filesystem',
     'format' = 'json',
     'path' = '/Users/codechaitu/Downloads/flink-1.17.1/example/'
);
