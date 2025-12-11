\# DevOps Project

\## Static Website with Docker and CI/CD


Méthode de travail étape par étape

1. Initialisation du projet

Nous avons créé un nouveau dépôt sur GitHub  pour le projet.

Nous avons ajouté les fichiers de base du site : index.html, style.css .

Nous avons organisé le dépôt de manière structurée.


Commandes Git utilisées :
# 1. Initialiser le dépôt Git local
git init

# 2. Ajouter tous les fichiers au suivi Git
git add .

# 3. Créer le premier commit
git commit -m "Initial commit"

# 4. Renommer la branche principale en 'main'
git branch -M main

# 5. Ajouter le dépôt distant (remplacer par l'URL HTTPS correcte)
git remote add origin https://github.com/brahimi-yacine/Devops-Projet.git

# 6. Pousser la branche 'main' vers GitHub et configurer le suivi
git push -u origin main



---

2. Développement du site statique

Nous avons créé une page HTML  avec des éléments de base : titre, texte, boutons et images .

Nous avons ajouté du CSS pour styliser la page.


---

3. Containerisation avec Docker

Nous avons écrit un fichier Dockerfile contenant les instructions pour construire l’image Docker du site :

Utilisation d’une image de base : nginx .

Copier les fichiers du site dans le répertoire du serveur à l’intérieur du conteneur.

Ouvrir le port approprié (80).



Commandes Docker pour tester localement :

 docker build -t devops-website .
 docker run -p 8080:80 devops-website

Ainsi, nous avons vérifié que le site fonctionne correctement dans le conteneur avant le déploiement.

les captures de tester  dans screenshote/

---

4. Configuration de la pipeline CI/CD

Nous avons créé le fichier  .github/workflows/deploy.yml pour GitHub Actions.

La pipeline a été divisée en trois étapes principales :

1/ Checkout code

Cette étape récupère le code du dépôt sur le runner (serveur qui exécute le workflow).

Ce n’est pas une étape CI/CD “traditionnelle”, c’est juste pour préparer le code.


2️/ Build Docker image

C’est la phase Build réelle.

Elle construit l’image Docker du site.


3️/ Test website

C’est la phase Test.

Elle vérifie que le site fonctionne dans le conteneur (même si ici c’est juste un message echo).


4️/ Deploy to GitHub Pages

C’est la phase Deploy.

Elle publie automatiquement le site sur GitHub Pages.




les captures de action est dans screenshote/

les captures de GitHub Pages est dans screenshote/
---------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
-Difficultés rencontrées et solutions apportées

1️ Projet privé

Problème : Le dépôt Git était en privé, donc le site ne pouvait pas être publié sur GitHub Pages.

Solution : Nous avons changé le dépôt en public pour permettre le déploiement et l’accès au site.



---

2️ Branche Main vs Master

Problème : La branche principale de Git était Main alors que certains fichiers ou scripts attendaient Master, ce qui causait des conflits pour le déploiement.

Solution : Nous avons harmonisé les branches et utilisé Main comme branche principale pour toutes les étapes du workflow.



---

3️ Branche GitHub Pages (gh-pages)

Problème : Le déploiement sur GitHub Pages ne fonctionnait pas car la branche gh-pages n’était pas correctement configurée.

Solution : Nous avons créé la branche gh-pages et configuré correctement le workflow pour qu’il publie le site dessus.



---

4️ Token GitHub pour Deploy

Problème : Lors du déploiement avec GitHub Actions, l’étape Deploy to GitHub Pages échouait (Erreur) car l’utilisateur n’avait pas de token valide.

Solution : Mohamed Yahiaoui Mourad a contacté l’administrateur Yassine, qui a généré un Personal Access Token avec les droits nécessaires pour le déploiement.

Après avoir configuré le token dans secrets de GitHub, le déploiement a fonctionné correctement.




\### Team Members:

Mohammed Yahiaoui Mourad

Brahimi Mohammed Yacine

EL Fodda amr Khaled


\### Project Structure:

\- index.html - Website main page

\- style.css - Website styles
\- header.html -Website header
\- footer.html -Website footer
\- Dockerfile - Container configuration

\- .github/workflows/deploy.yml - CI/CD Pipeline



\### How to Run:

`bash

\# Build Docker image

docker build -t website .



\# Run the website

docker run -p 8080:80 website


----------------------------------------------------------------------------------------------------

