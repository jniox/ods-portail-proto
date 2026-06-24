# Prototype portail RH ODS — déploiement OCI

Prototype **cliquable et self-contained** (`index.html`, aucune dépendance hors polices Google). Démo : navigation entre écrans, FR/EN, formulaires, modales (signature, vidéo, enquête). Données fictives.

## Contenu
- `index.html` — le prototype (tout-en-un).
- `Dockerfile` — image nginx statique (port 80).

## Option A — Coolify sur OCI (recommandé, vous l'utilisez déjà)
1. Mettre ce dossier dans un repo Git (ex. `ods-portail-proto`).
2. Coolify → **New Resource → Application → Dockerfile** (ou « Static »), pointer sur le repo.
3. Build = Dockerfile ci-dessus ; port exposé **80**.
4. Domaine : ex. `portail-demo.ods.sn` (Coolify gère le TLS Let's Encrypt).
5. Deploy → l'URL est cliquable, partageable pour validation.

> Variante « Static » Coolify : pas besoin du Dockerfile, indiquer le dossier publish = racine (`index.html`).

## Option B — OCI Object Storage (site statique, sans serveur)
1. Créer un bucket (ex. `ods-portail-proto`), **Visibility: Public**.
2. Uploader `index.html`.
3. Activer l'accès web (PAR / pre-authenticated request sur l'objet, ou règle de bucket public) ; partager l'URL de l'objet `index.html`.
4. (Option) mettre un CDN OCI devant pour un domaine propre.

## Option C — test local immédiat
Ouvrir `index.html` dans un navigateur (double-clic) — fonctionne hors-ligne.

## Notes
- C'est une **maquette de validation**, pas l'app réelle : les actions ouvrent des modales d'illustration, aucune donnée n'est enregistrée.
- L'app réelle sera **Frappe HR** (bench `erp-bench`) ; ce prototype sert à valider l'UX/parcours avec la HR Manager et le DG avant le build.
- Charte : blanc + orange ODS ; bilingue FR/EN (bouton en haut à droite).
