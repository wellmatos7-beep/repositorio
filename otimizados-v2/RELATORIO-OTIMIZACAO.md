# Relatório modern-web-guidance — wellingtonmatos.com.br
Data: 2026-11-18

## 1. Otimização de imagens (feito)
Hero `LivroWellingtonMatos_Foto1.jpg` 1792x2400, 2,7 MB:
- 480w.webp 24kb, 800w.webp 53kb, 1000w.webp 74kb, 800w.avif 50kb
- Economia: ~97% (2757kb -> 53-74kb)

Capas:
- `CapaLivro...Brazilian.png` 1,6MB -> 300w 44kb / 600w 145kb webp (103kb avif) = -91%
- `EntreAreias...png` 719kb -> 300w 34kb / 500w 67kb webp (47kb avif) = -90%

Arquivos gerados em `otimizados/` (664kb total) + `index-otimizado-mwg.html` (12,3kb)
com `<picture>`, `srcset/sizes`, `width/height`, `fetchpriority="high"` só no LCP,
`loading="lazy"` nas demais (conforme guia `optimize-image-priority`).

## 2. Limpeza duplicadas (recomendado deletar)
Confirmado por md5 (arquivos idênticos):
- `LivroWellingtonMatos_Foto1.jpg` == `LivroWellingtonMatos_Foto1 - Copia.jpg` (2,7MB cada) -> deletar 1 = -2,7MB
- `LivroWellingtonMatos_Foto2.png` == `LivroWellingtonMatos_Foto2 - Copia.png` (3,5MB cada) -> -3,5MB
- `LivroWellingtonMatos_Foto3.jpg` == `LivroWellingtonMatos_Foto3 - Copia.jpg` (217kb cada) -> -217kb
Total: ~6,4MB economizados sem perder nada.

Comando:
```bash
git rm "LivroWellingtonMatos_Foto1 - Copia.jpg" "LivroWellingtonMatos_Foto2 - Copia.png" "LivroWellingtonMatos_Foto3 - Copia.jpg" "LivroWellingtonMatos_Foto3 - Copia.jpg"
# atualize referências em index.html para usar sem " - Copia" ou otimizados/
```

Outros "- Copia" únicos (verificar se são usados):
- Foto4-Copia.jpg 117kb, Foto6-Copia.png 606kb, Foto7-Copia.png 2,1MB

## 3. Vídeos pesados (34,9MB em Imagens e Fotos/)
- LançamentoLivro_Well.mp4 21M
- II Guerra Mundial Wellington Matos.mp4 4,8M
- II Guerra Wellington Matos.mp4 4,2M
- WellingtonMatos.Foto3.png.mp4 2,5M (nome com .png.mp4 — renomear)
- WellingtonMatos_IIGuerra2.mp4 2,4M
Recomendação (guia `performance`): subir para YouTube e embutir com `lite-youtube-embed` + `poster` webp, `preload="none"`. GitHub Pages não é CDN de vídeo.

## 4. Auditoria outras páginas
- `galeria.html`: bom uso de `loading="lazy"`, `dialog` para lightbox, `prefers-reduced-motion`, filtros com `aria-pressed`. Melhorar: adicionar `width/height` + `srcset` (Fotos 2MB `WellingtonMatos.Foto2.png.png`, 1,2MB Foto4, 862kb cartografia), renomear `.png.png` / `.png.jpg`, converter para webp. `content-visibility: auto` nas sections abaixo da dobra.
- `livros.html`: capa com `loading="eager"` correto para LCP da página, mas falta `fetchpriority="high"` + `width/height` + `srcset`. og:image aponta para PNG 1,6MB — trocar por webp 600w.
- `artigos/`: contém `index-otimizado.html` e `wellingtonmatos-index-humanizado.html` duplicando a home — definir canônico e remover ou redirecionar para evitar conteúdo duplicado SEO.
- Geral: pasta `Imagens e Fotos/` 49MB — Github Pages lento. Mover para `imagens/` sem espaços/acentos, nomes minúsculos com hífen.

## 5. Como aplicar
1. Copie `otimizados/` para a raiz do repo
2. Teste `index-otimizado-mwg.html` e renomeie para `index.html` após validar
3. `git rm` duplicadas, commit + push -> GitHub Pages redeploy automático
4. Converter restante da galeria com mesmo script PIL (qualidade 75-78 webp)

### Modern Web Guidance
- search "image optimization" -> performance, html, optimize-image-priority
- search "responsive images" -> responsive-design, deliver-optimized-decorative-images
- retrieve "optimize-image-priority,performance"
