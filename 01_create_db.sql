-- データベース作成
DROP DATABASE IF EXISTS sqleval;
CREATE DATABASE sqleval CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE sqleval;

-- テーブル作成
CREATE TABLE sales (
  id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  amount DECIMAL(10,2),
  created_at DATETIME,
  INDEX idx_customer (customer_id),
  INDEX idx_created (created_at)
);

