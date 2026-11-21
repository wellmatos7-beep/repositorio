#!/bin/bash
# Renomeia e organiza as fotos no padrão da página Livros
# Uso: coloque na RAIZ do repositório e rode: bash renomear-fotos.sh
set -e
mkdir -p assets/img/retratos assets/img/pesquisa assets/img/arquivo assets/img/livros assets/img/capas

mv_safe() { if [ -f "$1" ]; then cp -n "$1" "$2" && echo "OK $2"; else echo "FALTA: $1"; fi; }

# Retratos
mv_safe "Imagens e Fotos/WellingtonMatos.Foto1.png.jpg" "assets/img/retratos/wellington-matos-01.jpg"
mv_safe "Imagens e Fotos/WellingtonMatos.Foto2.png.png" "assets/img/retratos/wellington-matos-02.png"
mv_safe "Imagens e Fotos/WellingtonMatos.Foto4.png.png" "assets/img/retratos/wellington-matos-04.png"
mv_safe "Imagens e Fotos/WellingtonMatos.Foto5.png.png" "assets/img/retratos/wellington-matos-05.png"
mv_safe "Imagens e Fotos/WellingtonMatos.Foto6.png.jpg" "assets/img/retratos/wellington-matos-06.jpg"
# Pesquisa
mv_safe "Imagens e Fotos/Cartografia2GuerraMA.Foto1.png" "assets/img/pesquisa/cartografia-maranhao-01.png"
mv_safe "Imagens e Fotos/humberto_de_campos_sage_20260509_233803.png" "assets/img/pesquisa/humberto-de-campos-arquivo.png"
mv_safe "Imagens e Fotos/TremPousoB25D_FotoWellingtonMatos.jpg" "assets/img/pesquisa/trem-pouso-b25d.jpg"
mv_safe "Imagens e Fotos/IlhaGrande_Hum.DeCampos.FotoWellingtonMatos.jpg" "assets/img/pesquisa/ilha-grande-humberto-de-campos.jpg"
mv_safe "Imagens e Fotos/AviãoB25D.FonteAirfix.jpg" "assets/img/pesquisa/aviao-b25d-airfix.jpg"
mv_safe "Imagens e Fotos/FortalezaVoadora_B17.jpg" "assets/img/pesquisa/fortaleza-voadora-b17.jpg"
# Arquivo
mv_safe "Imagens e Fotos/AeroportoSaoLuis1940FotoArquivoPublico.jpg" "assets/img/arquivo/aeroporto-sao-luis-1940.jpg"
mv_safe "Imagens e Fotos/MateriaEstadão_WellingtonMatos.jpg" "assets/img/arquivo/materia-estadao.jpg"
mv_safe "Imagens e Fotos/JornalEstadoSaoPaulo.FotoAlmirPrazeres.jpg" "assets/img/arquivo/jornal-estado-almir-prazeres.jpg"
mv_safe "FotoDestroçosB25D.Foto_AlmirPrazeres.webp" "assets/img/arquivo/destrocos-b25d-almir-prazeres.webp"
mv_safe "Imagens e Fotos/CaminhaoOpelBlitz_ProjetoAMA.Foto1.jpg" "assets/img/arquivo/caminhao-opel-blitz-ama-01.jpg"
mv_safe "Imagens e Fotos/MateriasEmJornais_B25d.png" "assets/img/arquivo/imprensa-b25d-jornais.png"
# Livros
mv_safe "LivroWellingtonMatos_Foto1.jpg" "assets/img/livros/livro-foto-01.jpg"
mv_safe "LivroWellingtonMatos_Foto2.png" "assets/img/livros/livro-foto-02.png"
mv_safe "LivroWellingtonMatos_Foto3.jpg" "assets/img/livros/livro-foto-03.jpg"
mv_safe "LivroWellingtonMatos_Foto4 - Copia.jpg" "assets/img/livros/livro-foto-04.jpg"
mv_safe "LivroWellingtonMatos_Foto6 - Copia.png" "assets/img/livros/livro-foto-06.png"
mv_safe "LivroWellingtonMatos_Foto7 - Copia.png" "assets/img/livros/livro-foto-07.png"
# Capas (usam os otimizados já existentes)
mv_safe "capa-chao-brasil-600w.webp" "assets/img/capas/capa-chao-brasil-600w.webp"
mv_safe "capa-entre-areias-500w.webp" "assets/img/capas/capa-entre-areias-500w.webp"
mv_safe "hero-wellington-800w.webp" "assets/img/capas/hero-wellington-800w.webp"

echo ""
echo "Concluído. Confira com: ls -R assets/img"
echo "Depois apague as cópias duplicadas (confira antes):"
echo '  git rm "LivroWellingtonMatos_Foto1 - Copia.jpg" "LivroWellingtonMatos_Foto2 - Copia.png" "LivroWellingtonMatos_Foto3 - Copia.jpg"'
