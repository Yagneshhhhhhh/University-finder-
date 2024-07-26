npm install express axios
const express = require('express');
const axios = require('axios');
const app = express();
const PORT = 3000;

app.use(express.static('public'));

app.get('/search', async (req, res) => {
    const query = req.query.query;
    if (!query) {
        return res.status(400).json([]);
    }

    try {
        // Example API URL - replace with actual API endpoint
        const response = await axios.get(`https://api.example.com/universities?search=${query}`);
        res.json(response.data);
    } catch (error) {
        res.status(500).json([]);
        console.error(error);
    }
});

app.listen(PORT, () => {
    console.log(`Server running on http://localhost:${PORT}`);
});
/project-directory
    /public
        index.html
        styles.css
        script.js
    server.js
node server.js

