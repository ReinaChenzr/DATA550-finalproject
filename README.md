# Heart Disease Logistic Regression Project (DATA550)

This project investigates the relationship between clinical indicators and the presence of heart disease using logistic regression.  
The final output is a fully reproducible HTML report generated via Docker.

---

## Repository Structure

```
final_project/
├── data/               # Contains the heart.csv dataset
├── scripts/            # R scripts for modeling, table, and figure generation
├── report/             # Auto-generated report (heart_report.html) will appear here
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
docker build --platform=linux/amd64 -t reina02/data550-finalproject:latest .
```

---

## Run the automated report with Makefile

### Step 1: Ensure the `report/` directory exists

If the `report/` folder is not present, create it manually:

```bash
mkdir report
```

### Step 2: Run the container using the Makefile

```bash
make run
```

This command will:
- Launch the container from your DockerHub image  
- Mount your local `report/` folder into the container  
- Run R Markdown to generate the report into `report/heart_report.html`  

Once the process finishes, open `report/heart_report.html` in your browser.

---

## DockerHub Image

Image is publicly available at:  
https://hub.docker.com/r/reina02/data550-finalproject

---

## Notes for Windows Users

If you're using Git Bash on Windows, you may need to prepend `/` to the path when mounting:

```bash
docker run --rm -v "/c/Users/YourName/Desktop/final_project/report:/home/rstudio/project/report" reina02/data550-finalproject:latest
```

---

## Requirements Checklist 

- [x] Dockerfile builds reproducible image  
- [x] Makefile runs container to generate HTML report  
- [x] Local `report/` folder used for mount point  
- [x] Public DockerHub image linked  
- [x] README includes build/run instructions and project structure  
- [x] Fully automated pipeline without manual steps  
