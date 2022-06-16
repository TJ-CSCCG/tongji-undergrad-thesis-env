function tlmgr-install() {
    for pkg_name in $@
    do
        pkg_names+=" $pkg_name"
    done
    cid=$(sudo docker ps -qf "name=tut-env")
    sudo docker exec -i ${cid} bash -c "tlmgr install ${pkg_names}"
}
