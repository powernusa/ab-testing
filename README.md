# 📈 A/B Testing Analysis — Conversion Rate Experiment

> **Status:** Work in progress — actively updating as I build my data analysis & data intelligence portfolio.  
> **Target completion:** 5th Feb 2026.

This repository contains an end-to-end **A/B testing analysis**, covering:

- experiment design
- sample size & power analysis
- data cleaning & wrangling
- statistical testing (t-tests, χ² tests, confidence intervals)
- visualizations
- result interpretation

The goal is to demonstrate a **professional-grade A/B testing workflow**, similar to what mid-tier data analysts, product analysts, and growth analysts perform at product-driven companies.

More updates coming soon.

<a href="https://mydataaijournal.com/ab-testing/">Link to project</a>

---

## 🚀 Run This Project with Docker Compose

This repository includes a Docker environment so anyone can run the notebook without installing Python or dependencies locally.

### **1️⃣ Start the container**

```bash
docker compose up --build
```

- `--build` ensures Docker rebuilds the image if you updated requirements or code.
- After startup, Docker will print a **Jupyter Notebook URL** similar to:

```
http://127.0.0.1:8888/?token=xxxxx
```

### **2️⃣ Open the notebook**

Copy the URL into your browser.
You will see:

```
ab_testing.ipynb
```

Open it and you can start exploring the analysis.

### **3️⃣ Stop the container**

Press:

```
CTRL + C
```

Then run:

```bash
docker compose down
```

This stops and removes the container cleanly.

---

## 🧱 Project Structure

```
├── Data/
│   ├── pretest.csv
│   ├── test.csv
│   └── test_n.csv
├── Dockerfile
├── docker-compose.yml
├── requirements.txt
├── ab_testing.ipynb
└── README.md
```

---
