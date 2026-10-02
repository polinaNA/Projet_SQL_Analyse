# Analyse commerciale avec SQL

## Présentation

Ce projet consiste à analyser des données commerciales à l'aide de SQL et de MySQL.
L'objectif est d'explorer les ventes, les produits, les clients et les commandes afin d'obtenir plusieurs indicateurs commerciaux.

##  Données
La base de données contient trois tables :
- `clients` : informations sur les clients
- `produits` : informations sur les produits et leurs prix
- `commandes` : informations sur les commandes

##  Technologies utilisées
- MySQL
- SQL
- MySQL Command Line Client

## Analyses réalisées

Le projet comprend notamment :
- création de la base de données ;
- création des tables ;
- insertion des données ;
- vérification des données ;
- calcul du chiffre d'affaires total ;
- chiffre d'affaires par produit ;
- chiffre d'affaires par catégorie ;
- chiffre d'affaires par client ;
- chiffre d'affaires par ville ;
- quantité totale vendue par produit ;
- chiffre d'affaires par mois.

##  Principaux résultats

### Chiffre d'affaires total

Le chiffre d'affaires total calculé est de **7 995 €**.

### Chiffre d'affaires par produit

| Produit | Chiffre d'affaires |
|---|---:|
| Ordinateur portable | 4 495 € |
| Tablette | 1 596 € |
| Écran 24 pouces | 507 € |
| Enceinte Bluetooth | 395 € |
| Casque audio | 356 € |
| Clavier | 236 € |
| Webcam | 207 € |
| Souris sans fil | 203 € |

### Chiffre d'affaires par catégorie
| Catégorie | Chiffre d'affaires |
|---|---:|
| Informatique | 5 648 € |
| Électronique | 1 596 € |
| Audio | 751 € |

### Chiffre d'affaires par ville

| Ville | Chiffre d'affaires |
|---|---:|
| Lyon | 2 993 € |
| Paris | 2 003 € |
| Bordeaux | 1 462 € |
| Marseille | 864 € |
| Lille | 673 € |

### Quantité totale vendue par produit
| Produit | Quantité |
|---|---:|
| Souris sans fil | 7 |
| Ordinateur portable | 5 |
| Enceinte Bluetooth | 5 |
| Clavier | 4 |
| Casque audio | 4 |
| Tablette | 4 |
| Webcam | 3 |
| Écran 24 pouces | 3 |

### Chiffre d'affaires par mois
| Mois | Chiffre d'affaires |
|---|---:|
| Janvier 2026 | 1 901 € |
| Février 2026 | 2 042 € |
| Mars 2026 | 2 692 € |
| Avril 2026 | 1 360 € |

## Compétences mises en pratique

- Création d'une base de données relationnelle
- Création de tables SQL
- Clés primaires et clés étrangères
- `INSERT INTO`
- `SELECT`
- `JOIN`
- `GROUP BY`
- `ORDER BY`
- `SUM()`
- `DATE_FORMAT()`
- Agrégation et analyse de données


```text