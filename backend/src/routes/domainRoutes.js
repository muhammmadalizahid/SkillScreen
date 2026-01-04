const express = require('express');
const router = express.Router();
const { getAllDomains } = require('../services/databaseService');

// Get all domains
router.get('/', async (req, res) => {
  try {
    const domains = await getAllDomains();
    res.status(200).json({
      success: true,
      data: domains,
      count: domains.length
    });
  } catch (error) {
    console.error('Error fetching domains:', error);
    res.status(500).json({
      success: false,
      message: 'Failed to fetch domains',
      error: error.message
    });
  }
});

module.exports = router;
