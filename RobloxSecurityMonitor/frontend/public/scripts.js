// scripts.js

document.addEventListener('DOMContentLoaded', () => {
    const reportList = document.getElementById('reportList');

    // Function to fetch reports and update the UI
    function fetchReports() {
        fetch('/api/reports')
            .then(response => response.json())
            .then(data => {
                reportList.innerHTML = '';
                data.reports.forEach(report => {
                    const card = document.createElement('div');
                    card.className = 'report-card';
                    card.innerHTML = `
                        <h3>Alert</h3>
                        <p><strong>Username:</strong> ${report.username}</p>
                        <p><strong>Roblox ID:</strong> ${report.robloxId}</p>
                        <p><strong>Server:</strong> ${report.server}</p>
                        <p><strong>Reason:</strong> ${report.reason}</p>
                    `;
                    reportList.appendChild(card);
                });
            })
            .catch(error => console.error('Error fetching reports:', error));
    }

    // Fetch reports on page load
    fetchReports();
});
