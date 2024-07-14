// backend/src/routes/reportRoutes.js
const express = require('express');
const router = express.Router();
const reportController = require('../controllers/reportController');

// Get all reports
router.get('/', reportController.getAllReports);

// Create a new report
router.post('/', reportController.createReport);

module.exports = router;
