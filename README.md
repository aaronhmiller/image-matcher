# Image Matcher App
Check which container images Chainguard has matches for against the input file.
## Usage
Either of the below options assume you have the following input files available:
1. A customer list of images they need matched to the Chainguard Inventory;
2. The list of Chainguard images
### Option A
Open image-matcher-spa.html (image matcher single page application) in your browser.
### Option B
Run `docker compose up -d` and open [localhost:8080](http://localhost:8080).
## Expected Output
The screen will show a visual summary of the matches as well as a percentage match. There's an option to download the output file to facilitate reporting and sharing of results.
## Sample Files
Given the Chainguard Directory contents of July 2025, the match files should return 50/75/100 match rates.
