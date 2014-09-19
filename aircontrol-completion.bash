_aircontrol()
{
  local cur=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=()

  i=0
  while read -r line; do
      i=`expr $i + 1`
      if [ $i -lt 5 ]; then continue; fi # skip the header lines

      room=$( echo $line | cut -d ' ' -f 7-100 )

      if `echo "$room" | grep ^${cur}.*$ > /dev/null`; then
        COMPREPLY+=("$(printf "%q" "$room")")
      fi

      # break if no more items will follow (e.g. Flags != 3)
      if [ $(echo $line | cut -d ' ' -f 3) -ne '3' ]; then
          break
      fi
  done < <(dns-sd -B _airplay._tcp)
}

complete -o nospace -F _aircontrol aircontrol
