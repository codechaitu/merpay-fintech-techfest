INSERT INTO suspicious_user_sink
SELECT
  userId,
  sum(amount) as totalPurchase
FROM user_transaction_source as uts
GROUP BY userId, TUMBLE(uts.eventTime, INTERVAL '6' HOUR)
HAVING sum(amount) > 1000000;
