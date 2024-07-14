// frontend/src/App.js
import React, { useEffect, useState } from 'react';
import './App.css';

const App = () => {
  const [reports, setReports] = useState([]);

  useEffect(() => {
    fetch('/api/reports')
      .then(response => response.json())
      .then(data => setReports(data))
      .catch(err => console.error('Error fetching reports:', err));
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>Roblox Security Monitor</h1>
        <table>
          <thead>
            <tr>
              <th>Server ID</th>
              <th>Player ID</th>
              <th>Player Name</th>
              <th>Exploit Type</th>
              <th>Timestamp</th>
            </tr>
          </thead>
          <tbody>
            {reports.map(report => (
              <tr key={report._id}>
                <td>{report.serverId}</td>
                <td>{report.playerId}</td>
                <td>{report.playerName}</td>
                <td>{report.exploitType}</td>
                <td>{new Date(report.timestamp).toLocaleString()}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </header>
    </div>
  );
};

export default App;
