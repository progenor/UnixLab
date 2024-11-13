szam=$(wget -q https://www.ms.sapientia.ro/~lszabo/rand.php -O -)

while ((szam != 10)); do
    if ((cnt > 10)); then
        echo "not found"
        exit 1
    fi
    echo $szam
    sleep 0.1
    szam=$(wget -q https://www.ms.sapientia.ro/~lszabo/rand.php -O -)
    ((cnt++))
done
echo found
