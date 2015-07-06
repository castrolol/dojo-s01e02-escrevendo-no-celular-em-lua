[![Build Status](https://travis-ci.org/castrolol/dojo-s01e02-escrevendo-no-celular-em-lua.svg)](https://travis-ci.org/castrolol/dojo-s01e02-escrevendo-no-celular-em-lua)
# # Dojo DevMT S01E02 

# Versão em LUA

## Instalando

para instalar o lua e o luaRocks


```shell
sudo apt-get install lua5.1 luarocks -y
```
no windows:

 * [Instalar o Lua](https://code.google.com/p/luaforwindows/downloads/list)
 * [Instalar o LuaRocks (Gerenciador de Pacotes)](https://github.com/keplerproject/luarocks/wiki/Installation-instructions-for-Windows)

### Instalando o Busted (framework de Testes)

```shell
luarocks install busted
```

## Rodando os Testes!

```shell
busted 
```
------------------

## Data e Local
Data: 04/07/2015  
Local: Nuvem Tecnologia  

## Problema
Um dos serviços mais utilizados pelos usuários de aparelhos celulares são os SMS (Short Message Service), que permite o envio de mensagens curtas (até 255 caracteres em redes GSM e 160 caracteres em redes CDMA).

Para digitar uma mensagem em um aparelho que não possui um teclado QWERTY embutido é necessário fazer algumas combinações das 10 teclas numéricas do aparelho para conseguir digitar. Cada número é associado a um conjunto de letras como a seguir:

	Letras  ->  Número
	ABC    ->  2 
	DEF    ->  3 
	GHI    ->  4 
	JKL    ->  5 
	MNO    ->  6 
	PQRS    ->  7 
	TUV    ->  8 
	WXYZ   ->  9 
	Espaço -> 0 

Desenvolva um programa que, dada uma mensagem de texto limitada a 255 caracteres, retorne a seqüência de números que precisa ser digitada. Uma pausa, para ser possível obter duas letras referenciadas pelo mesmo número, deve ser indicada como _.

Por exemplo, para digitar "SEMPRE ACESSO O DOJOPUZZLES", você precisa digitar:

	77773367_7773302_222337777_777766606660366656667889999_9999555337777

[Link do problema](http://dojopuzzles.com/problemas/exibe/escrevendo-no-celular/)
 