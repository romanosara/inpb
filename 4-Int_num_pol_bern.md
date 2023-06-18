## Integrazione Numerica con i Polinomi di Bernstein

…

### Costruzione della formula di approssimazione

L'obiettivo è trovare una formula di approssimazione $I_n(x)$ che all'aumentare di $n$ converga all'integrale indefinito $$\int_a^x{f(t)dt}$$.

 Sia $f(x)$ una funzione continua definita su un intervallo $[a,b]$. I valori di $f(x)$ sono considerati come $n+1$ punti equidistanti, inclusi gli estremi dell'intervallo. 

I polinomi di Bernstein, come descritto nel capitolo precedente, sono convergenti  nell'intervallo $[0,1]$, occorre quindi trasformare la funione $f(x)$ in $\phi(\xi)=f(x)$ con la trasformazione lineare $$\xi=\frac{x-a}{b-a}$$.

Siano $$B_n(\xi)=\sum_{i=0}^{n}\left(\frac{i}{n}\right)\binom{n}{i}\xi^i(1-\xi)^{n-i}$$

l'$n$-esimo polinomio di Bernstein e $R(\xi)$ il resto, ovvero la differenza tra la funzione e la sua approssimazione. 

…

### Integrazione Numerica utilizzando i polinomi di Bernstein

…

### Un metodo veloce per l'approssimazione di una funzione con i polinomi di Bernstein



