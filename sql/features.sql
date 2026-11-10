DROP TABLE IF EXISTS userProductFeatures;

CREATE TABLE userProductFeatures AS 
SELECT
	o.user_id,
	op.product_id,
	COUNT(*) AS purchaseCount
FROM orders AS o
JOIN ordersPrior AS op
	ON o.order_id = op.order_id
WHERE o.user_id IN (
	SELECT user_id
	FROM orders
	WHERE eval_set = 'train'
)
GROUP BY o.user_id, op.product_id;
