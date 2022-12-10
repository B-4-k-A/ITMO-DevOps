manage="$1/manage.py"

pip3 install -r "$1/requirements.txt"
python3 $manage makemigrations
python3 $manage migrate
python3 $manage collectstatic
python3 $manage test # Run the standard tests. These should all pass.
python3 $manage createsuperuser # Create a superuser
