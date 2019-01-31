@echo off

:choice
color 3B
title start
echo 1) English
echo 2) Nederlands
set /p language=C:\

if %language% == 1 goto en
if %language% == 2 goto nl
goto choice

:en
cls
echo 1) USA
echo 2) UK
set /p en=C:\

if %en% == 1 goto enus
if %en% == 2 goto enuk
goto en

:enus
cls
cd lang-en
start xanadaos_enus

:enuk
cd lang-en
start xanadaos_enuk

:nl
cls
echo 1) Belgie en Nederland
set /p nl=C:\

if %nl% == 1 goto nlbe
if %nl% == s goto nlbe_safe
if %nl% == S goto nlbe_safe
if %nl% == safe goto nlbe_safe
if %nl% == Safe goto nlbe_safe
if %nl% == school goto nlbe_safe
if %nl% == School goto nlbe_safe
goto nl

:nlbe
cls
cd lang-nl
start xanadaos_nlbe

:nlbe_safe
cls
cd lang-nl
start xanadaos_nlbe_safe
