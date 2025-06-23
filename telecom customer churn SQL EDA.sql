use telecom_churn
RENAME TABLE `telecom churn data` TO telecom_churn_data;
SELECT * FROM `telecom_churn_data`;
-- CREATE VIEW churn_summary AS
-- SELECT Churn, COUNT(*) AS total_customers
-- FROM telecom_churn_data
-- GROUP BY Churn;
SELECT * FROM churn_summary;
-- CREATE VIEW churn_by_contract AS
-- SELECT Contract,
--        COUNT(*) AS total_users,
--        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_users,
--        ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_rate
-- FROM telecom_churn_data
-- GROUP BY Contract;
SELECT * FROM churn_by_contract;
-- CREATE VIEW avg_tenure_churn AS
-- SELECT Churn, ROUND(AVG(tenure), 2) AS avg_tenure
-- FROM telecom_churn_data
-- GROUP BY Churn;
SELECT * FROM avg_tenure_churn;
-- CREATE VIEW churn_by_internet_service AS
-- SELECT InternetService,
--        COUNT(*) AS total,
--        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned,
--        ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_rate
-- FROM telecom_churn_data
-- GROUP BY InternetService;
SELECT * FROM churn_by_internet_service;
-- CREATE VIEW top_spenders AS
-- SELECT customerID, MonthlyCharges, TotalCharges, Churn
-- FROM telecom_churn_data
-- ORDER BY MonthlyCharges DESC
-- LIMIT 10;
SELECT * FROM top_spenders;
-- CREATE VIEW likely_to_churn AS
-- SELECT customerID, tenure, MonthlyCharges, Churn
-- FROM telecom_churn_data
-- WHERE tenure < 6 AND MonthlyCharges > 80;
SELECT * FROM likely_to_churn;
-- CREATE VIEW churn_by_payment_method AS
-- SELECT PaymentMethod,
--        COUNT(*) AS total_users,
--        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_users,
--        ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS churn_rate
-- FROM telecom_churn_data
-- GROUP BY PaymentMethod;
SELECT * FROM churn_by_payment_method;
-- CREATE VIEW churned_seniors_alone AS
-- SELECT customerID, gender, tenure, MonthlyCharges
-- FROM telecom_churn_data
-- WHERE SeniorCitizen = 1 AND Partner = 'No' AND Churn = 'Yes';
SELECT * FROM churned_seniors_alone;
-- CREATE VIEW avg_monthlycharges_by_gender AS
-- SELECT gender, Churn, ROUND(AVG(MonthlyCharges), 2) AS avg_monthly
-- FROM telecom_churn_data
-- GROUP BY gender, Churn;
SELECT * FROM avg_monthlycharges_by_gender;
-- CREATE VIEW retention_contracts AS
-- SELECT Contract, COUNT(*) AS users,
--        SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END) AS retained,
--        ROUND(SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS retention_rate
-- FROM telecom_churn_data
-- GROUP BY Contract;
SELECT * FROM retention_contracts;

















