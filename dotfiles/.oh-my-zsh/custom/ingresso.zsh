alias runserver="sudo python manage.py runserver www.rossdev.ingresso.co.uk:80 --settings=whitelabel.settings.local"
alias runadmin="python manage.py runserver www.rossdev.ingresso.co.uk:8000 --settings=services.settings.local"
alias rollback_wl="kubectl rollout undo deployment whitelabel"
