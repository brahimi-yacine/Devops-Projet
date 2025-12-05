\# DevOps Project

\## Static Website with Docker and CI/CD



\### Team Members:

Mohammed Yahiaoui Mourad

Brahimi Mohammed Yacine

EL Fodda amr Khaled


\### Project Structure:

\- index.html - Website main page

\- style.css - Website styles

\- Dockerfile - Container configuration

\- .github/workflows/deploy.yml - CI/CD Pipeline



\### How to Run:

`bash

\# Build Docker image

docker build -t website .



\# Run the website

docker run -p 8080:80 website

