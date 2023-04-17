FROM hermsi/alpine-sshd

COPY . /home/mike/.config/nvim/ 

RUN apk update \
    && apk add neovim

# alpine
# docker run -p 2222:22 -it -e ROOT_PASSWORD=not_secure --name ssh-test minterl/vim-ssh:1.0.0
# docker run -p 2222:22 -it --env-file .env --name ssh-test --rm minterl/vim-ssh:1.0.0

# debian
# docker run -p 2222:22 -it -e SSH_KEY="$(cat ~/.ssh/id_rsa.pub)" --name ssh-test krlmlr/debian-ssh
