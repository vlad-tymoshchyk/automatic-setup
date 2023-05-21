ITick='✓'
ICross='✗'

_expect_exists() {
  local code=0

  for filepath in "$@"
  do
    if [ -f $filepath ]; then
      echo "$ITick $filepath"
    else
      code=1
      echo "$ICross $filepath"
    fi
  done

  return $code
}

_expect_dir_exists() {
  local code=0

  for filepath in "$@"
  do
    if [ -d $filepath ]; then
      echo "$ITick $filepath"
    else
      code=1
      echo "$ICross $filepath"
    fi
  done

  return $code
}
