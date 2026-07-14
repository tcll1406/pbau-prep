---
title: Matemàtiques II
---

# MATEMÀTIQUES II - RESUM PBAU (UIB)

## 1. ÀLGEBRA LINEAL (Matrius i Sistemes)

**Operacions i Propietats:**
Per multiplicar matrius ($A \cdot B$), el nombre de columnes de $A$ ha de coincidir amb el nombre de files de $B$.
$$(A \cdot B)^T = B^T \cdot A^T \quad ; \quad (A \cdot B)^{-1} = B^{-1} \cdot A^{-1}$$

**Matriu Inversa:**
Una matriu $A$ és invertible si i només si $|A| \neq 0$.
$$A^{-1} = \frac{1}{|A|} \text{Adj}(A)^T$$

**Equacions Matricials:**
Compte amb l'ordre en multiplicar per la inversa (no hi ha propietat commutativa).
Si $A \cdot X = B \Rightarrow A^{-1} \cdot A \cdot X = A^{-1} \cdot B \Rightarrow X = A^{-1} \cdot B$
Si $X \cdot A = B \Rightarrow X \cdot A \cdot A^{-1} = B \cdot A^{-1} \Rightarrow X = B \cdot A^{-1}$

**Discussió de Sistemes (Teorema de Rouché-Frobenius):**
*Sempre s'ha d'anomenar el teorema a l'examen.* Sigui $A$ la matriu de coeficients i $A^*$ la matriu ampliada de dimensió $n \times (n+1)$.
1. Si $|A| \neq 0 \Rightarrow \text{Rang}(A) = \text{Rang}(A^*) = n \Rightarrow$ **Sistema Compatible Determinat (SCD)** (1 solució).
2. Si $|A| = 0 \Rightarrow \text{Rang}(A) < n$. Calculem $\text{Rang}(A^*)$:
   * Si $\text{Rang}(A) = \text{Rang}(A^*) < n \Rightarrow$ **Sistema Compatible Indeterminat (SCI)** ($\infty$ solucions).
   * Si $\text{Rang}(A) \neq \text{Rang}(A^*) \Rightarrow$ **Sistema Incompatible (SI)** (0 solucions).

---

## 2. GEOMETRIA ESPACIAL

**Vectors:**
* **Producte Escalar** (Dona un nombre. Serveix per angles i perpendicularitat):
    $$\vec{u} \cdot \vec{v} = |\vec{u}| \cdot |\vec{v}| \cdot \cos(\alpha) \Rightarrow \text{Si } \vec{u} \perp \vec{v} \Rightarrow \vec{u} \cdot \vec{v} = 0$$
* **Producte Vectorial** (Dona un vector. Serveix per trobar vectors normals/perpendiculars a dos vectors o plans):
    $$\vec{w} = \vec{u} \times \vec{v} = \begin{vmatrix} \vec{i} & \vec{j} & \vec{k} \\ u_1 & u_2 & u_3 \\ v_1 & v_2 & v_3 \end{vmatrix}$$

**Plans ($\pi$):**
Equació general: $Ax + By + Cz + D = 0$.
El vector normal (perpendicular) al pla és $\vec{n} = (A, B, C)$.
Per comprovar si 3 punts i l'origen formen un "pla orbital" (coplanaris), l'origen $(0,0,0)$ ha de complir l'equació del pla format pels 3 punts.

**Distàncies:**
Distància d'un punt $P(x_0, y_0, z_0)$ a un pla $\pi: Ax + By + Cz + D = 0$:
$$d(P, \pi) = \frac{|A x_0 + B y_0 + C z_0 + D|}{\sqrt{A^2 + B^2 + C^2}}$$

**Projecció Ortogonal d'un Punt sobre un Pla:**
1. Crear una recta $r$ que passi pel punt $P$ amb vector director $\vec{v}_r = \vec{n}_\pi$.
2. Fer la intersecció entre la recta $r$ i el pla $\pi$ (substituint $x,y,z$ de la recta a l'equació del pla per trobar $\lambda$).

---

## 3. ANÀLISI (Funcions, Límits, Derivades i Integrals)

**Límits i Regla de L'Hôpital:**
Si tenim indeterminacions $\frac{0}{0}$ o $\frac{\infty}{\infty}$, derivem numerador i denominador per separat:
$$\lim_{x \to c} \frac{f(x)}{g(x)} = \lim_{x \to c} \frac{f'(x)}{g'(x)}$$
*Nota UIB: Si tenim $0 \cdot (-\infty)$, s'ha de transformar primer en $\frac{\infty}{\infty}$ baixant una funció al denominador (ex: $x \cdot \ln(x) \rightarrow \frac{\ln(x)}{1/x}$).*

**Teorema de Bolzano (Molt recurrent a la UIB):**
Si $f(x)$ és contínua en un interval tancat $[a, b]$ i canvia de signe en els extrems ($f(a) \cdot f(b) < 0$), llavors existeix almenys un punt $c \in (a, b)$ tal que:
$$f(c) = 0$$
*(Sempre s'ha de comprovar la continuïtat abans d'aplicar-lo).*

**Derivades i Optimització:**
* Punts crítics: $f'(x) = 0$.
* Si $f''(x) > 0 \Rightarrow$ Mínim.
* Si $f''(x) < 0 \Rightarrow$ Màxim.
* Punts d'inflexió (canvi concavitat/convexitat): $f''(x) = 0$.

**Integrals i Àrees (Regla de Barrow):**
*Sempre posar el $dx$ per evitar penalitzacions.*
Àrea compresa entre dues funcions $f(x)$ i $g(x)$ entre $x=a$ i $x=b$:
$$A = \int_{a}^{b} |f(x) - g(x)| \,dx$$
**Integració per parts:**
$$\int u \,dv = u \cdot v - \int v \,du \quad \text{(Regla ALPES/ILATE per triar la } u \text{)}$$

---

## 4. PROBABILITAT (Sempre definir els successos $A$ i $B$)

**Fórmules Bàsiques:**
$$P(A \cup B) = P(A) + P(B) - P(A \cap B)$$
Probabilitat del contrari: $P(\overline{A}) = 1 - P(A)$.
Lleis de De Morgan: $P(\overline{A} \cap \overline{B}) = P(\overline{A \cup B})$.

**Probabilitat Condicionada:**
La probabilitat que passi $A$ sabent que ha passat $B$:
$$P(A|B) = \frac{P(A \cap B)}{P(B)} \Rightarrow P(A \cap B) = P(A|B) \cdot P(B)$$

**Teorema de la Probabilitat Total (Diagrames d'Arbre):**
$$P(B) = P(B|A_1) \cdot P(A_1) + P(B|A_2) \cdot P(A_2) + \dots$$
*Consell UIB: Fer servir diagrames d'arbre (per experiments seqüencials) o diagrames de Venn (quan donen percentatges globals).*