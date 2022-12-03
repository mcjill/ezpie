#!/usr/bin/env bash
# Requirement: html-proofer, jekyll

set -eu

PAGES_BRANCH="gh-pages"

SITE_DIR="_site"

_opt_dry_run=false

_config="_config.yml"

_no_pages_branch=false

_backup_dir="$(mktemp -d)"

_baseurl=""

build() {
  # clean up
  if [[ -d $SITE_DIR ]]; then
    rm -rf "$SITE_DIR"
  fi

  # build
  JEKYLL_ENV=production bundle exec jekyll b -d "$SITE_DIR$_baseurl" --config "$_config"
}

test() {
  bundle exec htmlproofer \
    --disable-external \
    --check-html \
    --allow_hash_href \
    "$SITE_DIR"
}

resume_site_dir() {
  if [[ -n $_baseurl ]]; then
    # Move the site file to the regular directory '_site'
    mv "$SITE_DIR$_baseurl" "${SITE_DIR}-rename"
    rm -rf "$SITE_DIR"
    mv "${SITE_DIR}-rename" "$SITE_DIR"
  fi
}

setup_gh() {
  if [[ -z $(git branch -av | grep "$PAGES_BRANCH") ]]; then
    _no_pages_branch=true
    git checkout -b "$PAGES_BRANCH"
  else
    git checkout -f "$PAGES_BRANCH"
  fi
}

deploy() {
  git config --global user.name "ishaan010"
  git config --global user.email "ezpie.co@gmail.com"

  git update-ref -d HEAD
  git add -A
  git commit -m "deployed site to github pages"

  if $_no_pages_branch; then
    git push -u origin "$PAGES_BRANCH"
  else
    git push -f
  fi
}

main() {
  build
  test
  resume_site_dir

  if $_opt_dry_run; then
    exit 0
  fi

  setup_gh
  deploy
}

main