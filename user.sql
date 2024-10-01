CREATE TABLE User (
    id INT AUTO_INCREMENT PRIMARY KEY,    -- 使用者的唯一識別碼，並設為自增
    username VARCHAR(50) NOT NULL,        -- 使用者名稱，最大長度50，不允許為空
    email VARCHAR(100) NOT NULL UNIQUE,   -- 電子郵件，最大長度100，不允許為空且唯一
    password VARCHAR(255) NOT NULL,       -- 密碼（應加密存儲），最大長度255
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,  -- 帳號創建時間，默認為當前時間
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP  -- 帳號更新時間，默認為當前時間並自動更新
);