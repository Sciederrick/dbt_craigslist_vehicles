![visuals screenshot](./screenshot.png)
### Craigslist Vehicles Data Transformation & Visualization

**Inventory Levels:** Fact tables to display inventory levels over time, helping the company manage their stock and make informed decisions about inventory management

**Price Distribution:** Fact tables to display price distribution across manufacturers and models, helping the company understand the price range of vehicles in the market and set competitive pricing strategies

**Vehicle Attributes:** By analyzing the attributes of vehicles sold, such as make, model, and fuel type, the company can create bar charts or other visualizations to understand customer preferences and guide their inventory decisions

### Implementation

- [*] Clean data (for proper formatting)
- [*] Load CSV data into Postgresql with SQL `copy` command
- [*] Export CSV data with `copy` command
- [*] Send CSV file to Amazon S3
- [*] Setup Snowflake to respond to new S3 upload events with Amazon SQS
- [*] On AWS insert event, refresh data in Snowflake
- [*] Load data from Snowflake on PowerBI
- [*] Use data to create visuals

### Tools

- postgresql
- snowflake
- dbt
- powerBI
