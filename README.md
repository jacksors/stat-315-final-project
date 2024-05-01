# STAT 315 / ECEN 360 Final Project
## Authors
 - Jackson Stone
 - Rhiannon Stracener
 - Nikki Rad
 - Kim Chen

## How to run
### Running by pulling image from docker hub
1. Pull the image from docker hub
```bash
docker pull jacksors/stat-315-final-group4:latest
```
2. Run the image
```bash
docker run -p 8888:8888 jacksors/stat-315-final-group4:latest
```
3. Open the link in your browser
```
http://localhost:8888
```

### Running by building the image from source
1. Clone the repository
```bash
git clone git@github.com:jacksors/stat-315-final-project.git
```
2. Navigate to the repository
```bash
cd stat-315-final-project
```
3. Build the image
```bash
docker build -t stat-315-final-group4 .
```
4. Run the image
```bash
docker run -p 8888:8888 stat-315-final-group4
```
5. Open the link in your browser
```
http://localhost:8888
```