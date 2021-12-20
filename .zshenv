# EDITOR
export EDITOR=code
export SUDO_EDITOR=nano

# LANGUAGE
result=$(ls /usr/share/i18n/locales/ | grep ja)
if [ -n "$result" ]; then
  export LANGUAGE=ja_JP.UTF-8
else
  export LANGUAGE=en_US.UTF-8
fi
