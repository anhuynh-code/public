WITH monthly_fees AS (
  SELECT 
    DATE_TRUNC('month', date) AS month,
    CASE 
      WHEN COUNT(*) >= 3 AND ABS(SUM(amount)) >= 100 THEN 0
      ELSE 5
    END AS monthly_fee
  FROM transaction
  WHERE amount < 0
    AND date >= '2020-01-01' AND date < '2021-01-01'
  GROUP BY DATE_TRUNC('month', date)
),
all_months AS (
  SELECT DATE_TRUNC('month', dd)::date AS month
  FROM generate_series('2020-01-01'::date, '2020-12-01'::date, interval '1 month') AS dd
),
final_fees AS (
  SELECT 
    all_months.month,
    COALESCE(monthly_fees.monthly_fee, 5) AS fee
  FROM all_months
  LEFT JOIN monthly_fees ON all_months.month = monthly_fees.month
),
total_txn AS (
  SELECT SUM(amount) AS txn_total
  FROM transaction
  WHERE date >= '2020-01-01' AND date < '2021-01-01'
),
total_fees AS (
  SELECT SUM(fee) AS fee_total
  FROM final_fees
)
SELECT txn_total - fee_total AS balance
FROM total_txn, total_fees;