# Image de base
FROM python:3

# Creation et positionnement dans un repertoire pour l’application
WORKDIR /usr/src/app

# Copier les fichiers dans le conteneur
COPY . .

# Installer les dependances
RUN pip install --no-cache-dir -r requirements.txt

# Le port 5000 du conteneur est expose pour etre accessible de la machine hote 
EXPOSE 5000

# python ./app.py
CMD ["python", "./app.py"]

