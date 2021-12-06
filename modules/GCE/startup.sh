#!/bin/bash
sudo apt update
sudo apt -y install cowsay
sudo /usr/games/cowsay "Look My Cowsay" | sudo tee /tmp/saludo.txt