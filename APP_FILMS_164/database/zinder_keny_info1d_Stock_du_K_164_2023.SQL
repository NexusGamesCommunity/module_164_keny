-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: zinder_keny_info1d_Stock_du_K_164_2023

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS zinder_keny_info1d_Stock_du_K_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS zinder_keny_info1d_Stock_du_K_164_2023;

-- Utilisation de cette base de donnée

USE zinder_keny_info1d_Stock_du_K_164_2023;
-- --------------------------------------------------------
CREATE DATABASE BD_Module162;
USE BD_Module162;

CREATE TABLE t_personnes (
    id_personne INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(50),
    nom VARCHAR(50),
    date_de_naissance DATE
);

CREATE TABLE t_mail (
    id_mail INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    adresse VARCHAR(255),
    date_de_creation DATE NOT NULL
);

CREATE TABLE t_telephone (
    id_telephone INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    num_telephone VARCHAR(255)
);

CREATE TABLE t_employe (
    id_employe INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employe VARCHAR(50),
    date_debut DATE
);

CREATE TABLE t_pers_avoir_mail (
    id_personne INT NOT NULL,
    id_mail INT NOT NULL,
    FOREIGN KEY (id_personne) REFERENCES t_personne(id_personne),
    FOREIGN KEY (id_mail) REFERENCES t_mail(id_mail)
);

CREATE TABLE t_pers_avoir_tel (
    id_personne INT NOT NULL,
    id_telephone INT NOT NULL,
    FOREIGN KEY (id_personne) REFERENCES t_personne(id_personne),
    FOREIGN KEY (id_telephone) REFERENCES t_telephone(id_telephone)
);

CREATE TABLE t_pers_avoir_emp (
    id_personne INT NOT NULL,
    id_employe INT NOT NULL,
    FOREIGN KEY (id_personne) REFERENCES t_personne(id_personne),
    FOREIGN KEY (id_employe) REFERENCES t_employe(id_employe)
);

INSERT INTO t_personnes (prenom, nom, date_de_naissance) VALUES
("Ewen", "Ouvrard", "05092005"),
("Nathan", "Paythou", "14072005"),
("Sasha", "Maillavin", "30012005"),
("Lilian", "Niabia", "12022006");

INSERT INTO t_mail (adresse, date_de_creation) VALUES
("ewenkarl@outlook.fr", "14042020"),
("nathanpaythou@gmail.com", "19022019"),
(NULL, "08082008"),
("lilianniabia@gmail.com", NULL);

INSERT INTO t_telephone (num_telephone) VALUES
("+41 76 218 41 65"),
(NULL),
("+33 6 17 70 13 69"),
("+33 6 42 83 01 23");

INSERT INTO t_employe (employe) VALUES
("Informarticie "),
("Lycéen"),
("Vendeur"),
(NULL)