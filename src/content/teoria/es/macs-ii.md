---
title: Matemàtiques Aplicades a les CCSS II (MACS)
---

# MATEMÁTICAS APLICADAS A LAS CIENCIAS SOCIALES II - RESUMEN PAU

## 1. PROBABILIDAD (Parte A - Obligatoria)

**Sucesos y Fórmulas Básicas:**
*Siempre hay que definir los sucesos con letras mayúsculas (Ej: $A=$ "Leer el periódico").*
* **Unión:** $P(A \cup B) = P(A) + P(B) - P(A \cap B)$
* **Suceso contrario:** $P(\overline{A}) = 1 - P(A)$
* **Leyes de De Morgan:** $P(\overline{A} \cap \overline{B}) = P(\overline{A \cup B})$ y $P(\overline{A} \cup \overline{B}) = P(\overline{A \cap B})$
* **Diferencia:** $P(A - B) = P(A \cap \overline{B}) = P(A) - P(A \cap B)$

**Probabilidad Condicionada e Independencia:**
La probabilidad de que ocurra $A$ sabiendo que ha ocurrido $B$:
$$P(A|B) = \frac{P(A \cap B)}{P(B)} \Rightarrow P(A \cap B) = P(A|B) \cdot P(B)$$
Dos sucesos son **independientes** si (y solo si): $P(A \cap B) = P(A) \cdot P(B)$.

**Teoremas Fundamentales (Uso de Diagramas de Árbol):**
* **Teorema de la Probabilidad Total:** $P(B) = P(B|A_1) \cdot P(A_1) + P(B|A_2) \cdot P(A_2) + \dots$
* **Teorema de Bayes:** Sirve para calcular probabilidades "hacia atrás" en el árbol:
    $$P(A_i|B) = \frac{P(B|A_i) \cdot P(A_i)}{P(B)}$$

---

## 2. ESTADÍSTICA INFERENCIAL (Parte A - Obligatoria)

**La Distribución Normal:**
*Siempre hay que escribir la notación: $X \sim N(\mu, \sigma)$.*
Para poder buscar probabilidades en la tabla, hay que **tipificar** la variable para pasar a una normal estándar $Z \sim N(0, 1)$:
$$Z = \frac{X - \mu}{\sigma}$$

**Intervalos de Confianza para la Media Poblacional:**
Dada una muestra de tamaño $n$ con una media muestral $\bar{x}$, y una desviación típica poblacional $\sigma$:
$$IC = \left( \bar{x} - E, \, \bar{x} + E \right)$$
Donde el Error Máximo Admitido ($E$) se calcula como:
$$E = z_{\alpha/2} \cdot \frac{\sigma}{\sqrt{n}}$$

**Tamaño de la Muestra:**
Si queremos asegurar un error máximo $E$ con un nivel de confianza $1 - \alpha$, el tamaño mínimo de la muestra se obtiene aislando la $n$:
$$n = \left( \frac{z_{\alpha/2} \cdot \sigma}{E} \right)^2$$
*(Recordatorio: El tamaño de la muestra $n$ siempre debe redondearse hacia el entero superior para asegurar que el error no se supere).*

---

## 3. ÁLGEBRA (Parte B)

**Matrices y Operaciones:**
Para multiplicar matrices ($A \cdot B$), el número de columnas de $A$ debe coincidir con el número de filas de $B$.
$$A \cdot I = I \cdot A = A$$
**Matriz Inversa:**
Una matriz $A$ es invertible si $|A| \neq 0$.
$$A^{-1} = \frac{1}{|A|} \text{Adj}(A)^T$$

**Ecuaciones Matriciales:**
*¡Cuidado! El producto de matrices no es conmutativo. Hay que multiplicar por la inversa por el lado correcto.*
* Si $A \cdot X + B = C \Rightarrow A \cdot X = C - B \Rightarrow X = A^{-1} \cdot (C - B)$
* Si $X \cdot A = B \Rightarrow X \cdot A \cdot A^{-1} = B \cdot A^{-1} \Rightarrow X = B \cdot A^{-1}$

**Sistemas de Ecuaciones (Cramer y Rouché-Frobenius):**
* Si $|A| \neq 0 \Rightarrow$ Sistema Compatible Determinado (1 solución).
* Si $|A| = 0 \Rightarrow$ Sistema Compatible Indeterminado o Incompatible.

---

## 4. ANÁLISIS (Parte C)

**Continuidad y Derivabilidad:**
Una función $f(x)$ definida a trozos es **continua** en $x=a$ si:
$$\lim_{x \to a^-} f(x) = \lim_{x \to a^+} f(x) = f(a)$$
Es **derivable** si, además de ser continua, cumple que:
$$f'(a^-) = f'(a^+)$$

**Aplicaciones de la Derivada (Optimización):**
1.  Se calcula la función a optimizar.
2.  Se hallan los **puntos críticos** igualando la derivada a cero: $f'(x) = 0$.
3.  Se comprueba si es máximo o mínimo analizando el signo de la derivada antes y después del punto, o usando la segunda derivada:
    * Si $f''(x) > 0 \Rightarrow$ Mínimo.
    * Si $f''(x) < 0 \Rightarrow$ Máximo.

**Integrales y Cálculo de Áreas:**
*Hay que incluir siempre el diferencial $dx$.*
Área comprendida entre una función $f(x)$ y el eje OX entre $x=a$ y $x=b$:
$$A = \int_{a}^{b} |f(x)| \,dx$$
*(Hay que encontrar los puntos de corte con el eje $OX$ igualando $f(x)=0$ para dividir la integral en tramos si la función cambia de signo).*
