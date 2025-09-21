-- Создание таблицы transactions
CREATE TABLE transactions  (
    date DATE PRIMARY KEY,
    cash_flow INT NOT NULL);

-- Добавление данных в таблицу transactions  
INSERT INTO transactions (date, cash_flow) 
VALUES
('2018-01-01', -1000),
('2018-01-02', -100),
('2018-01-03', 50);

-- проверка, что данные успешно и корректно вставлены
SELECT * FROM transactions;

-- решение задачи
SELECT
    date
    , SUM(cash_flow) OVER (ORDER BY date) AS cumulative_cf
FROM transactions
ORDER BY date ASC; 
