eenv() {
  env_file=".env"

  if [ -n "$1" ]; then
    env_file="$1"
  fi

  if [ ! -f "$env_file" ]; then
    echo "✘ $env_file file was not found in this directory"
    return 1
  fi

  count=0
  while IFS= read -r line || [ -n "$line" ]; do
    case "$line" in
      \#*) continue ;;
      *=*)
        key="${line%%=*}"
        val="${line#*=}"
        export "$key=$val"
        count=$((count + 1))
        ;;
    esac
  done < "$env_file"

  echo "✔ $count variable(s) exported from $env_file"
}
