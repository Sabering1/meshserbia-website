#!/bin/bash

# Interaktivna Git skripta sa prikazom prethodnog commit-a

# Inicijalizacija Git repozitorijuma (ako već nije)
if [ ! -d ".git" ]; then
    echo "Inicijalizacija Git repozitorijuma..."
    git init
else
    echo "Git repozitorijum već postoji."
fi

# Prikaz poslednjeg commit-a ako postoji
if git rev-parse HEAD >/dev/null 2>&1; then
    echo "Poslednji commit:"
    git log -1 --pretty=format:"%h - %s (%ci)"
else
    echo "Nema prethodnih commit-ova."
fi

# Dodavanje svih fajlova u staging
echo "Dodavanje svih fajlova u staging..."
git add .

# Traženje poruke commit-a od korisnika
read -p "Unesite poruku za commit: " commit_message

# Commit
git commit -m "$commit_message"

# Push
echo "Slanje promena na udaljeni repozitorijum..."
git push
