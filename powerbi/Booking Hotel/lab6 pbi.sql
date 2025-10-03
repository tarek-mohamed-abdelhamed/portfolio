 --fact
 create view  fact as
 select * from hotels


 ----dimhotelS
 create view  dimhotels as
SELECT 
    ROW_NUMBER() OVER (ORDER BY hotel) AS HotelID,hotel
FROM 
    (SELECT DISTINCT hotel FROM hotels) AS DistinctHotels;

    
    ---dimmeal
    create view dimmeal as 
    select
     ROW_NUMBER() OVER (ORDER BY meal) AS mealid,meal
FROM 
    (SELECT DISTINCT meal FROM hotels) AS Distincmeal;



 select distinct  reserved_room_type from hotels
 order by reserved_room_type
 select distinct  assigned_room_type from hotels
  order by assigned_room_type desc

--dimroom
 create view dimroom as 
    select
     ROW_NUMBER() OVER (ORDER BY assigned_room_type) AS roomid ,assigned_room_type
FROM 
    (SELECT DISTINCT assigned_room_type FROM hotels) AS Distinctreservedroom;



     select * from hotels

--DimDepositType
CREATE VIEW DimDepositType AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY deposit_type) AS deposit_type_id,
    deposit_type
FROM (SELECT DISTINCT deposit_type FROM hotels
    WHERE deposit_type IS NOT NULL
) AS t;




---dimcustomer
CREATE VIEW vw_DimCustomerCredit AS
SELECT 
    name,
    RIGHT(credit_card, 4) AS credit_card_last4
FROM (
    SELECT DISTINCT 
        name,
        credit_card
    FROM hotels
    WHERE name IS NOT NULL 
      AND credit_card IS NOT NULL
) AS t;

---dimcountry
CREATE VIEW DimCountry AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY country) AS country_id,
    country
FROM (
    SELECT DISTINCT country
    FROM hotels
    WHERE country IS NOT NULL
) AS t;

--dimmarketsegment
CREATE VIEW DimMarketSegment AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY market_segment) AS market_segment_id,
    market_segment
FROM (
    SELECT DISTINCT market_segment
    FROM hotels
    WHERE market_segment IS NOT NULL
) AS t;



--DimDistributionChannel
CREATE VIEW DimDistributionChannel_ AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY distribution_channel) AS distribution_channel_id,
    distribution_channel
FROM (
    SELECT DISTINCT distribution_channel
    FROM hotels
    WHERE distribution_channel IS NOT NULL
) AS t;

--dimDimReservationStatus_

CREATE VIEW DimReservationStatus_ AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY reservation_status) AS reservation_status_id,
    reservation_status
FROM (
    SELECT DISTINCT reservation_status
    FROM hotels
    WHERE reservation_status IS NOT NULL
) AS t;


---dimCustomerType
CREATE VIEW DimCustomerType AS
SELECT 
    ROW_NUMBER() OVER (ORDER BY customer_type) AS customer_type_id,
    customer_type
FROM (
    SELECT DISTINCT customer_type
    FROM hotels
    WHERE customer_type IS NOT NULL
) AS t;
CREATE VIEW vw_HotelsClean AS
SELECT
    hotel,
    name,
    credit_card,
    CAST(CONCAT(
        arrival_date_day_of_month, '-',
        arrival_date_month, '-',
        arrival_date_year
    ) AS DATE) AS arrival_date,
    
    stays_in_weekend_nights,
    stays_in_week_nights,
    adults,
    children,
    babies,
    meal,
    country,
    market_segment,
    distribution_channel,
    is_repeated_guest,
    previous_cancellations,
    previous_bookings_not_canceled,
    reserved_room_type,
    assigned_room_type,
    booking_changes,
    deposit_type,
    days_in_waiting_list,
    customer_type,
    adr,
    required_car_parking_spaces,
    total_of_special_requests,
    reservation_status,
    reservation_status_date
FROM hotels;

SELECT DISTINCT (market_segment) FROM HOTELS
SELECT DISTINCT (distribution_channel) FROM HOTELS


select * from vw_HotelsClean
select max(arrival_date) from vw_HotelsClean
select min(arrival_date) from vw_HotelsClean
select max(reservation_status_date) from vw_HotelsClean
select min(reservation_status_date) from vw_HotelsClean
