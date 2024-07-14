// backend/src/models/reportModel.js
const mongoose = require('mongoose');

const reportSchema = new mongoose.Schema({
    serverId: { type: String, required: true },
    playerId: { type: String, required: true },
    playerName: { type: String, required: true },
    exploitType: { type: String, required: true },
    timestamp: { type: Date, required: true }
});

module.exports = mongoose.model('Report', reportSchema);
