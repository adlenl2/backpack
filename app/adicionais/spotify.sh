#!/bin/bash

usuario=$(./app/utils/UsuarioLogado.sh)

wget http://repository.spotify.com/pool/non-free/s/spotify-client/spotify-client_1.0.64.407.g9bd02c2d-26_amd64.deb -O /home/$usuario/Downloads/spotify-client.deb

sudo dpkg -i /home/$usuario/Downloads/spotify-client.deb

sudo apt-get -f install

sudo rm /home/$usuario/Downloads/spotify-client.deb
