Install
~~~~~~~

Install it by a one-line command:

.. code:: bash

    $ docker run --name golang -v /tmp/share:/tmp/share -it ubuntu  bash
    $ apt-get update && apt-get install wget git make vim-gtk exuberant-ctags -y 
    $ cd
    $ git clone https://github.com/pingliu/go-vim.git
    $ cd go-vim && bash install.sh
    $ exit
    $ docker start golang
    $ docker exec -it golang bash
    $ wget https://go.dev/dl/go1.23.2.linux-arm64.tar.gz
    $ rm -rf /usr/local/go && tar -C /usr/local -xzf go1.23.2.linux-arm64.tar.gz
    $ vim .vimrc :GoInstallBinaries

