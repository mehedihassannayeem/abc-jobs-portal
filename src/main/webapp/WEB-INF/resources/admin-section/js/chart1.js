google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ["Task", "Website overall Performance"],
        ["jobs", 11],
        ["bulk emails", 12],
        ["e-learning", 23],
        ["career dev", 27],
        ["users", 220],
        ["contact form", 70],
        ["user review", 57],
        ["inactive user", 7],
    ]);

    var options = {
        title: "Webiste Analytics",
    };

    var chart = new google.visualization.PieChart(
        document.getElementById("piechart")
    );

    chart.draw(data, options);
}
