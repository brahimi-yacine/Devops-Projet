\# DevOps Project

\## Static Website with Docker and CI/CD



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

Difficultés rencontrées

Lors de la réalisation de ce site web dédié aux plantes décoratives, j’ai rencontré plusieurs difficultés techniques et organisationnelles :

Structuration et hiérarchie des sections : il a été nécessaire de définir une architecture claire (Hero, Why Choose Us, Care Tips, etc.) afin d’assurer une lecture fluide et une bonne progression du contenu.

Cohérence visuelle : trouver un style moderne et harmonieux (couleurs, typographie, espaces, ombres, arrondis) sans surcharger l’interface a demandé plusieurs ajustements.

Mise en page des cartes : l’alignement entre image, titre, description et prix a nécessité un travail précis sur le layout pour préserver l’équilibre visuel.

Responsive design : adapter la grille et les composants à différentes tailles d’écran (mobile, tablette, desktop) tout en gardant la même identité graphique.

Gestion des images : la variabilité des formats et de la qualité des images a parfois causé des problèmes d’affichage, notamment au niveau du cadrage et de l’homogénéité.

Uniformisation des styles : assurer une cohérence globale entre les sections a demandé une standardisation des règles CSS et une attention aux détails.



-----------

Solutions apportées

Pour surmonter ces difficultés, j’ai mis en place plusieurs solutions :

Utilisation combinée de Flexbox et CSS Grid pour organiser efficacement les cartes et gérer la mise en page responsive.

Définition de règles cohérentes pour les éléments récurrents : espacements, border-radius, ombres, boutons et badges.

Ajustement progressif de la responsivité via des breakpoints adaptés aux principales tailles d’écrans.

Stabilisation de l’affichage des images grâce à une hauteur contrôlée et à la propriété object-fit: cover.

Amélioration de la lisibilité en renforçant la hiérarchie typographique (titres, sous-titres, descriptions courtes).


---------------------

Améliorations futures

Dans une prochaine version, plusieurs améliorations pourraient être ajoutées :

Intégration d’une page produit détaillée pour chaque plante.

Ajout d’un système de recherche et de filtrage (type de plante, intérieur/extérieur, niveau d’entretien).

Mise en place d’un panier fonctionnel avec stockage local (LocalStorage) ou backend léger.

Ajout de témoignages réels et d’une section FAQ.

Optimisation des performances (compression d’images, lazy loading).