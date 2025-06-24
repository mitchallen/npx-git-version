#!/bin/bash
# Bump git version tag as a semantic version patch, minor, or major
if [ -z "$1" ]; then
  echo "Select version bump type:"
  select bump in patch minor major; do
    case $bump in
      patch|minor|major)
        set -- $bump
        break
        ;;
      *)
        echo "Invalid option. Please select 1, 2, or 3."
        ;;
    esac
  done
fi
if git describe --tags --abbrev=0 >/dev/null 2>&1; then
  latest_tag=$(git describe --tags --abbrev=0)
else
  latest_tag="v0.0.0"
fi
# Extract version numbers
if [[ $latest_tag =~ ^v([0-9]+)\.([0-9]+)\.([0-9]+)$ ]]; then
  major=${BASH_REMATCH[1]}
  minor=${BASH_REMATCH[2]}
  patch=${BASH_REMATCH[3]}
  case $1 in
    patch)
      new_patch=$((patch+1))
      new_minor=$minor
      new_major=$major
      ;;
    minor)
      new_patch=0
      new_minor=$((minor+1))
      new_major=$major
      ;;
    major)
      new_patch=0
      new_minor=0
      new_major=$((major+1))
      ;;
    *)
      echo "Unknown bump type: $1"
      exit 1
      ;;
  esac
  new_tag="v${new_major}.${new_minor}.${new_patch}"
  git tag "$new_tag"
  git push origin "$new_tag"
  echo "Bumped version: $latest_tag -> $new_tag"
else
  echo "Latest tag $latest_tag is not in v#.#.# format."
fi


