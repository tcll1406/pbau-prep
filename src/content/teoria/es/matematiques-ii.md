---
title: Matemàtiques II
---

# MATEMÁTICAS II - RESUMEN PAU (UIB)

## 1. ÁLGEBRA LINEAL (Matrices y Sistemas)

**Operaciones y Propiedades:**
Para multiplicar matrices ($A \cdot B$), el número de columnas de $A$ debe coincidir con el número de filas de $B$.
$$(A \cdot B)^T = B^T \cdot A^T \quad ; \quad (A \cdot B)^{-1} = B^{-1} \cdot A^{-1}$$

**Matriz Inversa:**
Una matriz $A$ es invertible si y solo si $|A| \neq 0$.
$$A^{-1} = \frac{1}{|A|} \text{Adj}(A)^T$$

**Ecuaciones Matriciales:**
Cuidado con el orden al multiplicar por la inversa (no hay propiedad conmutativa).
Si $A \cdot X = B \Rightarrow A^{-1} \cdot A \cdot X = A^{-1} \cdot B \Rightarrow X = A^{-1} \cdot B$
Si $X \cdot A = B \Rightarrow X \cdot A \cdot A^{-1} = B \cdot A^{-1} \Rightarrow X = B \cdot A^{-1}$

**Discusión de Sistemas (Teorema de Rouché-Frobenius):**
*Siempre se debe nombrar el teorema en el examen.* Sea $A$ la matriz de coeficientes y $A^*$ la matriz ampliada de dimensión $n \times (n+1)$.
1. Si $|A| \neq 0 \Rightarrow \text{Rango}(A) = \text{Rango}(A^*) = n \Rightarrow$ **Sistema Compatible Determinado (SCD)** (1 solución).
2. Si $|A| = 0 \Rightarrow \text{Rango}(A) < n$. Calculamos $\text{Rango}(A^*)$:
   * Si $\text{Rango}(A) = \text{Rango}(A^*) < n \Rightarrow$ **Sistema Compatible Indeterminado (SCI)** ($\infty$ soluciones).
   * Si $\text{Rango}(A) \neq \text{Rango}(A^*) \Rightarrow$ **Sistema Incompatible (SI)** (0 soluciones).

---

## 2. GEOMETRÍA ESPACIAL

**Vectores:**
* **Producto Escalar** (Da un número. Sirve para ángulos y perpendicularidad):
    $$\vec{u} \cdot \vec{v} = |\vec{u}| \cdot |\vec{v}| \cdot \cos(\alpha) \Rightarrow \text{Si } \vec{u} \perp \vec{v} \Rightarrow \vec{u} \cdot \vec{v} = 0$$
* **Producto Vectorial** (Da un vector. Sirve para encontrar vectores normales/perpendiculares a dos vectores o planos):
    $$\vec{w} = \vec{u} \times \vec{v} = \begin{vmatrix} \vec{i} & \vec{j} & \vec{k} \\ u_1 & u_2 & u_3 \\ v_1 & v_2 & v_3 \end{vmatrix}$$

**Planos ($\pi$):**
Ecuación general: $Ax + By + Cz + D = 0$.
El vector normal (perpendicular) al plano es $\vec{n} = (A, B, C)$.
Para comprobar si 3 puntos y el origen forman un "plano orbital" (coplanarios), el origen $(0,0,0)$ debe cumplir la ecuación del plano formado por los 3 puntos.

**Distancias:**
Distancia de un punto $P(x_0, y_0, z_0)$ a un plano $\pi: Ax + By + Cz + D = 0$:
$$d(P, \pi) = \frac{|A x_0 + B y_0 + C z_0 + D|}{\sqrt{A^2 + B^2 + C^2}}$$

**Proyección Ortogonal de un Punto sobre un Plano:**
1. Crear una recta $r$ que pase por el punto $P$ con vector director $\vec{v}_r = \vec{n}_\pi$.
2. Hallar la intersección entre la recta $r$ y el plano $\pi$ (sustituyendo $x,y,z$ de la recta en la ecuación del plano para encontrar $\lambda$).

---

## 3. ANÁLISIS (Funciones, Límites, Derivadas e Integrales)

**Límites y Regla de L'Hôpital:**
Si tenemos indeterminaciones $\frac{0}{0}$ o $\frac{\infty}{\infty}$, derivamos numerador y denominador por separado:
$$\lim_{x \to c} \frac{f(x)}{g(x)} = \lim_{x \to c} \frac{f'(x)}{g'(x)}$$
*Nota UIB: Si tenemos $0 \cdot (-\infty)$, hay que transformarlo primero en $\frac{\infty}{\infty}$ bajando una función al denominador (ej: $x \cdot \ln(x) \rightarrow \frac{\ln(x)}{1/x}$).*

**Teorema de Bolzano (Muy recurrente en la UIB):**
Si $f(x)$ es continua en un intervalo cerrado $[a, b]$ y cambia de signo en los extremos ($f(a) \cdot f(b) < 0$), entonces existe al menos un punto $c \in (a, b)$ tal que:
$$f(c) = 0$$
*(Siempre hay que comprobar la continuidad antes de aplicarlo).*

**Derivadas y Optimización:**
* Puntos críticos: $f'(x) = 0$.
* Si $f''(x) > 0 \Rightarrow$ Mínimo.
* Si $f''(x) < 0 \Rightarrow$ Máximo.
* Puntos de inflexión (cambio de concavidad/convexidad): $f''(x) = 0$.

**Integrales y Áreas (Regla de Barrow):**
*Poner siempre el $dx$ para evitar penalizaciones.*
Área comprendida entre dos funciones $f(x)$ y $g(x)$ entre $x=a$ y $x=b$:
$$A = \int_{a}^{b} |f(x) - g(x)| \,dx$$
**Integración por partes:**
$$\int u \,dv = u \cdot v - \int v \,du \quad \text{(Regla ALPES/ILATE para elegir la } u \text{)}$$

---

## 4. PROBABILIDAD (Definir siempre los sucesos $A$ y $B$)

**Fórmulas Básicas:**
$$P(A \cup B) = P(A) + P(B) - P(A \cap B)$$
Probabilidad del contrario: $P(\overline{A}) = 1 - P(A)$.
Leyes de De Morgan: $P(\overline{A} \cap \overline{B}) = P(\overline{A \cup B})$.

**Probabilidad Condicionada:**
La probabilidad de que ocurra $A$ sabiendo que ha ocurrido $B$:
$$P(A|B) = \frac{P(A \cap B)}{P(B)} \Rightarrow P(A \cap B) = P(A|B) \cdot P(B)$$

**Teorema de la Probabilidad Total (Diagramas de Árbol):**
$$P(B) = P(B|A_1) \cdot P(A_1) + P(B|A_2) \cdot P(A_2) + \dots$$
*Consejo UIB: usar diagramas de árbol (para experimentos secuenciales) o diagramas de Venn (cuando dan porcentajes globales).*
