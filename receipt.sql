CREATE TABLE Receipt (
    id INT AUTO_INCREMENT PRIMARY KEY,              -- 發票的唯一識別碼，自增
    user_id INT NOT NULL,                           -- 對應 User 表的外鍵，表示該發票屬於哪個使用者
    receipt_number VARCHAR(20) NOT NULL,            -- 發票號碼，最大長度20
    issue_date DATE NOT NULL,                       -- 發票開立日期
    amount DECIMAL(10, 2) NOT NULL,                 -- 發票上的金額
    merchant VARCHAR(100) NOT NULL,                 -- 商家名稱，最大長度100
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- 發票記錄創建時間
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, -- 發票記錄更新時間

    -- 外鍵約束
    CONSTRAINT fk_receipt_user FOREIGN KEY (user_id) REFERENCES User(id)
);