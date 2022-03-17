
# Tutorial de getting started:
https://www.boost.org/doc/libs/1_69_0/more/getting_started/unix-variants.html

# Não consegui buildar a imagem.
# É só dar um "apt install libboost-all-dev" manualmente no container.

# Docker image build steps

- apt install libboost-all-dev
- ENV BOOST_BIN_PATH=/usr/lib/x86_64-linux-gnu
- ENV BOOST_HEADER_PATH=/usr/include/boost
