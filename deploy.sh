#!/bin/bash
docker stop flask-container
docker rm flask-container
docker run -di --name flask-container -p 5000:5000 flask-image-new /bin/bash
docker exec -it flask-container /bin/bash/
python app.py --host=0.0.0.0