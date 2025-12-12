\# DevOps Project

\## Static Website with Docker and CI/CD


Méthode de travail étape par étape

1. Initialisation du projet

Nous avons créé un nouveau dépôt sur GitHub  pour le projet.

Nous avons ajouté les fichiers de base du site : index.html, style.css .

Nous avons organisé le dépôt de manière structurée.


Commandes Git utilisées :


---

2. Développement du site statique

Développement du site

Nous avons développé le site web en utilisant les fichiers et dossiers suivants :

index.html : page principale du site avec le contenu de base (titre, texte, boutons, images).

style.css : feuille de style pour styliser le site et gérer l’apparence des éléments.

header.html : section réutilisable pour l’en-tête du site.

footer.html : section réutilisable pour le pied de page (Footer) du site.

assets/plants/ : dossier contenant toutes les images (les plantes) utilisées sur le site.


Cette organisation permet un site bien structuré, facile à maintenir et à modifier.



---

3. Containerisation avec Docker

Nous avons écrit un fichier Dockerfile contenant les instructions pour construire l’image Docker du site :

Utilisation d’une image de base : nginx .

Copier les fichiers du site dans le répertoire du serveur à l’intérieur du conteneur.

Ouvrir le port approprié (80).



Commandes Docker pour tester localement :

 docker build -t devops-website .                    //devops-website est le nom de notre image docker
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

]


les captures de action est dans screenshote/

les captures de Logs est dans screenshote/


pour tester  GitHub Pages entrer dans  https://brahimi-yacine.github.io/Devops-Projet/
---------------------------------------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------------------
-Difficultés rencontrées et solutions apportées

1️ Projet privé

Problème : Le dépôt Git était en privé, donc le site ne pouvait pas être publié sur GitHub Pages.

Solution : Nous avons changé le dépôt en public pour permettre le déploiement et l’accès au site.



---

2️ Branche Main vs Master

Problème :
Le workflow GitHub Actions était configuré pour la branche main, mais le dépôt utilise master comme branche principale.
Cela causait des erreurs lors des push et empêchait le pipeline de se déclencher correctement.

Solution :
Nous avons modifié le fichier workflow .github/workflows/deploy.yml pour utiliser master comme branche principale :

screenshote/

---

3️ Branche GitHub Pages (gh-pages)

Problème : Le déploiement sur GitHub Pages ne fonctionnait pas car la branche gh-pages n’était pas correctement configurée.

Solution : Nous avons créé la branche gh-pages et configuré correctement le workflow pour qu’il publie le site dessus.



---

4️ Token GitHub pour Deploy

Problème : Lors du déploiement avec GitHub Actions, l’étape Deploy to GitHub Pages échouait (Erreur) car Mohamed Yahiaoui Mourad n’avait pas de token valide.

Solution : Mohamed Yahiaoui Mourad a contacté l’admin brahimi mohammed yacine, qui a généré un Personal Access Token avec les droits nécessaires pour le déploiement.

Après avoir configuré le token dans secrets de GitHub, le déploiement a fonctionné correctement.




\### Team Members:

docker + ci/cd :Mohammed Yahiaoui Mourad

admin + devlopement de site : Brahimi Mohammed Yacine

gitlab : EL Fodda amr Khaled









----------------------------------------------------------------------------------------------------

