-- Création des rôles (utilisateurs)
CREATE ROLE nextcloud WITH LOGIN PASSWORD 'p@ssw0rd';
CREATE ROLE odoo WITH LOGIN PASSWORD 'p@ssw0rd' CREATEDB;

-- Création des bases de données
CREATE DATABASE nextcloud WITH OWNER nextcloud;

/*
Remarques : l'utilisateur odoo est crée avec le droit de créer des bases de données (CREATEDB)
car l'installation d'Odoo nécessite cette permission pour fonctionner correctement.
La base de données 'odoo' n'est pas créée ici car Odoo doit créer sa propre base de données lors de son premier démarrage.
*/