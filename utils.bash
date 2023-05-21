ITick='\xE2\x9C\x93'
ICross='\xe2\x9c\x97'

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
