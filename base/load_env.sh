if [ -n "$ENV_URL" ]; then
  dotenv -f <(curl $ENV_URL) $*
else
  $*
fi
