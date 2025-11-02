USE sqleval;

-- テストクエリ1：単純集計
EXPLAIN ANALYZE
SELECT customer_id, SUM(amount)
FROM sales
GROUP BY customer_id;

-- テストクエリ2：日付条件つき集計
EXPLAIN ANALYZE
SELECT customer_id, SUM(amount)
FROM sales
WHERE created_at > '2025-01-01'
GROUP BY customer_id;

-- テストクエリ3：インデックス利用テスト
EXPLAIN ANALYZE
SELECT *
FROM sales
WHERE created_at BETWEEN '2025-05-01' AND '2025-06-01'
ORDER BY amount DESC
LIMIT 50;

