# Heart Disease Logistic Regression Project (DATA550)

This project investigates the relationship between clinical indicators and the presence of heart disease using logistic regression.  
The final output is a fully reproducible HTML report generated via Docker.

---

## Repository Structure

```
final_project/
├── data/               # Contains the heart.csv dataset
├── scripts/            # R scripts for modeling, table, and figure generation
├── output/             # Auto-generated model.rds, table.csv, figure.png, and report
├── heart_report.Rmd    # Final report (R Markdown)
├── Dockerfile          # Builds the Docker image
├── Makefile            # Automates report generation using Docker
├── renv.lock           # R package versions
├── .Rprofile           # Activates renv on load
└── README.md
```

---

## Build the Docker image

Use the following command to build the image:

```bash
docker build --platform=linux/amd64 -t reina02/data550-finalproject .
```

---

## Run the automated report with Makefile

To generate the report:

```bash
make run-report
```

This command will:
- Launch the container using your image  
- Mount your local `output/` folder into the container  
- Generate the `heart_report.html` report into the `output/` folder  

After it finishes, open `output/heart_report.html` in your browser.

---

## DockerHub Image

Image is publicly available at:  
https://hub.docker.com/r/reina02/data550-finalproject

---

## Notes for Windows Users

If you're using Git Bash, you may need to prepend `/` to the path when mounting:

```bash
docker run --rm -v "/c/Users/YourName/Desktop/final_project/output:/project/report" reina02/data550-finalproject
```

---

## Requirements Checklist

- [x] Dockerfile builds reproducible image  
- [x] Makefile runs container to generate HTML report  
- [x] Public DockerHub image  
- [x] README includes build/run instructions and project structure  
- [x] Fully automated pipeline without manual steps
