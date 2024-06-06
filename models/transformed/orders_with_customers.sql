git{{ config(materialized='table') }}


SELECT
  O.ORDER_ID,
  C.FIRST_NAME,
  C.LAST_NAME,
  O.ORDER_DATE,
  O.TOTAL_AMOUNT
FROM {{source('uwinnipeg', 'ORDERS')}} O
JOIN {{source('uwinnipeg', 'CUSTOMERS')}} C ON O.CUSTOMER_ID = C.CUSTOMER_ID