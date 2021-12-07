% =========PRACTICA PARCIAL REDES=========

% 1)

% Los usuarios tienen canales en distintas redes sociales con distinta cantidad de seguidores en cada una.        

% Modelar los siguientes usuarios de ejemplo:
% ana tiene un canal de youtube con 3.000.000 de seguidores, un canal de instagram con 2.700.000 .seguidores, y un canal de tiktok con 1.000.000 de seguidores. Se acaba de abrir un canal de twitch así que sólo tiene 2 seguidores.

%canal(Usuario,Plataforma,CantSeguidores).
canal(ana,youtube,3000000).
canal(ana,instagram,2700000).
canal(ana,tiktok,1000000).
canal(ana,twitch,2).

% beto tiene un canal de twitch con 120.000 seguidores, un canal de youtube con 6.000.000 de seguidores, y un canal de instagram con 1.100.000 seguidores, pero no tiene canal de tik tok.
canal(beto,twitch,120000).
canal(beto,youtube,6000000).
canal(beto,instagram,1100000).


% cami tiene canal de tiktok con 2.000 seguidores. No tiene canal de instagram ni de twitch ni de youtube.
canal(cami,tiktok,2000).
% dani tiene un canal de youtube con 1000000 de seguidores.
canal(dani,youtube,1000000).
% evelyn tiene un instagram con 1 seguidor.
canal(evelyn,instagram,1).


% 2)
% Sobre los influencers:
% influencer/1 se cumple para un usuario que tiene más de 10.000 seguidores en total entre todas sus redes.
influencer(Usuario):-
    canal(Usuario,Red,Seguidores),
    canal(Usuario,OtraRed,OtrosSeguidores),
    Red \= OtraRed,
    SeguidoresTotales is Seguidores + OtrosSeguidores,
    SeguidoresTotales > 10000.

influencer(Usuario):-
    canal(Usuario,_,Seguidores),
    Seguidores > 10000.

% En los usuarios de ejemplo, dani, ana y beto son influencers.
% omnipresente/1 se cumple para un influencer si está en cada red que existe (se consideran como existentes aquellas redes en las que hay al menos un usuario).
% Por ejemplo, ana es omnipresente.
% exclusivo/1 se cumple cuando un influencer está en una única red.
% Por ejemplo, dani es exclusivo.