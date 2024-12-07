#!usr/bin/bash

# Initialize the target directory and options
target="."
options=""

# Parse options and arguments
while [[ $# -gt 0 ]]; do
  case "$1" in
    -*)
      options+="${1:1}"  # Skip the leading dash
      ;;
    *)
      target="$1"
      ;;
  esac
  shift
done

if [[ ! -e "$target" ]]; then
  echo "Error: $target does not exist."
  exit 1
fi

if [[ "$options" == *d* ]]; then
  if [[ -d "$target" ]]; then
    echo "$target"
    exit 0
  else
    echo "Error: $target is not a directory."
    exit 1
  fi
fi

ls -$options "$target"











# target="."
# 
# opt_l=false
# opt_a=false
# opt_d=false
# opt_i=false
# opt_R=false
# while [[ $# -gt 0 ]]; do
#   case "$1" in
#     -l*)
#       opt_l=true
#       ;;
#     -a*)
#       opt_a=true
#       ;;
#     -d*)
#       opt_d=true
#       ;;
#     -i*)
#       opt_i=true
#       ;;
#     -R*)
#       opt_R=true
#       ;;
#     -*)
# 	for (( i=1; i<${#1}; i++ )); do
# 		char="${1:i:1}"
# 		case "$char" in
# 		l)
# 			opt_l=true
# 			;;
# 		a)
# 			opt_a=true
# 			;;
# 		d)
# 			opt_d=true
# 			;;
# 		i)
# 			opt_i=true
# 			;;
# 		R)
# 			opt_R=true
# 			;;
# 		*)
# 			echo "Invalid option: -$char"
# 			exit 1
# 			;;
# 		esac
# 	done
# 	;;
#       *)
#        target="$1"
#       ;;
#   esac
#   shift
# done
# 
# if [[ ! -e "$target" ]]; then
#   echo "Error: $target does not exist."
#   exit 1
# fi
# 
# options=""
# [[ "$opt_l" = true ]] && options+="l"
# [[ "$opt_a" = true ]] && options+="a"
# [[ "$opt_i" = true ]] && options+="i"
# [[ "$opt_R" = true ]] && options+="R"
# if [[ "$opt_d" = true ]]; then
#   if [[ -d "$target" ]]; then
#     echo "$target"
#   else
#     echo "Error: $target is not a directory."
#     exit 1
#   fi
# else
#   # Use ls with accumulated options
#   ls -$options "$target"
# fi

