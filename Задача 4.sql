-- Создание таблицы signups
CREATE TABLE signups (
    date DATE PRIMARY KEY,
    sign_ups INT NOT NULL);

--  Добавление данных в таблицу signups    
INSERT INTO signups (date, sign_ups) 
VALUES
('2018-01-01', 10),
('2018-01-02', 20),
('2018-01-03', 50),
('2018-01-04', 30),
('2018-01-05', 10),
('2018-01-06', 70),
('2018-01-07', 60),
('2018-01-08', 40),
('2018-01-09', 30),
('2018-01-10', 20);

-- Проверка, что данные успешно и корректно вставлены
SELECT * FROM signups;

-- решение задачи, реализовал 7-дневное скользящее среднее ежедневных регистраций с округлением до 2 знаков
SELECT
    date
    , round(AVG(cast(sign_ups as float)) OVER (ORDER BY date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW),2) AS avg_7d
FROM signups
ORDER BY date;
