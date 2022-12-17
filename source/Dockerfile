FROM python:3.8
ENV PYTHONBUFFERED 1
WORKDIR /home/vagrant/DevOps/lab-1/
COPY . .
RUN pip install -r requirements.txt
RUN python3 manage.py makemigrations && python3 manage.py migrate && python3 manage.py collectstatic --noinput && python3 manage.py test
RUN echo "from django.contrib.auth.models import User; User.objects.create_superuser('vagrant', 'vagrant@example.com', 'vagrant')" | python manage.py shell
EXPOSE 80
CMD ["gunicorn", "--bind", ":80", "--workers", "3", "locallibrary.wsgi:application"]

