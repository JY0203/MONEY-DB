CREATE TABLE Transaction (
    id INT AUTO_INCREMENT PRIMARY KEY,              -- 交易的唯一識別碼，自增
    user_id INT NOT NULL,                           -- 對應 User 表的外鍵，用來記錄哪個使用者的交易
    category_id INT NOT NULL,                       -- 對應 Category 表的外鍵，用來分類交易
    amount DECIMAL(10, 2) NOT NULL,                 -- 交易金額，最多10位數，小數點後2位
    description TEXT,                               -- 交易描述（例如：餐廳晚餐、地鐵票）
    transaction_date DATE NOT NULL,                 -- 交易發生的日期
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 交易創建的時間
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 交易更新的時間

    -- 外鍵約束
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES User(id),
    CONSTRAINT fk_category FOREIGN KEY (category_id) REFERENCES Category(id)
);