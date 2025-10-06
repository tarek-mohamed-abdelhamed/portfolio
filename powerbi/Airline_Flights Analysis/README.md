<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Airline Flights Analysis – Power BI Project</title>
 
</head>
<body>

<h1>✈️ Airline Flights Analysis – Power BI Project</h1>
<p>Transforming raw flight data into an interactive Power BI dashboard using a Star Schema model (built in Power BI/Power Query).</p>

<section>
  <h2>📁 Project Overview</h2>
  <p>This project analyzes airline flight performance and delays. I built a clean and efficient Star Schema inside Power BI, created dimension tables, and developed an interactive dashboard with Drill-through for detailed insights.</p>
</section>

<section>
  <h2>🧩 Data Modeling</h2>
  <ul>
    <li><strong>Fact Table:</strong> FactFlights – includes flight details, delays, cancellations, and diversions.</li>
    <li><strong>Dimension Tables:</strong>
      <ul>
        <li>DimDate – date and time information</li>
        <li>DimCarriers – airline company details</li>
        <li>DimAirports – airport information and locations</li>
      </ul>
    </li>
    <li>Data preparation and merging done in Power BI/Power Query for consistency and analysis.</li>
  </ul>
</section>

<section>
  <h2>📈 Dashboard Highlights</h2>
  <ul>
    <li>Main Page: Overview of total flights, on-time performance, cancellations, and diversions.</li>
    <li>Cancelled & Diverted Page: Detailed analysis of delayed, canceled, and diverted flights.</li>
    <li>Carriers Delay Page: Drill-through page showing average delays per airline and airport.</li>
    <li>Trends: Monthly peaks in March, June, and December.</li>
  </ul>
</section>

<section>
  <h2>💡 Key Insights</h2>
  <ul>
    <li>Out of 2M total flights, 215K were on time.</li>
    <li>7,790 diverted flights and 635 canceled flights.</li>
    <li>Southwest Airlines had the highest number of flights (~378K).</li>
    <li>31.49% of flights had arrival delays, 31.93% had departure delays.</li>
    <li>Most common delay causes: NAS (National Airspace System) and Late Aircraft.</li>
    <li>Mesa Airlines had the highest average delay (~55 minutes).</li>
  </ul>
</section>

<section>
  <h2>🚀 Skills Gained</h2>
  <ul>
    <li>Star Schema design inside Power BI/Power Query</li>
    <li>Dimension tables creation and data merging</li>
    <li>Interactive dashboards with Drill-through</li>
    <li>Insight extraction and visual storytelling</li>
  </ul>
</section>

<section>
  <h2>🔗 Project Link</h2>
  <p>You can explore the project and download the Power BI file here:</p>
  <p><a href="https://drive.google.com/file/d/1ebZzsWIzIteenH37k0AAI6eHkccX9KKo/view?usp=drive_link" target="_blank">Airline Flights Analysis – Power BI (Google Drive)</a></p>
</section>

</body>
</html>
