# Infra Docker (Traefik / Odoo / NextCloud / Portainer)

Cette image Docker regroupe plusieurs services utiles pour la gestion d'une infrastructure web, notamment Traefik, Odoo, NextCloud et Portainer. Elle est conçue pour faciliter le déploiement et la gestion de ces services dans un environnement Docker.

## Notes d'installation

### Entrées DNS
Pour le TP nécessite d'inscrire dans le fichier host les entrées suivantes (à adapter éventuellement selon votre configuration) :

```
127.0.0.1 nextcloud.local
127.0.0.1 odoo.local
127.0.0.1 portainer.local
```

### Création des clés SSL
Pour générer des certificats SSL auto-signés pour les services, vous pouvez utiliser la commande suivante (en adaptant selon votre configuration) :

```sh
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
  -keyout certs/local.key -out certs/local.crt \
  -subj "/CN=*.local"
```

Les certificats seront créés dans le dossier `certs/` pour les domaines en `.local` (wildcard).

## Services inclus
- **Traefik** : Un reverse proxy moderne et dynamique qui facilite la gestion des certificats SSL et le routage des requêtes HTTP/HTTPS.
- **Odoo** : Une suite d'applications de gestion d'entreprise open source, incluant des modules pour la comptabilité, la gestion des stocks, les ventes, etc.
- **NextCloud** : Une plateforme de stockage et de partage de fichiers en ligne, offrant des fonctionnalités similaires à celles de services comme Dropbox.
- **Portainer** : Une interface utilisateur graphique pour la gestion des environnements Docker, facilitant la gestion des conteneurs, des images et des volumes.

## Accès aux services
- **Traefik** : Accessible via `http://localhost:8080` (interface de gestion)
- **Odoo** : Accessible via `http://odoo.local`
- **NextCloud** : Accessible via `http://nextcloud.local`
- **Portainer** : Accessible via `http://portainer.local`   

