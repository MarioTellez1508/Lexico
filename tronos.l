%option noyywrap
%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
extern FILE *yyin;

int total_lugar = 0, total_casa = 0, total_personajes = 0;

int westeros = 0, invernalia = 0, desembarco = 0, nido = 0, altojardin = 0;
int aguasdulces = 0, rocadragon = 0, roca_casterly = 0, bastion = 0, dorne = 0;

int stark = 0, arryn = 0, tully = 0, greyjoy = 0, lannister = 0;
int tyrell = 0, martell = 0, baratheon = 0, targaryen = 0;

int eddard = 0, catelyn = 0, arya = 0, sansa = 0;
int robert = 0, joffrey = 0, stannis = 0;
int aegon = 0, daenerys = 0, aerys = 0;
int tywin = 0, jaime = 0, tyrion = 0, cersei = 0;
%}

%%
Westeros { westeros++; total_lugar++; }
Invernalia { invernalia++; total_lugar++; }
Desembarco[ ]del[ ]Rey { desembarco++; total_lugar++; }
Nido[ ]de[ ][AÁ]guilas { nido++; total_lugar++; }
Altojard[ií]n { altojardin++; total_lugar++; }
Aguasdulces { aguasdulces++; total_lugar++; }
Rocadrag[oó]n { rocadragon++; total_lugar++; }
Roca[ ]Casterly { roca_casterly++; total_lugar++; }
Basti[oó]n[ ]de[ ]Tormentas { bastion++; total_lugar++; }
Dorne { dorne++; total_lugar++; }

Stark { stark++; total_casa++; }
Arryn { arryn++; total_casa++; }
Tully { tully++; total_casa++; }
Greyjoy { greyjoy++; total_casa++; }
Lannister { lannister++; total_casa++; }
Tyrell { tyrell++; total_casa++; }
Martell { martell++; total_casa++; }
Baratheon { baratheon++; total_casa++; }
Targaryen { targaryen++; total_casa++; }

Eddard { eddard++; total_personajes++; }
Catelyn { catelyn++; total_personajes++; }
Arya { arya++; total_personajes++; }
Sansa { sansa++; total_personajes++; }
Robert { robert++; total_personajes++; }
Joffrey { joffrey++; total_personajes++; }
Stannis { stannis++; total_personajes++; }
Aegon { aegon++; total_personajes++; }
Daenerys { daenerys++; total_personajes++; }
Aerys { aerys++; total_personajes++; }
Tywin { tywin++; total_personajes++; }
Jaime { jaime++; total_personajes++; }
Tyrion { tyrion++; total_personajes++; }
Cersei { cersei++; total_personajes++; }

. {}

\n {}
%%
int main()
{
    char filename[100];
    printf("Ingrese el nombre del archivo: ");
    scanf("%s", filename);
    yyin = fopen(filename, "r");
    if (!yyin) { perror("Error abriendo archivo"); return 1; }
    yylex();
    fclose(yyin);

    printf("Resultados del analisis:\n");
    
    printf("\nFrecuencia de Lugares:\n");
    printf("Westeros: %d  \t\t Pertenece al: %.2f porciento\n", westeros, (westeros * 100.0) / total_lugar, (westeros * 100.0) / total_lugar);
    printf("Invernalia: %d \t Pertenece al: %.2f porciento\n", invernalia, (invernalia * 100.0) / total_lugar, (invernalia * 100.0) / total_lugar);
    printf("Desembarco del Rey: %d   Pertenece al: %.2f porciento\n", desembarco, (desembarco * 100.0) / total_lugar, (desembarco * 100.0) / total_lugar);
    printf("Nido de Aguilas: %d  \t Pertenece al: %.2f porciento\n", nido, (nido * 100.0) / total_lugar, (nido * 100.0) / total_lugar);
    printf("Altojardin: %d  \t\t Pertenece al: %.2f porciento\n", altojardin, (altojardin * 100.0) / total_lugar, (altojardin * 100.0) / total_lugar);
    printf("Aguasdulces: %d \t Pertenece al: %.2f porciento\n", aguasdulces, (aguasdulces * 100.0) / total_lugar, (aguasdulces * 100.0) / total_lugar);
    printf("Rocadragon: %d  \t\t Pertenece al: %.2f porciento\n", rocadragon, (rocadragon * 100.0) / total_lugar, (rocadragon * 100.0) / total_lugar);
    printf("Roca Casterly: %d  \t Pertenece al: %.2f porciento\n", roca_casterly, (roca_casterly * 100.0) / total_lugar, (roca_casterly * 100.0) / total_lugar);
    printf("Bastion de Tormentas: %d  Pertenece al: %.2f porciento\n", bastion, (bastion * 100.0) / total_lugar, (bastion * 100.0) / total_lugar);
    printf("Dorne: %d  \t\t Pertenece al: %.2f porciento\n", dorne, (dorne * 100.0) / total_lugar, (dorne * 100.0) / total_lugar);
    printf("Total de lugares: %d\n", total_lugar);
    
    printf("\nFrecuencia de Casas:\n");
    printf("Stark: %d  \t\t Pertenece al: %.2f porciento\n", stark, (stark * 100.0) / total_casa, (stark * 100.0) / total_casa);
    printf("Arryn: %d \t\t Pertenece al: %.2f porciento\n", arryn, (arryn * 100.0) / total_casa, (arryn * 100.0) / total_casa);
    printf("Tully: %d \t\t Pertenece al: %.2f porciento\n", tully, (tully * 100.0) / total_casa, (tully * 100.0) / total_casa);
    printf("Greyjoy: %d \t\t Pertenece al: %.2f porciento\n", greyjoy, (greyjoy * 100.0) / total_casa, (greyjoy * 100.0) / total_casa);
    printf("Lannister: %d \t\t Pertenece al: %.2f porciento\n", lannister, (lannister * 100.0) / total_casa, (lannister * 100.0) / total_casa);
    printf("Tyrell: %d \t\t Pertenece al: %.2f porciento\n", tyrell, (tyrell * 100.0) / total_casa, (tyrell * 100.0) / total_casa);
    printf("Martell: %d \t\t Pertenece al: %.2f porciento\n", martell, (martell * 100.0) / total_casa, (martell * 100.0) / total_casa);
    printf("Baratheon: %d \t\t Pertenece al: %.2f porciento\n", baratheon, (baratheon * 100.0) / total_casa, (baratheon * 100.0) / total_casa);
    printf("Targaryen: %d \t\t Pertenece al: %.2f porciento\n", targaryen, (targaryen * 100.0) / total_casa, (targaryen * 100.0) / total_casa);
    printf("Total de casas: %d\n", total_casa);
    
    printf("\nFrecuencia de Personajes:\n");
    printf("Eddard: %d  \t\t Pertenece al: %.2f porciento\n", eddard, (eddard * 100.0) / total_personajes, (eddard * 100.0) / total_personajes);
    printf("Catelyn: %d \t\t Pertenece al: %.2f porciento\n", catelyn, (catelyn * 100.0) / total_personajes, (catelyn * 100.0) / total_personajes);
    printf("Arya: %d  \t\t Pertenece al: %.2f porciento\n", arya, (arya * 100.0) / total_personajes, (arya * 100.0) / total_personajes);
    printf("Sansa: %d  \t\t Pertenece al: %.2f porciento\n", sansa, (sansa * 100.0) / total_personajes, (sansa * 100.0) / total_personajes);
    printf("Robert: %d \t\t Pertenece al: %.2f porciento\n", robert, (robert * 100.0) / total_personajes, (robert * 100.0) / total_personajes);
    printf("Joffrey: %d \t\t Pertenece al: %.2f porciento\n", joffrey, (joffrey * 100.0) / total_personajes, (joffrey * 100.0) / total_personajes);
    printf("Stannis: %d \t\t Pertenece al: %.2f porciento\n", stannis, (stannis * 100.0) / total_personajes, (stannis * 100.0) / total_personajes);
    printf("Aegon: %d \t\t Pertenece al: %.2f porciento\n", aegon, (aegon * 100.0) / total_personajes, (aegon * 100.0) / total_personajes);
    printf("Daenerys: %d \t\t Pertenece al: %.2f porciento\n", daenerys, (daenerys * 100.0) / total_personajes, (daenerys * 100.0) / total_personajes);
    printf("Aerys: %d \t\t Pertenece al: %.2f porciento\n", aerys, (aerys * 100.0) / total_personajes, (aerys * 100.0) / total_personajes);
    printf("Tywin: %d \t\t Pertenece al: %.2f porciento\n", tywin, (tywin * 100.0) / total_personajes, (tywin * 100.0) / total_personajes);
    printf("Jaime: %d \t\t Pertenece al: %.2f porciento\n", jaime, (jaime * 100.0) / total_personajes, (jaime * 100.0) / total_personajes);
    printf("Tyrion: %d \t\t Pertenece al: %.2f porciento\n", tyrion, (tyrion * 100.0) / total_personajes, (tyrion * 100.0) / total_personajes);
    printf("Cersei: %d \t\t Pertenece al: %.2f porciento\n", cersei, (cersei * 100.0) / total_personajes, (cersei * 100.0) / total_personajes);
    printf("Total de personajes: %d\n", total_personajes);

	return 0;
}