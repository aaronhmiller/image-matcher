# Image Matcher App
Check which container images Chainguard has matches for against the input file.
## Usage
Either of the below options assume you have the following input files available:
1. A customer list of images they need matched to the Chainguard Inventory (column header should be "image name");
2. The list of Chainguard images (directory.csv from the [Chainguard Console](https://console.chainguard.dev))
### Option A
Open image-matcher-spa.html in your browser.
### Option B
Run `docker compose up -d` and open [localhost:8080](http://localhost:8080).
## Expected Output
The screen will show a visual summary of the matches as well as a percentage match. There's an option to download the output file `matched_images.csv` to facilitate reporting and sharing of results. If the output doesn't match your expectations, use the slider to adjust the sensitivity and re-run the match.
## Integrated Usage
After downloading the `matched_images.csv` file, run the included `process-matched_images.sh` file. Two new files will be output, `originallist-input.txt` and `newlist-input.txt`. Use those as input for the [Chainguard Vulnerability Report](https://github.com/chainguard-dev/cgvulnreport). 
## Sample Files
Given the Chainguard Directory contents of July 2025, the match files should return 50/75/100 match rates.
