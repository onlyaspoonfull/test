#!/usr/bin/env sh

_() {
  YEAR="1970"
  echo "Github Username: "
  read -r USERNAME

  [ -z "$USERNAME" ] && exit 1
  [ ! -d curiositIy ] && mkdir curiositIy

  cd "curiositIy" || exit
  git init
  echo "# hi!" \
    >README.md
  git add .
  GIT_AUTHOR_DATE="1970-01-01T18:00:00" \
    GIT_COMMITTER_DATE="1970-01-01T18:00:00" \
    git commit -m "hi!"
  git remote add origin "https://github.com/${USERNAME}/curiositIy.git"
  git branch -M main
  git push -u origin main -f
  cd ..
  rm -rf "curiositIy"

  echo
  echo "Cool, check your profile now: https://github.com/${USERNAME}"
} && _

unset -f _
