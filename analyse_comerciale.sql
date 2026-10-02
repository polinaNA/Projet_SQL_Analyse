-- creation base de donées
CREATE DATABASE IF NOT EXISTS analyse_comerciale;
 USE analyse_comerciale;

-- creation la table clients
 CREATE TABLE clients(
    id_client INT PRIMARY KEY,
    nom VARCHAR(100),
    ville VARCHAR(100),
    age INT
 );
 
 --creation de la table produits
 CREATE TABLE produits(
    id_produit INT PRIMARY KEY,
    nom_produit VARCHAR(100),
    categorie VARCHAR(100),
    prix DECIMAL(10,2)
 );
 
 -- creation de la table commandes
 CREATE TABLE commandes(
    id_commande INT PRIMARY KEY,
    id_client INT,
    id_produit INT,
    date_commande DATE,
    quantite INT,
    FOREIGN KEY (id_client) REFERENCES clients(id_client),
    FOREIGN KEY (id_produit) REFERENCES produits(id_produit)
 );

 -- insertion de données dans la table clients
 INSERT INTO clients VALUES
 (1, 'Alice Martin', 'Paris', 28),
(2, 'Thomas Bernard', 'Lyon', 35),
(3, 'Sophie Dubois', 'Marseille', 24),
(4, 'Lucas Petit', 'Lille', 31),
(5, 'Emma Robert', 'Bordeaux', 27),
(6, 'Hugo Moreau', 'Paris', 42),
(7, 'Chloe Laurent', 'Lyon', 29),
(8, 'Louis Simon', 'Marseille', 38),
(9, 'Lea Michel', 'Lille', 22),
(10, 'Nathan Garcia', 'Bordeaux', 33);

 -- insertion de données dans la table produits
INSERT INTO produits VALUES
(1, 'Ordinateur portable', 'Informatique', 899.00),
(2, 'Souris sans fil', 'Informatique', 29.00),
(3, 'Clavier', 'Informatique', 59.00),
(4, 'Casque audio', 'Audio', 89.00),
(5, 'Enceinte Bluetooth', 'Audio', 79.00),
(6, 'Webcam', 'Informatique', 69.00),
(7, 'Tablette', 'Electronique', 399.00),
(8, 'Ecran 24 pouces', 'Informatique', 169.00);

 -- insertion de données dans la table commandes
INSERT INTO commandes VALUES
(1, 1, 1, '2026-01-05', 1),
(2, 2, 4, '2026-01-08', 2),
(3, 3, 7, '2026-01-12', 1),
(4, 4, 2, '2026-01-15', 3),
(5, 5, 8, '2026-01-20', 2),
(6, 6, 1, '2026-02-03', 1),
(7, 7, 3, '2026-02-10', 2),
(8, 8, 5, '2026-02-14', 2),
(9, 9, 6, '2026-02-18', 1),
(10, 10, 7, '2026-02-22', 2),
(11, 1, 4, '2026-03-02', 1),
(12, 2, 1, '2026-03-08', 2),
(13, 3, 8, '2026-03-15', 1),
(14, 4, 7, '2026-03-20', 1),
(15, 5, 5, '2026-03-25', 3),
(16, 6, 2, '2026-04-03', 4),
(17, 7, 1, '2026-04-10', 1),
(18, 8, 6, '2026-04-15', 2),
(19, 9, 3, '2026-04-20', 2),
(20, 10, 4, '2026-04-25', 1);


SELECT * FROM clients;
SELECT * FROM produits;
SELECT * FROM commandes;

-- chiffre d'affaires total
SELECT SUM(c.quantite*p.prix) AS chiffre_affaires_total
FROM commandes c
JOIN produits p ON c.id_produit=p.id_produit;

-- chiffre d'affaires par produit
SELECT 
    p.nom_produit,
    SUM(c.quantite*p.prix) AS chiffre_affaires
FROM commandes c 
JOIN produits p 
    ON c.id_produit=p.id_produit
    GROUP BY p.nom_produit
    ORDER BY chiffre_affaires DESC;

-- chiffre d'affaires par categorie
SELECT
    p.categorie,
    SUM(c.quantite*p.prix) AS chiffre_affaires
FROM commandes c 
JOIN produits p 
    ON c.id_produit=p.id_produit
    GROUP BY p.categorie
    ORDER BY chiffre_affaires DESC;

-- chiffre d'affaire par client
SELECT
    c.nom,
    c.ville,
    SUM(co.quantite*p.prix) AS chiffre_affaires
FROM commandes co
JOIN clients c
    ON co.id_client=c.id_client
JOIN produits p 
    ON co.id_produit=p.id_produit
GROUP BY c.id_client,c.nom,c.ville
ORDER BY chiffre_affaires DESC;

-- chiffre d'affaires par ville
SELECT
    c.ville,
    SUM(co.quantite*p.prix) AS chiffre_affaires
FROM commandes co
JOIN clients c
    ON co.id_client=c.id_client
JOIN produits p 
    ON co.id_produit=p.id_produit
GROUP BY c.ville
ORDER BY chiffre_affaires DESC;

-- quantite totale vendu par produit
SELECT
    p.nom_produit,
    SUM(c.quantite) AS quantite_totale
FROM commandes c
JOIN produits p 
    ON c.id_produit=p.id_produit
GROUP BY p.id_produit,p.nom_produit
ORDER BY quantite_totale DESC;

-- Analyse chiffre d'affaires par mois
SELECT
    DATE_FORMAT(c.date_commande,'%Y-%m') AS mois,
    SUM(c.quantite*p.prix) AS chiffre_affaires
FROM commandes c
JOIN produits p 
ON c.id_produit=p.id_produit
GROUP BY mois
ORDER BY mois;

