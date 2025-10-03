🏨 Hotel Booking Analysis – Power BI Project
📊 Overview

This project analyzes hotel booking data using SQL, Power Query, and Power BI to deliver interactive dashboards that help understand customer behavior, hotel revenues, and cancellation patterns.

📂 <h1>Dataset</h1>

Source: Kaggle – Hotel Booking Demand Dataset

Rows: 191,930

Columns: 32

Observation: Most bookings came from Western European countries.

🛠️ Data Preparation
🧹 Data Cleaning

Cleaned using Power Query (handle Nulls, adjust values, unify columns).

Unified reserved_room_type and assigned_room_type into one Dimension (DimRoomType) with separate Foreign Keys.

🗂️ Dimensions

10 Dimensions created to support the model:

Using SQL

DimRoomType: merged reserved_room_type and assigned_room_type.

DimCountry

DimCustomer

DimMeal

DimMarketSegment

DimDistributionChannel

DimHotel

DimCustomerType

DimDepositType

Using Power Query (M Language)

DimDate: from Min → Max Arrival Date, including Year, Month, Quarter, WeekNumber.

📐 DAX Measures & Calculations

Measures:

Total Booking, Avg Lead Time, Cancelation, Avg ADR

Total Night, Cancelation Rate, Total Guest

Total Revenue (Completed), Lost Revenue

Calculated Columns:

Room Status: "SAME" or "NOT SAME" (Reserved vs Assigned).

LeadTimeGroup: "0-7 Days", "8-30 Days", "31-90 Days", "91+ Days".

📑 Report Pages

The report includes 4 main pages:

Overview – general performance summary.

Booking – detailed bookings.

Cancelation – cancellations and patterns.

Revenue – earned vs. lost revenues.

✨ Added Drill Through to show detailed insights per country.

🔎 Key Insights

Western European countries had the highest bookings.

City Hotels experienced a higher cancellation rate than Resort Hotels.

Average stay (Total Nights) was longer in Resort Hotels.

TA/TO (Travel Agents/Tour Operators) accounted for most bookings.

Transient customers were the largest customer segment.

Lost Revenue due to cancellations was significant in some countries.

Room Status Analysis: "SAME" bookings were less frequent but had a much higher cancellation rate.

Possible reason: lack of flexibility—customers cannot change rooms easily, leading to higher cancellations.
