#!/usr/bin/env bash
# Validate that every skill has a SKILL.md with non-empty `name` and `description`
# frontmatter, and that the name matches its folder. Exit non-zero on any failure.
set -u

root="$(cd "$(dirname "$0")" && pwd)"
skills_dir="$root/skills"
fail=0
count=0

if [ ! -d "$skills_dir" ]; then
  echo "ERROR: no skills/ directory at $skills_dir"
  exit 1
fi

for dir in "$skills_dir"/*/; do
  [ -d "$dir" ] || continue
  name="$(basename "$dir")"
  file="$dir/SKILL.md"
  count=$((count + 1))

  if [ ! -f "$file" ]; then
    echo "FAIL  $name: missing SKILL.md"
    fail=1
    continue
  fi

  # Extract the first frontmatter block (between the first two --- lines).
  fm="$(awk 'NR==1 && $0!="---"{exit} /^---/{c++; next} c==1{print} c==2{exit}' "$file")"

  fm_name="$(printf '%s\n' "$fm" | grep -E '^name:' | head -1 | sed 's/^name:[[:space:]]*//')"
  fm_desc="$(printf '%s\n' "$fm" | grep -E '^description:' | head -1 | sed 's/^description:[[:space:]]*//')"

  if [ -z "$fm_name" ]; then
    echo "FAIL  $name: frontmatter missing 'name'"
    fail=1
  elif [ "$fm_name" != "$name" ]; then
    echo "FAIL  $name: frontmatter name '$fm_name' != folder '$name'"
    fail=1
  fi

  if [ -z "$fm_desc" ]; then
    echo "FAIL  $name: frontmatter missing 'description'"
    fail=1
  fi

  if [ -n "$fm_name" ] && [ "$fm_name" = "$name" ] && [ -n "$fm_desc" ]; then
    echo "OK    $name"
  fi
done

echo "---"
if [ "$fail" -eq 0 ]; then
  echo "All $count skill(s) valid."
else
  echo "Validation failed."
fi
exit "$fail"
