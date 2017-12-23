# Source generated colors.
source "${HOME}/.cache/wal/colors.sh"

reload_dunst() {
    pkill dunst
    dunst \
        -lb "${color15:-#F0F0F0}" \
        -nb "${color15:-#F0F0F0}" \
        -cb "${color15:-#F0F0F0}" \
        -lf "${color0:=#000000}" \
        -bf "${color0:=#000000}" \
        -cf "${color0:=#000000}" \
        -nf "${color0:=#000000}" \
	-conf ~/dotfiles/dunst/dunstrc &
}

echo "Reloading dunst colors"
reload_dunst &
