// backend/src/controllers/reportController.js
const Report = require('../models/reportModel');

// Get all reports
exports.getAllReports = async (req, res) => {
    try {
        const reports = await Report.find();
        res.json(reports);
    } catch (err) {
        res.status(500).json({ message: err.message });
    }
};

// Create a new report
exports.createReport = async (req, res) => {
    const { serverId, playerId, playerName, exploitType, timestamp } = req.body;

    const report = new Report({
        serverId,
        playerId,
        playerName,
        exploitType,
        timestamp
    });

    try {
        const newReport = await report.save();
        res.status(201).json(newReport);
    } catch (err) {
        res.status(400).json({ message: err.message });
    }
};
