// frontend/src/components/ReportList.js
import React, { useEffect, useState } from 'react';
import ReportItem from './ReportItem';
import './ReportList.css';

const ReportList = () => {
  const [reports, setReports] = useState([]);

  useEffect(() => {
    fetch('/api/reports')
      .then(response => response.json())
      .then(data => setReports(data))
      .catch(err => console.error('Error fetching reports:', err));
  }, []);

  return (
    <div className="report-list">
      <h2>Reports</h2>
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
            <ReportItem key={report._id} report={report} />
          ))}
        </tbody>
      </table>
    </div>
  );
};

export default ReportList;
