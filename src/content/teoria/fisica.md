---
title: Física
---

# FÍSICA - RESUM COMPLET PBAU (UIB)

## ⚠️ REGLES D'OR DE LA UIB PER A L'EXAMEN DE FÍSICA
1. **Justifica-ho tot:** Fes servir frases curtes connectores (ex: "Aplicant el principi de conservació de l'energia mecànica..." o "Per la tercera llei de Kepler..."). Una fórmula aïllada sense text pot suposar un 0.
2. **Atenció a les Unitats:** Un resultat sense unitats, o amb les unitats equivocades, et restarà **-0,1 punts** directament.
3. **Potències de 10:** Vigila molt amb la calculadora. Un error de l'ordre de magnitud (ex: posar $10^{6}$ en lloc de $10^{5}$) també et restarà **-0,1 punts**.
4. **Ortografia:** Et poden treure fins a **1 punt** de la nota global per faltes d'ortografia. Repassa el text!

---

## 1. CAMP GRAVITATORI

### Força i Camp
**Força gravitatòria:**
$$\vec{F}=-G\frac{m_1\cdot m_2}{r^2}\vec{u}\text{ (N)}\Rightarrow|\vec{F}|=G\frac{m_1\cdot m_2}{r^2}$$

**Camp gravitatori:**
$$\vec{g}=\frac{\vec{F}}{m}=-G\frac{M}{r^2}\vec{u}\text{ (N/kg) o (m/s}^2\text{)}\Rightarrow|\vec{g}|=G\frac{M}{r^2}$$

### Lleis de Kepler
* **1a Llei:** $2a=r_a+r_p$ (Semieix major = apoastre + periastre)
* **2a Llei (Conservació moment angular):**
  $$L=m\cdot v\cdot r\Rightarrow L_1=L_2\Rightarrow m_1\cdot v_1\cdot r_1=m_2\cdot v_2\cdot r_2$$
* **3a Llei:**
  $$\frac{T^2}{R^3}=\frac{4\pi^2}{GM}=\text{constant}\Rightarrow\frac{T_1^2}{R_1^3}=\frac{T_2^2}{R_2^3}$$

### Moviment Orbital
Si $F_c=F_G$:
$$\frac{m\cdot v^2}{R}=G\frac{M\cdot m}{R^2}\Rightarrow v_{orb}=\sqrt{\frac{G\cdot M}{R}}\text{ (m/s)}$$

Relacions derivades (sabent que $v=\frac{2\pi R}{T}$):
$$\frac{4\pi^2 R^2}{T^2}=\frac{GM}{R}\Rightarrow\frac{4\pi^2}{GM}=\frac{T^2}{R^3}$$

Aïllant variables:
$$T=\sqrt{\frac{4\pi^2 R^3}{GM}}\quad;\quad R=\sqrt[3]{\frac{T^2 GM}{4\pi^2}}\quad;\quad M=\frac{4\pi^2 R^3}{G T^2}$$

### Energies i Treball
**Potencial gravitatori:** $$V=-G\frac{M}{r}\text{ (J/kg)}$$

**Energia potencial:** $$E_p=-G\frac{m_1\cdot m_2}{r}=m\cdot V\text{ (J)}$$

**Treball:** (+ El fa el camp, − El fa una força externa)
$$W=m(V_A-V_B)\text{ (J)} \quad;\quad W=-\Delta E_p=-(E_{pf}-E_{po})$$

**Moviment orbital (òrbita circular):**
$$E_c=\frac{1}{2}m\cdot v^2=\frac{1}{2}\frac{GMm}{R}$$
$$E_c=-\frac{1}{2}E_p$$
$$E_m=E_c+E_p=\frac{1}{2}E_p=-E_c\Rightarrow E_p=2E_m$$

**Moviment radial (Conservació de l'Energia Mecànica):**
$$E_{m1}=E_{m2}\Rightarrow E_{p1}+E_{c1}=E_{p2}+E_{c2}$$
$$-G\frac{Mm}{r_1}+\frac{1}{2}mv_1^2=-G\frac{Mm}{r_2}+\frac{1}{2}mv_2^2$$

**Velocitat d'escapament** (si $E_m=0$ a l'infinit):
$$\frac{1}{2}m\cdot v^2-\frac{GMm}{r}=0\Rightarrow v_{esc}=\sqrt{\frac{2GM}{r}}$$

---

## 2. CAMP ELÈCTRIC

### Força i Camp
**Força elèctrica:**
$$\vec{F}=k\frac{q_1\cdot q_2}{r^2}\vec{u}\text{ (N)}\Rightarrow\vec{F}=q\cdot\vec{E}$$

**Camp elèctric:**
$$\vec{E}=\frac{\vec{F}}{q}=k\frac{Q}{r^2}\vec{u}\text{ (N/C)}$$
*Nota: En mòdul $|\vec{E}|=k\frac{|Q|}{r^2}$ (no posar signe i després, quan descomposis, sí). Atenció al signe de la càrrega per determinar el sentit de la força.*

### Energia i Potencial
**Potencial elèctric (posar signe de $q$):** $$V=k\frac{q}{r}\text{ (V) o (J/C)}$$

**Energia potencial (posar signe):** $$E_p=k\frac{q_1\cdot q_2}{r}\text{ (J)}\Rightarrow E_p=q\cdot V$$

### Treball i Conservació de l'Energia
**Treball:**
$$W=-\Delta E_p\Rightarrow W=-q\cdot\Delta V=-q(V_A-V_B)\text{ (J)}$$

**Conservació $E_m$:**
$$E_{m1}=E_{m2}\Rightarrow E_{p1}+E_{c1}=E_{p2}+E_{c2}$$
$$\frac{1}{2}m\cdot v_1^2+q\cdot V_A=\frac{1}{2}m\cdot v_2^2+q\cdot V_B$$

---

## 3. CAMP MAGNÈTIC

### Força sobre una càrrega en moviment
**Llei de Lorentz:**
$$\vec{F}=q\cdot(\vec{v}\times\vec{B})\Rightarrow|\vec{F}|=q\cdot v\cdot B\cdot\sin\alpha\text{ (N)}$$

Si entra perpendicular ($\alpha=90^\circ$), fa un Moviment Circular Uniforme ($F_c=F_m$):
$$\frac{v^2}{R}m=q\cdot v\cdot B\Rightarrow R=\frac{m\cdot v}{|q|\cdot B}$$

Període ($v=\frac{2\pi R}{T}$): $$T=\frac{2\pi m}{q\cdot B}$$

### Camp magnètic creat per corrents ($I$)
* **Fil rectilini:** $B=\dfrac{\mu_0\cdot I}{2\pi\cdot r}\text{ (T)}$
* **Centre d'una espira:** $B=\dfrac{\mu_0\cdot I}{2\cdot r}\text{ (T)}$
* **Bobina:** $B=n\dfrac{\mu_0\cdot I}{l}\text{ (T)}$ — on $n$ és el número d'espires per metre.

### Forces entre corrents
**Força entre dos corrents paral·lels:**
$$\frac{F}{l}=\frac{I_1\cdot I_2\cdot\mu_0}{2\pi\cdot r}\text{ (N/m)}$$
*(Corrents en el mateix sentit s'atreuen, sentits oposats es repel·leixen).*

**Força magnètica sobre un corrent rectilini:**
$$\vec{F}=I\cdot(\vec{l}\times\vec{B})\Rightarrow|\vec{F}|=I\cdot l\cdot B\cdot\sin\alpha\text{ (N)}$$

### Inducció Electromagnètica (Faraday-Lenz)
**Flux magnètic:**
$$\Phi=\vec{B}\cdot\vec{S}=B\cdot S\cdot\cos\alpha\text{ (Wb)}$$
*(On $\alpha$ és l'angle entre $\vec{B}$ i el vector normal a la superfície $\vec{n}_S$).*

**Força electromotriu induïda (Llei de Faraday):**
$$\varepsilon=-\frac{d\Phi}{dt}\text{ (V)}$$
Amb Llei d'Ohm: $\varepsilon=I\cdot R$. En un generador: $\varepsilon=B\cdot S\cdot\omega\cdot\sin(\omega t)$

**Llei de Lenz:** El corrent induït crea un camp magnètic que s'oposa a la variació del flux magnètic que el produeix (el signe negatiu de $\varepsilon$ ho reflecteix).

---

## 4. ONES I SO

### Ones Transversals
Equació de l'ona ($v_{vib}\perp v_{prop}$):
$$y(x,t)=A\sin(kx\pm\omega t+\varphi_0)$$
*(Suma si es propaga a l'esquerra, resta si es propaga a la dreta. Si $\varphi_0=\pi/2\Rightarrow y(x,t)=A\cos(kx\pm\omega t)$).*

**Paràmetres:**
* Nombre d'ona: $k=\dfrac{2\pi}{\lambda}\text{ (m}^{-1}\text{)}$
* Pulsació: $\omega=\dfrac{2\pi}{T}\text{ (rad/s)}$
* Freqüència: $f=\dfrac{1}{T}\text{ (Hz)}$
* Velocitat de propagació: $v_p=\dfrac{\lambda}{T}=\dfrac{\omega}{k}\text{ (m/s)}$
* Velocitat de vibració: $v_{vib}=\dfrac{dy}{dt}\text{ (m/s)}$
* Acceleració: $a=\dfrac{dv_{vib}}{dt}\text{ (m/s}^2\text{)}$

**Atenuació:**
$$A_1\cdot r_1=A_2\cdot r_2$$
En ones sonores ($A\propto p$): $p_1\cdot r_1=p_2\cdot r_2$

### Ones Longitudinals i So
Nivell d'intensitat sonora: $$\beta=10\log\left(\frac{I}{I_0}\right)\text{ (dB)}$$

Intensitat de l'ona: $$I_1\cdot r_1^2=I_2\cdot r_2^2\quad;\quad I=\frac{P}{S}=\frac{E}{t\cdot S}\text{ (W/m}^2\text{)}$$
*(On $S=4\pi r^2$ per a ones esfèriques).*

### Efecte Doppler (so)
$$f'=f_0\left(\frac{v_{so}\pm v_{obs}}{v_{so}\mp v_{foco}}\right)\text{ (Hz)}$$

---

## 5. LA LLUM I ÒPTICA GEOMÈTRICA

### Refracció i Reflexió
**Llei de Snell:** $$n_1\cdot\sin\theta_1=n_2\cdot\sin\theta_2\quad;\quad n=\frac{c}{v}$$
*(On $n$ és l'índex de refracció, $c=3\cdot10^8\text{ m/s}$, $\theta$ és l'angle respecte a la normal).*

**Reflexió:** L'angle de reflexió és igual a l'angle d'incidència ($\theta_{incid}=\theta_{refl}$).

### Lents Primes (Criteri DIN)
*(Objecte a l'esquerra, d'on ve la llum. $s$ sol ser negativa si es col·loca a l'esquerra).*

* **Lent Convergent ($f'>0$):** Imatge segons distància — ex. lupa (objecte entre focus i lent → imatge virtual, dreta, més gran); projector (imatge real, invertida, més gran).
* **Lent Divergent ($f'<0$):** Imatge sempre virtual, dreta, més petita.

**Llei de Descartes:** $$\frac{1}{s'}-\frac{1}{s}=\frac{1}{f'}$$

**Augment lateral:** $$A_L=\frac{y'}{y}=\frac{s'}{s}$$

### Òptica de l'Ull i Diòptries
**Potència (Diòptries):** $$P=\frac{1}{f'(\text{m})}$$
* $s'$ de l'ull ≈ 2,5 cm (distància al cristal·lí).
* **Miopia** (ull allargat) → es corregeix amb lent **divergent**.
* **Hipermetropia** (ull aplanat) → es corregeix amb lent **convergent**.

### Telescopi de Galileu
Format per lent objectiu i lent ocular (divergent, $f'_{ocular}<0$). Objecte a l'infinit ($s=\infty$).
$$\text{Distància entre lents (D)}=f'_{obj}+f'_{ocular}$$
$$\text{Augment (A)}=-\frac{f'_{obj}}{f'_{ocular}}$$

---

## 6. FÍSICA MODERNA

### Efecte Fotoelèctric
$$E_{rad}=h\cdot f\quad;\quad f=\frac{c}{\lambda}\Rightarrow E_{rad}=h\frac{c}{\lambda}$$
$$E_{rad}=W+E_c\Rightarrow h\cdot f=h\cdot f_0+E_c$$
*(On $W=h\cdot f_0$ és el treball d'extracció i $f_0=c/\lambda_0$ la freqüència llindar).*

**Potencial de frenada ($V$):**
$$E_p=E_c\Rightarrow q_e\cdot V=\frac{1}{2}m\cdot v^2\Rightarrow V=\frac{E_c}{q_e}\text{ (V)}$$
*(Conversió: $1\text{ eV}=1{,}602\cdot10^{-19}\text{ J}$).*

### Física Nuclear i Defecte de Massa
Símbols: $A$ (nombre màssic, p+n), $Z$ (nombre atòmic, p). $N=A-Z$.

**Defecte de massa:**
$$\Delta m=[Z\cdot m_p+(A-Z)\cdot m_n]-M_i\text{ (u)}$$
*(Conversió: $1\text{ u}=931{,}5\text{ MeV}$).*

Energia d'enllaç: $E=\Delta m\cdot c^2$ (o conversió directa si donen MeV/u). Energia d'enllaç per nucleó: $E/A$ (MeV/nucleó).

**Reaccions nuclears:**
* Radiació $\alpha$: $_Z^A X\rightarrow\ _{Z-2}^{A-4}Y+\ _2^4\text{He}$ *(resta 4 al nombre màssic A i 2 a l'atòmic Z)*
* Radiació $\beta^-$: $_Z^A X\rightarrow\ _{Z+1}^A Y+\ _{-1}^0 e+\bar{\nu}_e$ (antineutrí) *(suma 1 al nombre atòmic Z)*
* Radiació $\beta^+$: $_Z^A X\rightarrow\ _{Z-1}^A Y+\ _{+1}^0 e+\nu_e$ (neutrí)
* Fissió/Fusió: $\Delta m=m_{reactius}-m_{productes}$, es passa a MeV.

*Consell UIB: en cadenes de desintegració (Urani → Plom), aplica les regles anteriors pas a pas.*

### Llei de Desintegració Radioactiva
$$N=N_0\cdot e^{-\lambda t}\quad;\quad A=A_0\cdot e^{-\lambda t}\quad;\quad m=m_0\cdot e^{-\lambda t}$$
* $\lambda$: constant de desintegració ($\text{s}^{-1}$, dies$^{-1}$) — $\lambda=\dfrac{\ln 2}{T_{1/2}}$
* $A$: Activitat ($A=\lambda N$), en Bq (desintegracions/s)
* $\tau$: vida mitjana, $\tau=1/\lambda$
* $T_{1/2}$: període de semidesintegració, $T_{1/2}=\ln 2/\lambda$

### Efecte Doppler Relativista i Espectre
$$\lambda_{rebuda}=\lambda_{emesa}\sqrt{\frac{1+\beta}{1-\beta}}\quad\left(\beta=\frac{v}{c}\right)$$

**Llei de Wien:** $$\lambda_m\cdot T=2897\ \mu\text{m}\cdot\text{K}$$
