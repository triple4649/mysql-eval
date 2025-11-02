#!/bin/bash
# =====================================
# MySQL SQL Evaluation Runner
# =====================================

USER="root"
PASS="evergreen1997"          # 必要に応じてパスワード入力
HOST="localhost"

echo "=== Step 1: Creating database and schema ==="
mysql -u $USER -p$PASS -h $HOST < 01_create_db.sql

echo "=== Step 2: Inserting test data ==="
mysql -u $USER -p$PASS -h $HOST < 02_insert_data.sql

echo "=== Step 3: Running test queries ==="
mysql -u $USER -p$PASS -h $HOST --table < 03_test_queries.sql | tee results.log

echo ""
echo "=== Step 4: Done! Results saved to results.log ==="

