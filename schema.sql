CREATE TABLE `insurance_customers` (
   `id` int DEFAULT NULL,
   `Gender` text,
   `Age` int DEFAULT NULL,
   `Driving_License` int DEFAULT NULL,
   `Region_Code` int DEFAULT NULL,
   `Previously_Insured` int DEFAULT NULL,
   `Vehicle_Age` text,
   `Vehicle_Damage` text,
   `Annual_Premium` int DEFAULT NULL,
   `Policy_Sales_Channel` int DEFAULT NULL,
   `Vintage` int DEFAULT NULL,
   `Response` int DEFAULT NULL
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci