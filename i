dex.html===
<!DOCTYPE html>
<html>
<head>
    <title>Sales Total App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 20px;
        }
        h1 {
            color: #333;
        }
    </style>
</head>
<body>
    <h1 id="total-sales">Total Sales: Loading...</h1>

    <script>
        // Fetch and process CSV file
        fetch('sales.csv')
            .then(response => response.text())
            .then(data => {
                const rows = data.split('\n').slice(1); // Remove header row
                let totalSales = 0;

                rows.forEach(row => {
                    const [_, sales] = row.split(',');
                    totalSales += parseInt(sales);
                });

                document.getElementById('total-sales').textContent = `Total Sales: $${totalSales}`;
            })
            .catch(error => {
                console.error('Error fetching data:', error);
                document.getElementById('total-sales').textContent = 'Error fetching data';
            });
    </script>
</body>
</html>
===END===

===FILE:README.md===
# Sales Total App

## Description
This simple web page displays the total sales from a CSV file.

## Usage
Just open the index.html file in a web browser to see the total sales.

## Features
- Displays the total sales from the provided CSV file

## License
MIT
===END===

===FILE:style.css===
/* No additional CSS needed for this application */
===END===

===FILE:script.js===
// No additional JavaScript needed for this application
===END===