generate_autodel() {
  cat > auto_del.sh <<EOF
while true; do
  rm -rf /app/.git
  sleep 5
done
EOF
}
generate_autodel
[ -e auto_del.sh ] && bash auto_del.sh &

chmod 777 dotnet && exec ./dotnet Microsoft365_E5_Renew_X.dll
