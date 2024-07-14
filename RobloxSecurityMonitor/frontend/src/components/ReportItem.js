// frontend/src/components/ReportItem.js
import React from 'react';
import './ReportItem.css';

const ReportItem = ({ report }) => {
  return (
    <tr className="report-item">
      <td>{report.serverId}</td>
      <td>{report.playerId}</td>
      <td>{report.playerName}</td>
      <td>{report.exploitType}</td>
      <td>{new Date(report.timestamp).toLocaleString()}</td>
    </tr>
  );
};

export default ReportItem;
