FROM projectdiscovery/subfinder:latest
FROM projectdiscovery/nuclei:latest
FROM python:3
RUN pip install django
COPY . /main
WORKDIR /main/hamravesh
EXPOSE 8000
CMD python3 manage.py runserver