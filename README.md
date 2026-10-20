# Formation_CNN_API_Docker

Supports pratiques du **Volet IT** de la *Formation intermédiaire et avancée en intelligence artificielle pour les femmes chercheures* (09–13 septembre 2026) : réseaux de neurones, CNN, détection d'objets, déploiement (API REST, Docker) et notions de MLOps.

📑 **Slides du cours** : [dossier Google Drive](https://drive.google.com/drive/folders/1o6uLU0U3MlEFjGYVfoX6h_4q9vKQxJ8A?usp=drive_link)

## Contexte

Cette formation s'inscrit dans le déploiement des formations avancées en numérique porté par le ministère de l'Efficacité du Service public et de la Transformation numérique (MESPTN), à travers l'Agence Togo Digital (ATD) et le Projet de Transformation Digitale de l'Économie Togolaise (ProDigiT). Le ProDigiT est mandaté par le ministère fédéral allemand de la Coopération économique et du Développement (BMZ) et cofinancé par l'Union européenne et le Luxembourg. La formation contribue au programme 8 de la feuille de route *Togo Digital 2025* : la redynamisation d'un écosystème d'innovation et de talents digitaux.

Elle s'adresse aux femmes chercheures togolaises (enseignantes-chercheures, chercheures IT et non-IT), encore largement sous-représentées dans les formations avancées en IA. Elle s'inscrit dans l'approche **« AI Ready »** : une montée en compétences rapide, pour être immédiatement opérationnelle avec l'IA dans son travail quotidien.

Le programme comporte deux parcours, qui partagent un tronc commun (J1 et J5) et se séparent de J2 à J4 :

- **Volet IT**, pour les chercheures qui savent programmer. **Ce dépôt contient les TP de ce volet.**
- **Volet non-IT**, pour les chercheures d'autres disciplines, sans prérequis technique.

La formation est validée par une attestation.

## Objectifs

**Objectif général** : renforcer les compétences des chercheures togolaises en IA, selon leur profil disciplinaire, pour qu'elles puissent concevoir, mettre en œuvre et valoriser des projets de recherche qui intègrent des méthodes et des outils d'IA.

**Tronc commun**
- Comprendre les fondements et les enjeux éthiques de l'IA, y compris les biais de genre
- Intégrer l'IA dans le cycle de la recherche scientifique (veille, analyse, valorisation)
- Développer un réseau professionnel féminin en IA
- Élaborer un plan d'action personnel pour appliquer l'IA dans ses recherches
- Être immédiatement opérationnelle (AI Ready) : IA générative, culture IA, prompt engineering, cas d'usage métiers

**Volet IT**
- Maîtriser les architectures de réseaux de neurones et leur entraînement
- Développer des pipelines NLP et vision par ordinateur appliqués
- Déployer un modèle d'IA léger (API, conteneurisation)

## Contenu des TP

| Lab | Thème | Objectif du Volet IT couvert |
|-----|-------|------------------------------|
| `00_jupyter_lab_quick_start` | Prise en main de JupyterLab et de l'environnement | — |
| `01_test_notebook` | Vérification de l'environnement (versions, graphiques) | — |
| `02_ml_fundamentals` | Régression linéaire, descente de gradient (par lot et stochastique) | Réseaux de neurones et entraînement (bases) |
| `03_neural_nets` | Neurone artificiel, réseaux multicouches, chiffres manuscrits, Keras et PyTorch | Réseaux de neurones et entraînement |
| `04_yolo_image_detection_example` | Détection d'objets avec YOLOv8 (Ultralytics) | Vision par ordinateur |
| `api/` *(à venir)* | Exposer un modèle via une API REST, conteneurisation | Déploiement d'un modèle léger |

Le dépôt ne contient pas encore de TP de NLP.

## Structure

```
.
├── Dockerfile          # Environnement Jupyter (TensorFlow 2.18 + dépendances)
├── requirements.txt    # Dépendances Python du cours
├── Labs/               # Notebooks de travaux pratiques
│   ├── 00_jupyter_lab_quick_start.ipynb
│   ├── 01_test_notebook.ipynb
│   ├── 02_ml_fundamentals.ipynb
│   ├── 03_neural_nets.ipynb
│   ├── 04_yolo_image_detection_example.ipynb
│   ├── plotting_utils/ # Fonctions de visualisation utilisées par les notebooks
│   └── assets/         # Images d'exemple
└── api/                # Partie API REST / déploiement (à venir)
```

## Lancer l'environnement

```bash
docker build -t formation-cnn .
docker run -p 8888:8888 -v "$(pwd)/Labs:/data/Labs" formation-cnn
```

Ouvrez ensuite le lien affiché dans le terminal (http://127.0.0.1:8888/...), puis suivez les notebooks dans l'ordre, en commençant par `00_jupyter_lab_quick_start.ipynb`.

## Licence

Voir le fichier [LICENSE](LICENSE).
