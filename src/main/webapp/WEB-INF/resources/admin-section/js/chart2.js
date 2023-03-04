google.charts.load("current", { packages: ["corechart"] });
google.charts.setOnLoadCallback(drawChart);
function drawChart() {
    var data = google.visualization.arrayToDataTable([
        ["Task", "jobs details"],
        ["total jobs", 11],
        ["inactive jobs", 2],
        ["applied jobs", 7],
    ]);

    var options = {
        title: "Job Activities",
        is3D: true,
    };

    var chart = new google.visualization.PieChart(
        document.getElementById("piechart_3d")
    );
    chart.draw(data, options);
}
