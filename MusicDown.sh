#!/bin/bash

# 🔗 Link da playlist ou vídeo (troque aqui quando quiser)
link="PLyl7qZbh6rjUcMgXMA1IeXdH3ko0Wq4f4"

# 🧠 Comando com extração de áudio em MP3 e qualidade máxima (VBR 0)
comando="python3 ./yt-dlp $link -x --audio-format mp3 --audio-quality 0 -f bestaudio"

# 🚀 Abre o Konsole, executa o comando e mantém a janela aberta
konsole --hold -e bash -c "$comando"
