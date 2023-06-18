## I polinomi di Bernstein

#### Definizione

Sia $f(x)$ una funzione continua definita sull'intervallo $[0,1]$. La funzione $$B_n(x)=\sum_{i=0}^nf\left(\frac{i}{n}\right)\binom{n}{i}x^i(1-x)^{n-i}$$ si definisce *polinomio di Bernstein di ordine $n$ della funzione $f(x)$* ed è appunto un polinomio in $x$ di grado $\leq n$. 

#### Proprietà

1. $BE_0^n(0)=1$

   infatti $BE_0^n(0)=\binom{n}{0}0^0(1-0)^{n-0}=1\quad$ (per convenzione si prende $0^0=1$) 

   $BE_i^n(0)=0,\qquad i=1,2,...,n$ 

   infatti $BE_i^n(0)=\binom{n}{i}0^i(1-0)^{n-i}\quad$ ($0$ è uno zero di molteplicità $i$).

2. $BE_n^n(1)=1$

   infatti $BE_n^n(1)=\binom{n}{n}1^n(1-1)^{n-n}=1\quad$ (per convenzione si prende $(1-1)^0=1$) 

   $BE_i^n(1)=0,\qquad i=0,1,2,...,n-1$ 

   infatti $BE_i^n(1)=\binom{n}{i}1^i(1-1)^{n-i}\quad$ ($1$ è uno zero di molteplicità $n-i$).

3. $\frac{dBE_i^n(t)}{dt}=n\left[BE_{i-1}^{n-1}(t)-BE_i^{n-1}(t)\right]\quad$ con $BE_{-1}^r(t)=0$

   infatti dalla definizione di $BE_i^n(t)$ si ricava che \begin{equation*}\begin{split}\frac{dBE_i^n(t)}{dt}&=\frac{n!}{i!(n-i)!}[it^{i-1}(1-t)^{n-i}-(n-i)t^i(1-t)^{n-i-1}]=\\&=n[\frac{(n-1)!}{(i-1)!(n-i)!}t^{i-1}(1-t)^{n-i}-\frac{(n-1)!}{i!(n-i-1)!}t^i(1-t)^{n-i-1}]=\\&=n\left[BE_{i-1}^{n-1}(t)-BE_i^{n-1}(t)\right]\end{split}\end{equation*}

4. $BE_i^n(t)\geq 0, \quad i=0,1,...,n$ 

   infatti dato che $BE_i^n(t)=\binom{n}{i}t^i(1-t)^{n-i}$, il coefficiente binomiale è sempre positivo per definizione, $t^i\geq 0$ e $(1-t)^{n-i}\geq 0$ perchè $t\in[0,1]$.

5. I polinomi di Bernstein sono simmetrici rispetto a $t$ e ad $(1-t)$ cioè $$BE_i^n(t)=BE_{n-i}^n(1-t)$$ 

   infatti $$BE_{n-i}^n(1-t)=\binom{n}{n-i}(1-t)^{n-i}t^{n-n+i}=\binom{n}{n-i}(1-t)^{n-i}t^i=BE_i^n(t)$$

6. $BE_i^n(t)$ ha un massimo in $t=\frac{i}{n}$ 

   infatti per essere un punto di massimo, si dovrà avere $\frac{dBE_i^n(t)}{dt}=0$: $$\frac{dBE_i^n(t)}{dt}=\frac{n!}{(i-1)!(n-i-1)!}t^{i-1}(1-t)^{n-i-1}\left[\frac{1-t}{n-i}-\frac{t}{1}\right]=0$$ poichè $\frac{n!}{(i-1)!(n-i-1)!}t^{i-1}(1-t)^{n-i-1}\neq 0$ si pone $\left[\frac{1-t}{n-i}-\frac{t}{1}\right]=0$ ottenendo $$\frac{i-it-nt+it}{(n-i)i}=\frac{i-nt}{i(n-i)}=0,\quad i=1,..., n-1$$ quindi $$i-nt=0\iff t=\frac{i}{n}$$ e inoltre  $$\frac{dBE_i^n(t)}{dt}>0 \text{ per }t<\frac{i}{n}$$ e $$\frac{dBE_i^n(t)}{dt}<0 \text{ per }t>\frac{i}{n}$$ da cui si deduce che $t=\frac{i}{n}$ è un punto di massimo.

7. I polinomi di Bernstein possono essere calcolati mediante una formula ricorsiva: $$BE_i^n(t)=(1-t)BE_i^{n-1}(t)+tBE_{i-1}^{n-1}(t)$$ con $BE_0^0(t)=0$ e $BE_j^n(t)\equiv 0$ per $j\notin \{0,1,...,n\}$ 

   infatti, potendo scrivere $\binom{n}{i}=\binom{n-1}{i}+\binom{n-1}{i-1}$, allora \begin{equation*}\begin{split}BE_i^n(t)&=\binom{n-1}{i}t^i(1-t)^{n-i}+\binom{n-1}{i-1}t^i(1-t)^{n-i}=\\&=(1-t)\binom{n-1}{i}t^i(1-t)^{n-i-1}+t\binom{n-1}{i-1}t^{i-1}(1-t)^{n-i}=\\&=(1-t)BE_i^{n-1}(t)+tBE_{i-1}^{n-1}(t)\end{split}\end{equation*}

8. I polinomi di Bernstein formano una partizione dell'unità, cioè $$\sum_{i=0}^nBE_i^n(t)=1$$ 

   infatti $$\sum_{i=0}^nBE_i^n(t)=\sum_{i=0}^n\binom{n}{i}t^i(1-t)^{n-i}=[t+(1-t)]^n=1$$

9. Gli $n+1$ polinomi di Bernstein di grado $n$ formano una base per lo spazio $\mathbb{P}_n$ dei polinomi algebrici di grado $n$, infatti dim$(\mathbb{P}_n)=n+1$.

   Per dimostrare che formano una base per lo spazio dei polinomi algebrici di grado $n$, è sufficiente dimostrare che i polinomi di Bernstein sono linearmente indipendenti.

   Siano $d_0,d_1,...,d_n$ numeri reali tali che $$d_0BE_0^n(t)+d_1BE_1^n(t)+\dots+d_nBE_n^n(t)=0$$ allora per definizione di indipendenza lineare si ha $d_0=d_1=\dots=d_n=0$ 

   infatti per $t=0$ si annullano tutti i polinomi di Bernstein escluso il primo, quindi $d_0=0$. Facendo la derivata $$\sum_{i=0}^nd_i\frac{dBE_i^n(t)}{dt}\vert_{t=0}=0$$ 

   infatti $$\frac{dBE_i^n(t)}{dt}\vert_{t=0}=n[BE_0^{n-1}(0)-BE_1^{n-1}(0)]=n\ $$ poiché $BE_0^{n-1}(0)=1$ e $BE_1^{n-1}(0)= 0$. Visto che $n\neq 0$ allora $d_1=0$.

   Procedendo analogamente con le derivate successive, si ottiene quindi anche per gli altri coefficienti che $d_i=0,\quad i=2,\dots,n$.













