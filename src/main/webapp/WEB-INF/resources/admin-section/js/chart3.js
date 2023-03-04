google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ["Task", "all courses"],
        ["e-learing", 11],
        ["career dev", 2],
        ["applied e-learing", 2],
        ["applied career dev", 2],
    ]);

    var options = {
        title: "E-courses Activities",
        pieHole: 0.4,
    };

    var chart = new google.visualization.PieChart(
        document.getElementById("donutchart")
    );
    chart.draw(data, options);
}
