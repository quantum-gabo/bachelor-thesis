5## The many-body Schrödinger equation

$$
\hat{H}\Psi_{i}(x_{1},\dots,x_{N}) = E_{j}\Psi{j}(x_{1},\dots,x_{N})
$$

The total Hamiltonian of the N-electron system is given by:
$$
\hat{H} = \hat{T} + \hat{V} + \hat{W}
$$
where the kinetic energy operator is
$$
\hat{T} = \sum_{j=1}^{N} -\frac{\nabla_{j}^{2}}{2}
$$
($\nabla_{j}$ denotes the gradient operator with respect to $\mathbf{r}_{j}$, the position vector of the $j_{th}$ electron), the potential operator is
$$
\hat{V} = \sum_{j=1}^{N} v(\mathbf{r}_{j}),
$$
and the electron-electron interaction is in general
$$
\hat{W} = \frac{1}{2}\sum_{j,k;\,j \neq k}^{N} w(|\mathbf{r}_{j} - \mathbf{r}_{k}|).
$$
The usual choice is of course the Coulomb interaction $w(|\mathbf{r}_{j}-\mathbf{r}_{k}|) =1 /|\mathbf{r}_{j}-\mathbf{r}_{k}|$, but different forms of interaction, including zero interaction, are also allowed. 

If a system is in the $j_{th}$ many-body eigenstate, the associated value if a physical observable $\hat{O}$ is obtained from the expectation value $O_{j} = \big<\Psi_{j}\big|\hat{O}\big|\Psi_{j}\big>$.  For instance, the ground-state energy is given by
$$
E_{0} = \big<\Psi_{0}\big|\hat{H}\big|\Psi_{0}\big>
$$
where $\Psi_{0}$ is the ground-state wave function. 

>[!Important]
>As of today, solving the full many-body Schrödinger equation has remained an intractable numerical problem, except for special cases such as two-electron systems and systems with high symmetry and reduced dimensionality.

>[!Quote] Kohn (1999)
>In general the many-electron wave function $\Psi(x_{1},\dots,x_{N})$ for a system of $N$ electrons is not a legitimate scientific concept, when $N\gtrapprox 10^3$. 


The many-body wave function contains vastly more information than one would ever care to know about an $N$-electron system. It is also worth mentioning that the wave function for a particular set of coordinates cannot be observed directly. The quantity that can be observed is the probability that the $N$ electrons are at a particular set of coordinates, $\mathbf{x}_{1},\dots,\mathbf{x}_{N}$. This probability is equal to $\Psi^*(\mathbf{x}_{1},\dots,\mathbf{x}_{N}) \Psi(\mathbf{x}_{1},\dots,\mathbf{x}_{N})$.
## The Hohenberg-Kohn theorem 
We consider a system of $N$ interacting electrons in a finite region of space, governed by the many-body Hamiltonian. The single-particle probability density of the electronic ground state  is given by
$$
n_{0}(\mathbf{r}) = N \sum_{\sigma} \int d\mathbf{x}_{2}\dots \int d\mathbf{x}_{N}\big|\Psi_{0}(\mathbf{r}, \sigma, \mathbf{x}_{2}, \dots,\mathbf{x}_{N}) \big|^2 ,
$$
where we use the shorthand notation $\int d\mathbf{x}_{l} = \sum_{\sigma_{l}} \int d^3 r_{l}$ to denote integration over the $l_{th}$ spatial coordinate and summation over the $l_{th}$ spin index. 

>[!Note] Hohenberg-Kohn theorem
>In a finite, interacting $N$-electron system with a given particle-particle interaction there exists a one-to-one correspondence between the external potential $v(\mathbf{r})$ and the ground-state density $n_{0}(\mathbf{r})$. In other words, the external potential is a unique functional of the ground-state density, $v[n_{0}](\mathbf{r})$, up to an arbitrary additive constant.

A useful way to write down the functional described by Hohenberg-Kohn theorem is in terms of the single-electron wave functions, $\Psi_{i}(\mathbf{r})$.  The energy functional can be written as 
$$
E[\{\Psi_{i}\}] = E_{known}[\{\Psi_{i}\}] + E_{XC}[{\Psi_{i}}],
$$
where we have split the functional in to a collection of terms we can write in a simple analytical form, $E_{known}[\{\Psi_{i}\}]$, and everything else, $E_{XC}$. The *known* terms include four contributions
$$
E_{known}[\{\Psi_{i}\}] = -\frac{\hbar^2}{m}\sum_{i}\int\Psi^*_{i}\nabla^2\Psi_{i}d^3r + \int V(\mathbf{r})n(\mathbf{r})d^3r + \frac{e^2}{2} \int \int \frac{n(\mathbf{r})n(\mathbf{r'})}{\big|\mathbf{r} - \mathbf{r'}\big|}d^3r \,d^3 r' + E_{ion}.
$$
The term $E_{XC}[{\Psi_{i}}]$, is the exchange correlation functional, and it is defined to include all the quantum mechanical effects that are not included in the *known* terms.  So far, nothing guarantees that finding the minimum energy solutions of the total energy functional is any easier than solving the Schrödinger equation for the wave function. However, Kohn and Sham showed that the task of finding the right electron density can be expressed in a way that involves solving a set of equations, where each equation only involves a single electron. The Kohn-Sham equations have the form
$$
\left[ -\frac{\hbar^2}{2m}\nabla^2 + V(\mathbf{r}) + V_{H}(\mathbf{r}) + V_{XC}(\mathbf{r})\right]\Psi_{i}(\mathbf{r}) = \varepsilon_{i}\Psi_{i}(\mathbf{r})
$$
The solution of the Kohn-Sham equations are single-electron wave functions that depend on only three spatial variables, $\Psi_{i}(\mathbf{r})$. On the left-hand side of the Kohn-Sham equations there are three potentials, $V$, $V_{H}$ and $V_{XC}$. The first one defines the interaction between an electron and the collection of atomic nuclei. The second is called the **Hartree potential** and is defined by
$$
V_{H}(\mathbf{r})=e^2\int \frac{n(\mathbf{r'})}{\big|\mathbf{r} - \mathbf{r'}\big|}d^3 r
$$
This potential describes the Coulomb repulsion between the electron being considered in one of the Kohn-Sham equations and the total electron density defined by all electrons in the problem.  $V_{XC}$ can formally be defined as a *functional derivative* of the exchange-correlation energy
$$
V_{XC}(\mathbf{r}) = \frac{\delta E_{XC}(\mathbf{r})}{\delta n(\mathbf{r})}
$$
To solve the Kohn-Sham equations, we need to define the Hartree potential, and to define the Hartree potential we need to know the electron density. But to find the electron density, we must know the single-electron wave functions, and to know these functions we must solve the Kohn-Sham equations. 

>[!Tip] Algorithm
>1) Define an initial, trial electron density, $n(\mathbf{r})$
>2) Solve the Kohn-Sham equations defined using the trial electron density to find the single-particle wave functions, $\Psi_{i}(\mathbf{r})$.
>3) Calculate the electron density defined by the Kohn-Sham single-particle wave functions from step 2, $n_{KS}(\mathbf{r}) = 2\sum_{i}\Psi^*_{i}(\mathbf{r})\Psi_{i}(\mathbf{r})$ 


