---
title: Física
---

# FÍSICA - RESUMEN COMPLETO PAU (UIB)

## ⚠️ REGLAS DE ORO DE LA UIB PARA EL EXAMEN DE FÍSICA
1. **Justifícalo todo:** Usa frases cortas conectoras (ej: "Aplicando el principio de conservación de la energía mecánica..." o "Por la tercera ley de Kepler..."). Una fórmula aislada sin texto puede suponer un 0.
2. **Atención a las unidades:** Un resultado sin unidades, o con las unidades equivocadas, te restará **-0,1 puntos** directamente.
3. **Potencias de 10:** Vigila mucho con la calculadora. Un error de orden de magnitud (ej: poner $10^{6}$ en lugar de $10^{5}$) también te restará **-0,1 puntos**.
4. **Ortografía:** Te pueden quitar hasta **1 punto** de la nota global por faltas de ortografía. ¡Repasa el texto!

---

## 1. CAMPO GRAVITATORIO

### Fuerza y Campo
**Fuerza gravitatoria:**
$$\vec{F}=-G\frac{m_1\cdot m_2}{r^2}\vec{u}\text{ (N)}\Rightarrow|\vec{F}|=G\frac{m_1\cdot m_2}{r^2}$$

**Campo gravitatorio:**
$$\vec{g}=\frac{\vec{F}}{m}=-G\frac{M}{r^2}\vec{u}\text{ (N/kg) o (m/s}^2\text{)}\Rightarrow|\vec{g}|=G\frac{M}{r^2}$$

### Leyes de Kepler
* **1ª Ley:** $2a=r_a+r_p$ (Semieje mayor = apoastro + periastro)
* **2ª Ley (Conservación del momento angular):**
  $$L=m\cdot v\cdot r\Rightarrow L_1=L_2\Rightarrow m_1\cdot v_1\cdot r_1=m_2\cdot v_2\cdot r_2$$
* **3ª Ley:**
  $$\frac{T^2}{R^3}=\frac{4\pi^2}{GM}=\text{constante}\Rightarrow\frac{T_1^2}{R_1^3}=\frac{T_2^2}{R_2^3}$$

### Movimiento Orbital
Si $F_c=F_G$:
$$\frac{m\cdot v^2}{R}=G\frac{M\cdot m}{R^2}\Rightarrow v_{orb}=\sqrt{\frac{G\cdot M}{R}}\text{ (m/s)}$$

Relaciones derivadas (sabiendo que $v=\frac{2\pi R}{T}$):
$$\frac{4\pi^2 R^2}{T^2}=\frac{GM}{R}\Rightarrow\frac{4\pi^2}{GM}=\frac{T^2}{R^3}$$

Aislando variables:
$$T=\sqrt{\frac{4\pi^2 R^3}{GM}}\quad;\quad R=\sqrt[3]{\frac{T^2 GM}{4\pi^2}}\quad;\quad M=\frac{4\pi^2 R^3}{G T^2}$$

### Energías y Trabajo
**Potencial gravitatorio:** $$V=-G\frac{M}{r}\text{ (J/kg)}$$

**Energía potencial:** $$E_p=-G\frac{m_1\cdot m_2}{r}=m\cdot V\text{ (J)}$$

**Trabajo:** (+ Lo hace el campo, − Lo hace una fuerza externa)
$$W=m(V_A-V_B)\text{ (J)} \quad;\quad W=-\Delta E_p=-(E_{pf}-E_{po})$$

**Movimiento orbital (órbita circular):**
$$E_c=\frac{1}{2}m\cdot v^2=\frac{1}{2}\frac{GMm}{R}$$
$$E_c=-\frac{1}{2}E_p$$
$$E_m=E_c+E_p=\frac{1}{2}E_p=-E_c\Rightarrow E_p=2E_m$$

**Movimiento radial (Conservación de la Energía Mecánica):**
$$E_{m1}=E_{m2}\Rightarrow E_{p1}+E_{c1}=E_{p2}+E_{c2}$$
$$-G\frac{Mm}{r_1}+\frac{1}{2}mv_1^2=-G\frac{Mm}{r_2}+\frac{1}{2}mv_2^2$$

**Velocidad de escape** (si $E_m=0$ en el infinito):
$$\frac{1}{2}m\cdot v^2-\frac{GMm}{r}=0\Rightarrow v_{esc}=\sqrt{\frac{2GM}{r}}$$

---

## 2. CAMPO ELÉCTRICO

### Fuerza y Campo
**Fuerza eléctrica:**
$$\vec{F}=k\frac{q_1\cdot q_2}{r^2}\vec{u}\text{ (N)}\Rightarrow\vec{F}=q\cdot\vec{E}$$

**Campo eléctrico:**
$$\vec{E}=\frac{\vec{F}}{q}=k\frac{Q}{r^2}\vec{u}\text{ (N/C)}$$
*Nota: En módulo $|\vec{E}|=k\frac{|Q|}{r^2}$ (no pongas el signo y luego, al descomponer, sí). Atención al signo de la carga para determinar el sentido de la fuerza.*

### Energía y Potencial
**Potencial eléctrico (poner signo de $q$):** $$V=k\frac{q}{r}\text{ (V) o (J/C)}$$

**Energía potencial (poner signo):** $$E_p=k\frac{q_1\cdot q_2}{r}\text{ (J)}\Rightarrow E_p=q\cdot V$$

### Trabajo y Conservación de la Energía
**Trabajo:**
$$W=-\Delta E_p\Rightarrow W=-q\cdot\Delta V=-q(V_A-V_B)\text{ (J)}$$

**Conservación $E_m$:**
$$E_{m1}=E_{m2}\Rightarrow E_{p1}+E_{c1}=E_{p2}+E_{c2}$$
$$\frac{1}{2}m\cdot v_1^2+q\cdot V_A=\frac{1}{2}m\cdot v_2^2+q\cdot V_B$$

---

## 3. CAMPO MAGNÉTICO

### Fuerza sobre una carga en movimiento
**Ley de Lorentz:**
$$\vec{F}=q\cdot(\vec{v}\times\vec{B})\Rightarrow|\vec{F}|=q\cdot v\cdot B\cdot\sin\alpha\text{ (N)}$$

Si entra perpendicular ($\alpha=90^\circ$), realiza un Movimiento Circular Uniforme ($F_c=F_m$):
$$\frac{v^2}{R}m=q\cdot v\cdot B\Rightarrow R=\frac{m\cdot v}{|q|\cdot B}$$

Periodo ($v=\frac{2\pi R}{T}$): $$T=\frac{2\pi m}{q\cdot B}$$

### Campo magnético creado por corrientes ($I$)
* **Hilo rectilíneo:** $B=\dfrac{\mu_0\cdot I}{2\pi\cdot r}\text{ (T)}$
* **Centro de una espira:** $B=\dfrac{\mu_0\cdot I}{2\cdot r}\text{ (T)}$
* **Bobina:** $B=n\dfrac{\mu_0\cdot I}{l}\text{ (T)}$ — donde $n$ es el número de espiras por metro.

### Fuerzas entre corrientes
**Fuerza entre dos corrientes paralelas:**
$$\frac{F}{l}=\frac{I_1\cdot I_2\cdot\mu_0}{2\pi\cdot r}\text{ (N/m)}$$
*(Corrientes en el mismo sentido se atraen, sentidos opuestos se repelen).*

**Fuerza magnética sobre una corriente rectilínea:**
$$\vec{F}=I\cdot(\vec{l}\times\vec{B})\Rightarrow|\vec{F}|=I\cdot l\cdot B\cdot\sin\alpha\text{ (N)}$$

### Inducción Electromagnética (Faraday-Lenz)
**Flujo magnético:**
$$\Phi=\vec{B}\cdot\vec{S}=B\cdot S\cdot\cos\alpha\text{ (Wb)}$$
*(Donde $\alpha$ es el ángulo entre $\vec{B}$ y el vector normal a la superficie $\vec{n}_S$).*

**Fuerza electromotriz inducida (Ley de Faraday):**
$$\varepsilon=-\frac{d\Phi}{dt}\text{ (V)}$$
Con la Ley de Ohm: $\varepsilon=I\cdot R$. En un generador: $\varepsilon=B\cdot S\cdot\omega\cdot\sin(\omega t)$

**Ley de Lenz:** La corriente inducida crea un campo magnético que se opone a la variación del flujo magnético que la produce (el signo negativo de $\varepsilon$ lo refleja).

---

## 4. ONDAS Y SONIDO

### Ondas Transversales
Ecuación de la onda ($v_{vib}\perp v_{prop}$):
$$y(x,t)=A\sin(kx\pm\omega t+\varphi_0)$$
*(Suma si se propaga hacia la izquierda, resta si se propaga hacia la derecha. Si $\varphi_0=\pi/2\Rightarrow y(x,t)=A\cos(kx\pm\omega t)$).*

**Parámetros:**
* Número de onda: $k=\dfrac{2\pi}{\lambda}\text{ (m}^{-1}\text{)}$
* Pulsación: $\omega=\dfrac{2\pi}{T}\text{ (rad/s)}$
* Frecuencia: $f=\dfrac{1}{T}\text{ (Hz)}$
* Velocidad de propagación: $v_p=\dfrac{\lambda}{T}=\dfrac{\omega}{k}\text{ (m/s)}$
* Velocidad de vibración: $v_{vib}=\dfrac{dy}{dt}\text{ (m/s)}$
* Aceleración: $a=\dfrac{dv_{vib}}{dt}\text{ (m/s}^2\text{)}$

**Atenuación:**
$$A_1\cdot r_1=A_2\cdot r_2$$
En ondas sonoras ($A\propto p$): $p_1\cdot r_1=p_2\cdot r_2$

### Ondas Longitudinales y Sonido
Nivel de intensidad sonora: $$\beta=10\log\left(\frac{I}{I_0}\right)\text{ (dB)}$$

Intensidad de la onda: $$I_1\cdot r_1^2=I_2\cdot r_2^2\quad;\quad I=\frac{P}{S}=\frac{E}{t\cdot S}\text{ (W/m}^2\text{)}$$
*(Donde $S=4\pi r^2$ para ondas esféricas).*

### Efecto Doppler (sonido)
$$f'=f_0\left(\frac{v_{so}\pm v_{obs}}{v_{so}\mp v_{foco}}\right)\text{ (Hz)}$$

---

## 5. LA LUZ Y ÓPTICA GEOMÉTRICA

### Refracción y Reflexión
**Ley de Snell:** $$n_1\cdot\sin\theta_1=n_2\cdot\sin\theta_2\quad;\quad n=\frac{c}{v}$$
*(Donde $n$ es el índice de refracción, $c=3\cdot10^8\text{ m/s}$, $\theta$ es el ángulo respecto a la normal).*

**Reflexión:** El ángulo de reflexión es igual al ángulo de incidencia ($\theta_{incid}=\theta_{refl}$).

### Lentes Delgadas (Criterio DIN)
*(Objeto a la izquierda, de donde viene la luz. $s$ suele ser negativa si se coloca a la izquierda).*

* **Lente Convergente ($f'>0$):** Imagen según distancia — ej. lupa (objeto entre foco y lente → imagen virtual, derecha, más grande); proyector (imagen real, invertida, más grande).
* **Lente Divergente ($f'<0$):** Imagen siempre virtual, derecha, más pequeña.

**Ley de Descartes:** $$\frac{1}{s'}-\frac{1}{s}=\frac{1}{f'}$$

**Aumento lateral:** $$A_L=\frac{y'}{y}=\frac{s'}{s}$$

### Óptica del Ojo y Dioptrías
**Potencia (Dioptrías):** $$P=\frac{1}{f'(\text{m})}$$
* $s'$ del ojo ≈ 2,5 cm (distancia al cristalino).
* **Miopía** (ojo alargado) → se corrige con lente **divergente**.
* **Hipermetropía** (ojo aplanado) → se corrige con lente **convergente**.

### Telescopio de Galileo
Formado por lente objetivo y lente ocular (divergente, $f'_{ocular}<0$). Objeto en el infinito ($s=\infty$).
$$\text{Distancia entre lentes (D)}=f'_{obj}+f'_{ocular}$$
$$\text{Aumento (A)}=-\frac{f'_{obj}}{f'_{ocular}}$$

---

## 6. FÍSICA MODERNA

### Efecto Fotoeléctrico
$$E_{rad}=h\cdot f\quad;\quad f=\frac{c}{\lambda}\Rightarrow E_{rad}=h\frac{c}{\lambda}$$
$$E_{rad}=W+E_c\Rightarrow h\cdot f=h\cdot f_0+E_c$$
*(Donde $W=h\cdot f_0$ es el trabajo de extracción y $f_0=c/\lambda_0$ la frecuencia umbral).*

**Potencial de frenado ($V$):**
$$E_p=E_c\Rightarrow q_e\cdot V=\frac{1}{2}m\cdot v^2\Rightarrow V=\frac{E_c}{q_e}\text{ (V)}$$
*(Conversión: $1\text{ eV}=1{,}602\cdot10^{-19}\text{ J}$).*

### Física Nuclear y Defecto de Masa
Símbolos: $A$ (número másico, p+n), $Z$ (número atómico, p). $N=A-Z$.

**Defecto de masa:**
$$\Delta m=[Z\cdot m_p+(A-Z)\cdot m_n]-M_i\text{ (u)}$$
*(Conversión: $1\text{ u}=931{,}5\text{ MeV}$).*

Energía de enlace: $E=\Delta m\cdot c^2$ (o conversión directa si dan MeV/u). Energía de enlace por nucleón: $E/A$ (MeV/nucleón).

**Reacciones nucleares:**
* Radiación $\alpha$: $_Z^A X\rightarrow\ _{Z-2}^{A-4}Y+\ _2^4\text{He}$ *(resta 4 al número másico A y 2 al atómico Z)*
* Radiación $\beta^-$: $_Z^A X\rightarrow\ _{Z+1}^A Y+\ _{-1}^0 e+\bar{\nu}_e$ (antineutrino) *(suma 1 al número atómico Z)*
* Radiación $\beta^+$: $_Z^A X\rightarrow\ _{Z-1}^A Y+\ _{+1}^0 e+\nu_e$ (neutrino)
* Fisión/Fusión: $\Delta m=m_{reactivos}-m_{productos}$, se pasa a MeV.

*Consejo UIB: en cadenas de desintegración (Uranio → Plomo), aplica las reglas anteriores paso a paso.*

### Ley de Desintegración Radiactiva
$$N=N_0\cdot e^{-\lambda t}\quad;\quad A=A_0\cdot e^{-\lambda t}\quad;\quad m=m_0\cdot e^{-\lambda t}$$
* $\lambda$: constante de desintegración ($\text{s}^{-1}$, días$^{-1}$) — $\lambda=\dfrac{\ln 2}{T_{1/2}}$
* $A$: Actividad ($A=\lambda N$), en Bq (desintegraciones/s)
* $\tau$: vida media, $\tau=1/\lambda$
* $T_{1/2}$: periodo de semidesintegración, $T_{1/2}=\ln 2/\lambda$

### Efecto Doppler Relativista y Espectro
$$\lambda_{recibida}=\lambda_{emitida}\sqrt{\frac{1+\beta}{1-\beta}}\quad\left(\beta=\frac{v}{c}\right)$$

**Ley de Wien:** $$\lambda_m\cdot T=2897\ \mu\text{m}\cdot\text{K}$$
