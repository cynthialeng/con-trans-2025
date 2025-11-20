# syntax=docker/dockerfile:1

FROM python:3.13.7-trixie

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

WORKDIR /con-trans-2025

#EXPOSE 8888
EXPOSE 8050

#CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"]
CMD ["python", "app/app.py"]